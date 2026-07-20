FUNCTION Main()

    LOCAL cNome := ""
    LOCAL cDisc := ""
    LOCAL cNota := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0

    // Valida‡Æo do nome
    DO WHILE .T.

        ACCEPT "Nome do aluno: " TO cNome

        IF Len(AllTrim(cNome)) > 0
            EXIT
        ENDIF

        ? "Nome inv lido. Tente novamente."
        ?

    ENDDO

    // Valida‡Æo da disciplina
    DO WHILE .T.

        ACCEPT "Disciplina (3 letras mai£sculas): " TO cDisc

        cDisc := Upper(AllTrim(cDisc))

        IF Len(cDisc) == 3
            EXIT
        ENDIF

        ? "Disciplina inv lida. Ex.: MAT, POR, ING."
        ?

    ENDDO

    // Valida‡Æo da primeira nota
    DO WHILE .T.

        ACCEPT "Primeira nota (0 a 10): " TO cNota

        nNota1 := Val(cNota)

        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ENDIF

        ? "Nota inv lida."
        ?

    ENDDO

    // Valida‡Æo da segunda nota
    DO WHILE .T.

        ACCEPT "Segunda nota (0 a 10): " TO cNota

        nNota2 := Val(cNota)

        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ENDIF

        ? "Nota inv lida."
        ?

    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    CLS

    ? "===== DADOS DO ALUNO ====="
    ? "Nome.......:", cNome
    ? "Disciplina.:", cDisc
    ? "Nota 1.....:", nNota1
    ? "Nota 2.....:", nNota2
    ? "M‚dia......:", nMedia

RETURN NIL