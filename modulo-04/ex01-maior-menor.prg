PROCEDURE Main()

   LOCAL cValor1, cValor2
   LOCAL nValor1, nValor2

   ? "Digite o primeiro valor:"
   ACCEPT TO cValor1
   nValor1 := Val(cValor1)

   ? "Digite o segundo valor:"
   ACCEPT TO cValor2
   nValor2 := Val(cValor2)

   IF nValor1 == nValor2

      ? "Os dois valores são iguais."

   ELSE

      IF nValor1 > nValor2
         ? "Maior valor: " + Str(nValor1, 10, 2)
         ? "Menor valor: " + Str(nValor2, 10, 2)
      ELSE
         ? "Maior valor: " + Str(nValor2, 10, 2)
         ? "Menor valor: " + Str(nValor1, 10, 2)
      ENDIF

   ENDIF

RETURN