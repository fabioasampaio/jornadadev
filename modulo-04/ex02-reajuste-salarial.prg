PROCEDURE Main()

   LOCAL cSalario
   LOCAL nSalario
   LOCAL nReajuste
   LOCAL nNovoSalario

   ? "Digite o salário atual:"
   ACCEPT TO cSalario
   nSalario := Val(cSalario)

   IF nSalario < 1000
      nReajuste := 0.15

   ELSEIF nSalario <= 2000
      nReajuste := 0.12

   ELSEIF nSalario <= 4000
      nReajuste := 0.08

   ELSE
      nReajuste := 0.05

   ENDIF

   nNovoSalario := nSalario + (nSalario * nReajuste)

   ?
   ? "Salário atual: R$ " + Str(nSalario, 10, 2)
   ? "Novo salário:  R$ " + Str(nNovoSalario, 10, 2)

RETURN