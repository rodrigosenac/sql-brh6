/* ********************  PROCEDURE brh.insere_projeto   *****************************   */


CREATE OR REPLACE PROCEDURE brh.insere_projeto 
(
    p_nome_projeto IN brh.projeto.nome%type,
    p_responsavel_projeto IN brh.projeto.responsavel%type
)
IS
BEGIN
    INSERT INTO brh.projeto(nome,responsavel,inicio)VALUES(p_nome_projeto,p_responsavel_projeto,SYSDATE);
END

EXECUTE brh.insere_projeto('SENAC','D123');

SELECT * FROM brh.projeto;















CREATE OR REPLACE FUNCTION brh.calcula_idade
( p_data_nascimento IN DATE )
RETURN  NUMBER
IS 
    v_idade NUMBER
BEGIN
    v_idade := TRUNC(MONTHS_BETWEEN(SYSDATE,p_data_nascimento)/12)
    RETURN v_idade;
END



SELECT brh.calcula_idade(TO_DATE('1984-04-25','YYYY-MM-DD')) from dual;


SELECT nome, data_nascimento ,brh.calcula_idade(data_nascimento)
from brh.dependente;




SELECT brh.calcula_idade(data_nascimento)
from brh.dependente
where colaborador = 'A123'



DECLARE
    nota NUMBER := 35;
    classifica_nota VARCHAR(2);
BEGIN
    IF nota >=90 THEN
        classifica_nota := 'A';
    ELSE
    IF nota >=80 THEN
        classifica_nota := 'B';
    ELSE
    IF nota >=70 THEN
         classifica_nota := 'c';
    ELSE      
    IF nota >=60 THEN
       classifica_nota := 'D';
    ELSE
       classifica_nota := 'E';
    END IF
    DBMS_OUTPUT.PUT_LINE('Sua nota é: ' || classifica_nota)           
END