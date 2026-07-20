FUNCTION Main()

    LOCAL cNome
    LOCAL cDisc
    LOCAL cNota
    LOCAL cResp
    LOCAL nNota1
    LOCAL nNota2
    LOCAL nMedia

    DO WHILE .T.

        CLS

        // Nome
        DO WHILE .T.

            ACCEPT "Nome do aluno: " TO cNome

            IF Len(AllTrim(cNome)) > 0
                EXIT
            ENDIF

            ? "Nome inv lido."

        ENDDO

        // Disciplina
        DO WHILE .T.

            ACCEPT "Disciplina (3 letras mai£sculas): " TO cDisc

            IF Len(AllTrim(cDisc)) == 3 .AND. ;
               AllTrim(cDisc) == Upper(AllTrim(cDisc))
                EXIT
            ENDIF

            ? "Disciplina inv lida."

        ENDDO

        // Primeira nota
        DO WHILE .T.

            ACCEPT "Primeira nota: " TO cNota

            nNota1 := Val(cNota)

            IF nNota1 >= 0 .AND. nNota1 <= 10
                EXIT
            ENDIF

            ? "Nota inv lida."

        ENDDO

        // Segunda nota
        DO WHILE .T.

            ACCEPT "Segunda nota: " TO cNota

            nNota2 := Val(cNota)

            IF nNota2 >= 0 .AND. nNota2 <= 10
                EXIT
            ENDIF

            ? "Nota inv lida."

        ENDDO

        // M‚dia
        nMedia := (nNota1 + nNota2) / 2

        CLS
        ? "===== DADOS DO ALUNO ====="
        ? "Nome.......:", cNome
        ? "Disciplina.:", cDisc
        ? "Nota 1.....:", nNota1
        ? "Nota 2.....:", nNota2
        ? "M‚dia......:", nMedia
        ?

        // Continuar?
        ACCEPT "Deseja calcular outro? (S/N): " TO cResp

        cResp := Upper(AllTrim(cResp))

        IF cResp <> "S"
            EXIT
        ENDIF

    ENDDO

    ? "Programa encerrado."

RETURN NIL