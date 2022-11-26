PL/SQL - INICIO
====================

LINGUAGEM ESTRUTURA DE PROGRAMÇÃO PARA PL/SQL


estrutura:
 
Declare
    v_num number(4) := 0;
    v_data_nasc date := null;
    v_nm_funcionario varchar(100) := null;
    v_salario number(8,2) := null;
Begin

    v_num := 10;
    dbms_output.put_line('O número é: '|| v_num);
    dbms_output.put_line('** Fazendo a soma com 10 + 5... **');
    v_num := v_num + 5;
    dbms_output.put_line('Novo número: '|| v_num);
    
    v_nm_funcionario := 'Gabriel';
    dbms_output.put_line('Meu nome é: '|| v_nm_funcionario);
    
    v_salario := 16000;
    dbms_output.put_line('Meu salário é: '|| v_salario);
    
    For x in reverse 1..15  Loop
        dbms_output.put_line(x);
    End Loop;
    
    -- v_salario := (v_salario*1.25);
    -- dbms_output.put_line('Meu salário com acrescimo de 25%: '|| v_salario);

End;


Begin
    For x in 1..10  Loop
        dbms_output.put_line('-----------[Inicio da tabuada do '||x||']----------');
        For y in 1..10 Loop
            dbms_output.put_line(x||' * '||y||' = '|| x * y);
        End Loop;
        dbms_output.put_line('-----------[Fim da tabuada do '||x||']----------');
    End Loop;
End;