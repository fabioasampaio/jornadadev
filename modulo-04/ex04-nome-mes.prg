FUNCTION Main()

   LOCAL cMes
   LOCAL nMes

   ? "Digite o n�mero do m�s (1 a 12):"
   ACCEPT TO cMes
   nMes := Val(cMes)

   DO CASE

      CASE nMes == 1
         ? "Janeiro"

      CASE nMes == 2
         ? "Fevereiro"

      CASE nMes == 3
         ? "Mar�o"

      CASE nMes == 4
         ? "Abril"

      CASE nMes == 5
         ? "Maio"

      CASE nMes == 6
         ? "Junho"

      CASE nMes == 7
         ? "Julho"

      CASE nMes == 8
         ? "Agosto"

      CASE nMes == 9
         ? "Setembro"

      CASE nMes == 10
         ? "Outubro"

      CASE nMes == 11
         ? "Novembro"

      CASE nMes == 12
         ? "Dezembro"

      OTHERWISE
         ? "M�s inv�lido."

   ENDCASE

RETURN NIL