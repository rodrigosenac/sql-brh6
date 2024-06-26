CREATE OR REPLACE PROCEDURE brh.insere_projeto 
(
    p_nome_projeto IN brh.projeto.nome%type,
    p_responsavel_projeto IN brh.projeto.responsavel%type
)
IS
BEGIN
    INSERT INTO brh.projeto(nome,responsavel,inicio) 
    VALUES(p_nome_projeto,p_responsavel_projeto,SYSDATE);
END

EXECUTE brh.insere_projeto('SENAC','D123');

SELECT * FROM brh.projeto;