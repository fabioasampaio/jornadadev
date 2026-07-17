PROCEDURE Main()

   LOCAL cValorA, cValorB
   LOCAL nA, nB
   LOCAL cOperacao
   LOCAL nResultado

   ? "Digite o primeiro valor:"
   ACCEPT TO cValorA
   nA := Val(cValorA)

   ? "Digite o segundo valor:"
   ACCEPT TO cValorB
   nB := Val(cValorB)

   ? "Digite a operaá∆o (+, -, *, /, ^, R):"
   ACCEPT TO cOperacao

   DO CASE

      CASE Upper(cOperacao) == "+"
         nResultado := nA + nB
         ? "Resultado: " + Str(nResultado, 10, 2)

      CASE Upper(cOperacao) == "-"
         nResultado := nA - nB
         ? "Resultado: " + Str(nResultado, 10, 2)

      CASE Upper(cOperacao) == "*"
         nResultado := nA * nB
         ? "Resultado: " + Str(nResultado, 10, 2)

      CASE Upper(cOperacao) == "/"
         IF nB == 0
            ? "Erro: divis∆o por zero!"
         ELSE
            nResultado := nA / nB
            ? "Resultado: " + Str(nResultado, 10, 2)
         ENDIF

      CASE Upper(cOperacao) == "^"
         nResultado := nA ^ nB
         ? "Resultado: " + Str(nResultado, 10, 2)

      CASE Upper(cOperacao) == "R"
         nResultado := Sqrt(nA)
         ? "Raiz quadrada: " + Str(nResultado, 10, 2)

      OTHERWISE
         ? "Operaá∆o inv†lida!"

   ENDCASE

RETURN