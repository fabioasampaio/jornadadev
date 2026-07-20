FUNCTION Main()

   LOCAL cIdade, cDependentes
   LOCAL nIdade, nDependentes
   LOCAL nPlano
   LOCAL nTotal

   ? "Digite a idade:"
   ACCEPT TO cIdade
   nIdade := Val(cIdade)

   ? "Digite o n�mero de dependentes:"
   ACCEPT TO cDependentes
   nDependentes := Val(cDependentes)

   IF nIdade <= 25
      nPlano := 180

   ELSEIF nIdade <= 40
      nPlano := 260

   ELSEIF nIdade <= 60
      nPlano := 380

   ELSE
      nPlano := 520

   ENDIF

   nTotal := nPlano + (nDependentes * 90)

   ?
   ? "Valor do plano: R$ " + Str(nPlano, 10, 2)
   ? "Dependentes:    " + Str(nDependentes, 3)
   ? "Valor total:    R$ " + Str(nTotal, 10, 2)

RETURN NIL