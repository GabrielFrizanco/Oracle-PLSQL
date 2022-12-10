/* tabela STATUS */
insert into status(id_Status,ds_status) values(1,'ATIVO');
insert into status(id_Status,ds_status) values(2,'DEMITIDO');
insert into status(id_Status,ds_status) values(3,'AFASTAMENTO INSS');
insert into status(id_Status,ds_status) values(4,'AFASTAMENTO MATERNIDADE');
insert into status(id_Status,ds_status) values(5,'SUSPENSO');

/* Tabela GENERO */
insert into genero(id_genero, ds_genero) values(1,'MASCULINO');
insert into genero(id_genero, ds_genero) values(2,'FEMININO');

/* tabela ESTADOS */
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(1,'SP','SÃO PAULO','SUDESTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(2,'RJ','RIO DE JANEIRO','SUDESTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(3,'MG','MINAS GERAIS','SUDESTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(4,'PR','PARANA','SUL');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(5,'SC','SANTA CATARINA','SUL');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(6,'PA','PARA','NORTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(7,'CE','CEARA','NORDESTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(8,'RS','RIO GRANDE DO SUL','SUL');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(9,'MA','MARANHAO','NORDESTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(10,'PE','PERNAMBUCO','NORDESTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(11,'SE','SERGIPE','NORDESTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(12,'BA','BAHIA','NORDESTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(13,'AM','AMAZONAS','NORTE');
insert into estados(id_estado, sg_estado, ds_estado, ds_regiao) values(14,'TO','TOCANTINS','NORTE');

/* TABELA CIDADES */
insert into cidades(id_cidade,id_estado,nm_cidade) values(500,1,'SÃO PAULO');
insert into cidades(id_cidade,id_estado,nm_cidade) values(501,1,'ATIBAIA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(502,1,'BRAGANÇA PAULISTA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(503,1,'PIRACAIA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(504,1,'GUARULHOS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(505,1,'JUNDIAI');
insert into cidades(id_cidade,id_estado,nm_cidade) values(506,1,'CAMPINAS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(507,1,'JARINU');
insert into cidades(id_cidade,id_estado,nm_cidade) values(508,1,'PINHALZINHO');
insert into cidades(id_cidade,id_estado,nm_cidade) values(509,1,'SANTOS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(510,1,'TAUBATÉ');
insert into cidades(id_cidade,id_estado,nm_cidade) values(511,2,'RIO DE JANEIRO');
insert into cidades(id_cidade,id_estado,nm_cidade) values(512,2,'NITERÓI');
insert into cidades(id_cidade,id_estado,nm_cidade) values(513,2,'MACAÉ');
insert into cidades(id_cidade,id_estado,nm_cidade) values(514,2,'PETRÓPOLIS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(515,2,'ANGRA DOS REIS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(516,2,'VOLTA REDONDA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(517,2,'DUQUE DE CAXIAS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(518,3,'BELO HORIZONTE');
insert into cidades(id_cidade,id_estado,nm_cidade) values(519,3,'CAXAMBU');
insert into cidades(id_cidade,id_estado,nm_cidade) values(520,3,'EXTREMA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(521,3,'MONTES CLAROS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(522,3,'BETIM');
insert into cidades(id_cidade,id_estado,nm_cidade) values(523,3,'UBERLANDIA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(524,4,'CURITIBA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(525,4,'LONDRINA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(526,4,'PINHAIS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(527,5,'FLORIANOPOLIS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(528,5,'BLUMENAU');
insert into cidades(id_cidade,id_estado,nm_cidade) values(529,5,'TUBARAO');
insert into cidades(id_cidade,id_estado,nm_cidade) values(530,6,'BELEM');
insert into cidades(id_cidade,id_estado,nm_cidade) values(531,6,'ABAETETUBA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(532,7,'FORTALEZA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(533,7,'SOBRAL');
insert into cidades(id_cidade,id_estado,nm_cidade) values(534,7,'CRATO');
insert into cidades(id_cidade,id_estado,nm_cidade) values(535,7,'JUAZEIRO');
insert into cidades(id_cidade,id_estado,nm_cidade) values(536,8,'PORTO ALEGRE');
insert into cidades(id_cidade,id_estado,nm_cidade) values(537,8,'GRAMADO');
insert into cidades(id_cidade,id_estado,nm_cidade) values(538,9,'SÃO LUIS');
insert into cidades(id_cidade,id_estado,nm_cidade) values(539,10,'RECIFE');
insert into cidades(id_cidade,id_estado,nm_cidade) values(540,10,'PETROLINA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(541,10,'PAULISTA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(542,11,'ARACAJÚ');
insert into cidades(id_cidade,id_estado,nm_cidade) values(543,11,'ITABAIANA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(544,12,'JUAZEIRO');
insert into cidades(id_cidade,id_estado,nm_cidade) values(545,12,'SALVADOR');
insert into cidades(id_cidade,id_estado,nm_cidade) values(546,12,'ITABUNA');
insert into cidades(id_cidade,id_estado,nm_cidade) values(547,12,'FEIRA DE SANTANA');

/* tabela CARGOS */
insert into cargos(id_cargo, ds_cargo) values (10,'AUXILIAR ADMINISTRATIVO');
insert into cargos(id_cargo, ds_cargo) values (20,'GERENTE');
insert into cargos(id_cargo, ds_cargo) values (30,'COMPRADOR');
insert into cargos(id_cargo, ds_cargo) values (40,'ASSISTENTE ADMINISTRATIVO');
insert into cargos(id_cargo, ds_cargo) values (50,'ANALISTA DE SUPORTE');
insert into cargos(id_cargo, ds_cargo) values (60,'ANALISTA DE SISTEMAS');
insert into cargos(id_cargo, ds_cargo) values (70,'DIRETOR');
insert into cargos(id_cargo, ds_cargo) values (80,'TECNICO CONTÁBIL');
insert into cargos(id_cargo, ds_cargo) values (90,'SECRETARIA');
insert into cargos(id_cargo, ds_cargo) values (100,'ENGENHEIRO');

/* tabela DEPARTAMENTOS */
insert into departamentos(id_departamento, ds_departamento) Values(1000,'CONTABILIDADE');
insert into departamentos(id_departamento, ds_departamento) Values(2000,'FINANCEIRO');
insert into departamentos(id_departamento, ds_departamento) Values(3000,'RH');
insert into departamentos(id_departamento, ds_departamento) Values(4000,'TI');
insert into departamentos(id_departamento, ds_departamento) Values(5000,'COMPRAS');

/* tabela GRAU */
insert into grau(id_grau, ds_grau) values(90,'CONJUGE');
insert into grau(id_grau, ds_grau) values(91,'FILHO(A)');
insert into grau(id_grau, ds_grau) values(92,'PAI');
insert into grau(id_grau, ds_grau) values(93,'MAE');

/* tabela TIPO_HISTORICO */
insert into tipo_historico(id_tipo_historico, ds_tipo_historico) values(1,'PREMIO');
insert into tipo_historico(id_tipo_historico, ds_tipo_historico) values(2,'PROMOÇÃO');
insert into tipo_historico(id_tipo_historico, ds_tipo_historico) values(3,'ADVERTÊNCIA');
insert into tipo_historico(id_tipo_historico, ds_tipo_historico) values(4,'AFASTAMENTO');

/* tabela OCORRÊNCIAS */
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(800,1,'BONIFICAÇÂO');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(801,1,'14 SALÁRIO');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(802,1,'VIAGEM');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(803,1,'VEICULO');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(804,1,'RELÓGIO DE OURO');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(805,2,'COMPETÊNCIA');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(806,2,'COMPROMETIMENTO');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(807,2,'CARGO');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(808,3,'HORARIO DE EXPEDIENTE');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(809,3,'COMPORTAMENTO');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(810,3,'ASSEDIO MORAL');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(811,3,'ORDEM DIRETA');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(812,4,'INSS');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(813,4,'LICENÇA MATERNIDADE');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(814,4,'LICENÇA PATERNIDADE');
insert into ocorrencia(id_ocorrencia, id_tipo_historico, ds_ocorrencia) values(815,4,'SAÚDE');

/* TABELA FUNCIONARIOS  */
insert into funcionarios(id_funcionario, nm_funcionario, ds_apresentacao, ds_email, ds_site, dt_nascimento, id_cargo, id_cidade, id_departamento, id_genero, id_status, val_salario) values (1,'ROBERTO MENDES','FORMADO EM ENGENHARIA PELA FUNDAÇÃO ABC','roberto@gmail.com','www.roberto.com.br',to_date('1971/09/15','yyyy/mm/dd'),20,500,2000,1,1,2500);
insert into funcionarios(id_funcionario, nm_funcionario, ds_apresentacao, ds_email, ds_site, dt_nascimento, id_cargo, id_cidade, id_departamento, id_genero, id_status, val_salario) values (2,'EDSON OLAVO SILVA','ATUA SEMPRE COM COMPETENCIA NAS ATIVIDADES','edson.silva@hotmail.com','www.edsonsilva.com',to_date('1968/06/20','yyyy/mm/dd'),50,505,4000,1,2,1200);
insert into funcionarios(id_funcionario, nm_funcionario, ds_apresentacao, ds_email, ds_site, dt_nascimento, id_cargo, id_cidade, id_departamento, id_genero, id_status, val_salario) values (3,'SIMONE ALMEIDA PRADO','FORMADA PELA FGV','simone@hotmail.com','www.simonedra.com',to_date('1986/08/10','yyyy/mm/dd'),90,525,5000,2,1,3000);
insert into funcionarios(id_funcionario, nm_funcionario, ds_apresentacao, ds_email, ds_site, dt_nascimento, id_cargo, id_cidade, id_departamento, id_genero, id_status, val_salario) values (4,'CARLA SANTOS','EXCELENTE EXECUTIVA','carlinha@hotmail.com','www.carlinha.com',to_date('1988/03/20','yyyy/mm/dd'),20,538,2000,2,1,3000);
insert into funcionarios(id_funcionario, nm_funcionario, ds_apresentacao, ds_email, ds_site, dt_nascimento, id_cargo, id_cidade, id_departamento, id_genero, id_status, val_salario) values (5,'ROSANGELA BRAVO','CURSANDO ADMINISTRACAO','ro@hotmail.com','www.ro.com',to_date('1980/04/09','yyyy/mm/dd'),10,540,2000,2,3,1000);

/* TABELA DEPENDENTES  */
insert into dependentes(id_dependente,nm_dependente,id_funcionario,dt_nascimento,id_grau,id_genero,id_estado) values (1,'MARIA ALICE MENDES',1,to_date('1974/08/15','yyyy/mm/dd'),90,2,10);
insert into dependentes(id_dependente,nm_dependente,id_funcionario,dt_nascimento,id_grau,id_genero,id_estado) values (2,'MARTA MENDES',1,to_date('1999/04/20','yyyy/mm/dd'),91,2,10);
insert into dependentes(id_dependente,nm_dependente,id_funcionario,dt_nascimento,id_grau,id_genero,id_estado) values (3,'MARCIA MENDES',1,to_date('1999/04/20','yyyy/mm/dd'),91,2,10);
insert into dependentes(id_dependente,nm_dependente,id_funcionario,dt_nascimento,id_grau,id_genero,id_estado) values (4,'TEOBALDO MENDES',1,to_date('2005/12/25','yyyy/mm/dd'),91,1,11);
insert into dependentes(id_dependente,nm_dependente,id_funcionario,dt_nascimento,id_grau,id_genero,id_estado) values (5,'SIMONE SANTOS SILVA',2,to_date('1970/03/14','yyyy/mm/dd'),90,2,06);
insert into dependentes(id_dependente,nm_dependente,id_funcionario,dt_nascimento,id_grau,id_genero,id_estado) values (6,'CARLOS BRAVO',5,to_date('2015/08/13','yyyy/mm/dd'),91,1,3);

/* TABELA HISTORICO  */
insert into historico(id_historico, id_ocorrencia, id_funcionario, dt_historico, ds_observacao) values (700,800,1,to_date('2020/09/20','yyyy/mm/dd'),'OTIMO DESEMPENHO');
insert into historico(id_historico, id_ocorrencia, id_funcionario, dt_historico, ds_observacao) values (701,800,1,to_date('2021/10/21','yyyy/mm/dd'),'COMPROMETIMENTO');
insert into historico(id_historico, id_ocorrencia, id_funcionario, dt_historico, ds_observacao) values (702,803,1,to_date('2022/02/15','yyyy/mm/dd'),'DESEMPENHO ACIMA DA MEDIA');
insert into historico(id_historico, id_ocorrencia, id_funcionario, dt_historico, ds_observacao) values (703,800,3,to_date('2019/08/15','yyyy/mm/dd'),'ATIVIDADES EXECUTADAS COM SUCESSO');
insert into historico(id_historico, id_ocorrencia, id_funcionario, dt_historico, ds_observacao) values (704,807,3,to_date('2021/02/18','yyyy/mm/dd'),'DESEMPENHO ACIMA DA MEDIA');
insert into historico(id_historico, id_ocorrencia, id_funcionario, dt_historico, ds_observacao) values (705,809,3,to_date('2022/08/10','yyyy/mm/dd'),'DISCUSSAO COM MEMBRO DA EQUIPE');
insert into historico(id_historico, id_ocorrencia, id_funcionario, dt_historico, ds_observacao) values (706,811,4,to_date('2022/08/18','yyyy/mm/dd'),'NAO ACATOU A ORDEM');
insert into historico(id_historico, id_ocorrencia, id_funcionario, dt_historico, ds_observacao) values (707,812,4,to_date('2022/08/17','yyyy/mm/dd'),'PROBLEMAS DE SAUDE');


/* 
DELETE FROM STATUS;
DELETE FROM GENERO;
DELETE FROM CIDADES;
DELETE FROM ESTADOS;
DELETE FROM CARGOS;
DELETE FROM DEPARTAMENTOS;
DELETE FROM GRAU;
DELETE FROM OCORRENCIA;
DELETE FROM TIPO_HISTORICO;
DELETE FROM FUNCIONARIOS;
*/

