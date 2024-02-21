DECLARE
  v_json_api CLOB;
  v_search_query VARCHAR2(200) := 'Harry Potter'; -- Substitua pelo nome do livro desejado
  v_title VARCHAR2(200);
  v_description VARCHAR2(4000);
  p_livro VARCHAR2(200) := 'Éassimqueacaba';

BEGIN
  apex_web_service.g_request_headers.delete();

  v_json_api := apex_web_service.make_rest_request(
    p_url => 'https://www.googleapis.com/books/v1/volumes?q='||p_livro||'',
    p_http_method => 'GET'
  );

  FOR cur IN (
    SELECT
      title,
      description
    FROM
      json_table(
        v_json_api FORMAT JSON,
        '$.items[*]' COLUMNS (
          title VARCHAR2(200) PATH '$.volumeInfo.title',
          description VARCHAR2(4000) PATH '$.volumeInfo.description'
        )
      )
  ) LOOP
    v_title := cur.title;
    v_description := cur.description;
    
    -- Exibe os resultados
    DBMS_OUTPUT.put_line('Title: ' || v_title);
    DBMS_OUTPUT.put_line('Description: ' || v_description);
    DBMS_OUTPUT.put_line('------------------------');
  END LOOP;

EXCEPTION
  WHEN OTHERS THEN
    apex_error.add_error (
      p_message  => 'Erro ao requisitar informações do livro - ' || SQLERRM,
      p_display_location => apex_error.c_inline_in_notification
    );
END;
/
