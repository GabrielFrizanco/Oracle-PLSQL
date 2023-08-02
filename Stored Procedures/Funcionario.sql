-- Exercício: Faça uma busca de um funcionário pelo id dele
-- Banco de dados utilizado: RH
create or replace procedure prc_funcionario(in p_func number) is

-- declare (APENAS TESTE)
 -- v_func int := 2;
    
cursor c1 is
	select  f.id_funcionario id,
    		  f.nm_funcionario nome,
	      	to_char(f.dt_nascimento, 'DD/MM/YYYY') dt_nascimento,
   	    	f.ds_email email,
        	f.ds_site site,
      		f.ds_apresentacao apresentacao,
    	  	g.ds_genero genero, 
    	  	s.ds_status status, 
    	  	c.nm_cidade ||'/'||e.sg_estado ||' Região: '||e.ds_regiao regiao, 
    	  	a.ds_cargo cargo, 
    	  	d.ds_departamento departamento, 
    	  	'R$'||f.val_salario salario
    from  funcionarios f, genero g, status s, cidades c, estados e, cargos a, departamentos d
    where f.id_funcionario = v_func 
      AND f.id_genero = g.id_genero
      AND f.id_status = s.id_status
      AND f.id_cidade = c.id_cidade
      AND c.id_estado = e.id_estado
      AND f.id_cargo = a.id_cargo
      AND f.id_departamento = d.id_departamento;
    
begin
    for f1 in c1 loop
  		dbms_output.put_line('Nome: ' || f1.nome);
  		dbms_output.put_line('Data Nascimento: ' || f1.dt_nascimento);
  		dbms_output.put_line('E-mail: ' || f1.email);
  		dbms_output.put_line('Site: ' || f1.site);
  		dbms_output.put_line('Apresentação: ' || f1.apresentacao);
  		dbms_output.put_line('Gênero: ' || f1.genero);
  		dbms_output.put_line('Status: ' || f1.status);
  		dbms_output.put_line('Cidade e região: ' || f1.regiao);
  		dbms_output.put_line('Cargo: ' || f1.cargo);
  		dbms_output.put_line('Departamento: ' || f1.departamento);
  		dbms_output.put_line('Salário: ' || f1.salario);
    end loop;
end prc_funcionario;
