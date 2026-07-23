FUNCTION Main()

   LOCAL nA
   LOCAL nB
   LOCAL cOperacao
   LOCAL uResultado

   nA := LerNumero("Digite o primeiro valor:")
   nB := LerNumero("Digite o segundo valor:")

   ? "Digite a operação (+, -, *, /, ^, R):"
   ACCEPT TO cOperacao

   uResultado := Calcular(nA, nB, cOperacao)

   MostrarResultado(cOperacao, uResultado)

RETURN NIL


FUNCTION LerNumero(cMensagem)

   LOCAL cValor

   ? cMensagem
   ACCEPT TO cValor

RETURN Val(cValor)


FUNCTION Calcular(nA, nB, cOperacao)

   LOCAL nResultado

   DO CASE

      CASE Upper(cOperacao) == "+"
         nResultado := nA + nB

      CASE Upper(cOperacao) == "-"
         nResultado := nA - nB

      CASE Upper(cOperacao) == "*"
         nResultado := nA * nB

      CASE Upper(cOperacao) == "/"
         IF nB == 0
            RETURN .F.
         ENDIF
         nResultado := nA / nB

      CASE Upper(cOperacao) == "^"
         nResultado := nA ^ nB

      CASE Upper(cOperacao) == "R"
         nResultado := Sqrt(nA)

      OTHERWISE
         RETURN .F.

   ENDCASE

RETURN nResultado


FUNCTION MostrarResultado(cOperacao, uResultado)

   IF ValType(uResultado) == "L"
      ? "Erro: operação inválida ou divisão por zero."
   ELSE

      IF Upper(cOperacao) == "R"
         ? "Raiz quadrada: " + Str(uResultado, 10, 2)
      ELSE
         ? "Resultado: " + Str(uResultado, 10, 2)
      ENDIF

   ENDIF

RETURN NIL