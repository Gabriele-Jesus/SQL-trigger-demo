-- Trigger para atualizar o e-mail do aluno na matrícula
DELIMITER //

CREATE TRIGGER AtualizarEmailMatricula
AFTER INSERT ON MATRICULA
FOR EACH ROW
BEGIN
    DECLARE aluno_email VARCHAR(255);
    
    -- Para obter o e-mail do aluno
    SELECT EMAIL INTO aluno_email
    FROM ALUNO
    WHERE ID = NEW.ALUNO_ID;

    -- Se o e-mail estiver vazio, atualizar com o sufixo '@escola.com'
    IF aluno_email IS NULL OR aluno_email = '' THEN
        UPDATE ALUNO
        SET EMAIL = CONCAT('aluno', NEW.ALUNO_ID, '@escola.com')
        WHERE ID = NEW.ALUNO_ID;
    END IF;
END //

DELIMITER ;
