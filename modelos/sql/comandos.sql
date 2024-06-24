/*Cadastrar o novo colaborador Fulano de Tal no 
novo projeto BI para exercer o 
# papel de Especialista de Negócios.

//Informações sobre o colaborador
Possui o telefone celular (61) 9 9999-9999;
Possui o telefone residencial (61) 3030-4040;
Email pessoal é fulano@email.com;
Email de trabalho será é fulano.tal@brh.com;
Possui dois dependentes:
Filha Beltrana de Tal;
Esposa Cicrana de Tal.
Atenção
Você deve escolher os valores dos demais campos para o colaborador, dependentes e projeto;
Atenção à ordem em que os registros devem ser inseridos.*/



INSERT INTO brh.papel (id, nome) VALUES (8, 'Especialista de Negócios');


select * from brh.papel;



insert into brh.endereco
(cep,uf,cidade,bairro)
values
('13900-100','SP','Itapira','Centro');




INSERT INTO brh.colaborador 
(matricula, nome, cpf, salario, departamento, cep, logradouro, complemento_endereco)
 VALUES 
 ('F124', 'Fulano de Tal', '123.46.789-00', '9999', 'DEPTI', '13900-100', 'Avenida dos Fulanos', 'Casa 235');


INSERT INTO brh.telefone_colaborador (colaborador, numero, tipo) VALUES ('F124', '(61) 99999-9999', 'M');

INSERT INTO brh.telefone_colaborador (colaborador, numero, tipo) VALUES ('F124', '(61) 3030-4040', 'R');


INSERT INTO brh.email_colaborador (colaborador, email, tipo) VALUES ('F124', 'fulano@email.com', 'P');
INSERT INTO brh.email_colaborador (colaborador, email, tipo) VALUES ('F124', 'fulano.tal@brh.com', 'T');

SELECT * FROM brh.email_colaborador WHERE colaborador = 'F124';

INSERT INTO brh.dependente (cpf, colaborador, nome, parentesco, data_nascimento) VALUES ('243.361.588-67', 'F124', 'Beltrana de Tal', 'Filho(a)', to_date('2015-01-01', 'yyyy-mm-dd'));

INSERT INTO brh.dependente (cpf, colaborador, nome, parentesco, data_nascimento) VALUES ('243.258.588-67', 'F124', 'Cicrana de Tal', 'Cônjuge', to_date('1985-01-01', 'yyyy-mm-dd'));

SELECT * FROM brh.dependente WHERE colaborador = 'F124';
