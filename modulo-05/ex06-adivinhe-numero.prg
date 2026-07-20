FUNCTION Main()

    LOCAL nSecreto
    LOCAL nPalpite
    LOCAL cPalpite
    LOCAL nI

    nSecreto := HB_RandomInt(1, 100)

    ? "====================================="
    ? "      JOGO - ADIVINHE O NéMERO"
    ? "====================================="
    ? "Tente adivinhar um n£mero entre 1 e 100."
    ? "Vocˆ tem 7 tentativas."
    ?

    FOR nI := 1 TO 7

        ACCEPT "Digite seu palpite: " TO cPalpite
        nPalpite := Val(cPalpite)

        IF nPalpite == nSecreto
            ? "Parab‚ns! Vocˆ acertou na tentativa", nI
            EXIT
        ENDIF

        IF nPalpite < nSecreto
            ? "O n£mero secreto ‚ MAIOR."
        ELSE
            ? "O n£mero secreto ‚ MENOR."
        ENDIF

        ? "Tentativas restantes:", 7 - nI
        ?

    NEXT

    IF nPalpite <> nSecreto
        ? "Suas tentativas acabaram!"
        ? "O n£mero era:", nSecreto
    ENDIF

RETURN NIL