FUNCTION Main()

    LOCAL cValor
    LOCAL nValor

    DO WHILE .T.

        ACCEPT "Digite um n£mero inteiro (0 ou negativo para sair): " TO cValor

        nValor := Val(cValor)

        IF nValor <= 0
            EXIT
        ENDIF

        ? "O dobro de", nValor, "‚", nValor * 2
        ?

    ENDDO

    ? "Programa encerrado."

RETURN NIL