
CREATE OR REPLACE FUNCTION fnc_mult_tab(P1 IN NUMBER) RETURN NUMBER IS
   V_MULT      NUMBER(5) := 0;
BEGIN
   FOR X IN 1..10 LOOP
       V_MULT := V_MULT + ( X * P1);
   END LOOP;
   RETURN(V_MULT);
END;

-- SELECT fnc_mult_tab(2) FROM DUAL

DECLARE
   P1          NUMBER(2) := 3;
   V_SOMA      NUMBER(3) := 0;
BEGIN
   FOR X IN 1..10 LOOP
       
       DBMS_OUTPUT.PUT_LINE(P1 || ' * ' || X || ' = ' || X * P1);
       
       V_SOMA := V_SOMA + ( X * P1);
        DBMS_OUTPUT.PUT_LINE(V_SOMA);
   END LOOP;
   DBMS_OUTPUT.PUT_LINE(V_SOMA);
END;
