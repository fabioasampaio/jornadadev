FUNCTION Main()

    LOCAL cValor
    LOCAL nValor
    LOCAL nTotal := 0
    LOCAL nQtd   := 0

    DO WHILE .T.

        ACCEPT "Digite um valor (0 para finalizar): " TO cValor

        nValor := Val(cValor)

        IF nValor == 0
            EXIT
        ENDIF

        nTotal := nTotal + nValor
        nQtd   := nQtd + 1

    ENDDO

    ?
    ? "Resultado Final"
    ? "----------------"
    ? "Soma dos valores:", nTotal
    ? "Quantidade de valores:", nQtd

RETURN NIL