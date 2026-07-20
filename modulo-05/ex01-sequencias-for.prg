FUNCTION Main()

    LOCAL nOpcao := 0

    DO WHILE .T.

        CLS

        @ 02,10 SAY "=== EXERCÖCIOS FOR/NEXT ==="
        @ 04,10 PROMPT "1 - Imprimir de 1 a 100"
        @ 05,10 PROMPT "2 - Imprimir de -50 a 50"
        @ 06,10 PROMPT "3 - Imprimir de 80 a 5"
        @ 07,10 PROMPT "4 - Sair"

        MENU TO nOpcao

        CLS

        DO CASE
        CASE nOpcao == 1
            ExercicioA()

        CASE nOpcao == 2
            ExercicioB()

        CASE nOpcao == 3
            ExercicioC()

        CASE nOpcao == 4
            EXIT
        ENDCASE

        ?
        ? "Pressione qualquer tecla para voltar ao menu..."
        Inkey(0)

    ENDDO

RETURN NIL


PROCEDURE ExercicioA()

    LOCAL nNumero

    FOR nNumero := 1 TO 100
        ? nNumero
    NEXT

RETURN


PROCEDURE ExercicioB()

    LOCAL nNumero

    FOR nNumero := -50 TO 50
        ? nNumero
    NEXT

RETURN


PROCEDURE ExercicioC()

    LOCAL nNumero

    FOR nNumero := 80 TO 5 STEP -1
        ? nNumero
    NEXT

RETURN