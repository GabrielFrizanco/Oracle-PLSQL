Create or Replace Procedure Prc_Fecha_Folha(p_ano in number, p_mes in number) is
  
 v_total         number(5)    := 0; 
 v_val_inss      number(10,2) := 0;
 v_val_fgts      number(10,2) := 0;
 v_val_ir        number(10,2) := 0;
 v_val_bonus     number(10,2) := 0;
 v_val_liquido   number(10,2) := 0;
 v_dat_Sistema   date         := null;

 Cursor C_Func is
        Select * from Funcionarios; 

 Begin

   Select sysdate into v_Dat_sistema from dual;

   Begin
      --- Deletar o histórico da Folha caso o mês e ano sejam iguais
      Delete from folha 
       where mes_referencia = p_mes
         and ano_referencia = p_ano;

   Exception
         When Others then
              dbms_output.put_line('Ocorreu um erro inesperado no DELETE da Folha');

   End;

   For R_Func in C_Func Loop

       v_total := v_total + 1;

       v_val_liquido := 0;

       v_val_inss := (R_Func.val_salario * .11);

       v_val_fgts := (R_Func.val_salario * .08);
 
       --- Regra na Tabela de IR: Até 1.000,00  IR de 10%   e acima de 1.000,00 20%

       If R_Func.Val_Salario <= 1000 then
          v_val_ir := (R_Func.val_salario * .10);
       Else
         v_val_ir := (R_Func.val_salario * .20);
       End if;

       --- Regra: Bonus de 500,00 para cargo de gerente
        
       if R_Func.id_cargo = 20 then    --- Cargo de Gerente
          v_val_bonus := 500;
       else
          v_val_bonus := 0;

       End if;

       ---
       --- Calcular Salario Liquido: v_val_liquido = (R_Func.val_salario - v_val_inss - v_val_fgts - v_val_ir) + v_val_bonus;
       ---
	     v_val_liquido := (R_Func.val_salario - v_val_inss - v_val_fgts - v_val_ir) + v_val_bonus;
    

       --- Inserindo os dados na tabela folha
       Begin
         Insert into folha (id_funcionario,
                            ano_referencia,
                            mes_referencia,
                            dat_fechamento,
                            val_salario,
                            val_inss,
                            val_fgts,
                            val_ir,
                            val_bonus,
                            val_liquido)
                     values (R_Func.Id_Funcionario,
                             p_ano,
                             p_mes,   
                             v_Dat_Sistema,
                             R_Func.Val_Salario,
                             v_val_inss,
                             v_val_fgts,
                             v_val_ir,
                             v_val_bonus,
                             v_val_liquido);
                                   
      Exception
         When Others then
              dbms_output.put_line('Ocorreu um erro inesperado no INSERT');
      End;  

       --- Atualizar o Status do Funcionario com ID_Status 10 (Fechamento)    
       Begin
        
         UPDATE funcionarios SET
         id_status = 10
         WHERE id_funcionario = R_Func.id_funcionario;
         
         EXCEPTION
            When Others then
              dbms_output.put_line('Ocorreu um erro inesperado no UPDATE da Folha');
       End;

   End Loop;

   dbms_output.put_line('Total de Registros Processados: '||v_total);

   Return;

 Exception
    When Others then
         dbms_output.put_line('Ocorreu um erro inesperado Begin Principal');
 End;

--- Chamada da procedure
--- Execute Prc_Fecha_Folha(2022, 12);