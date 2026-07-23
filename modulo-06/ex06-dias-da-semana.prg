FUNCTION Main()

   LOCAL aDias
   LOCAL cIndice
   LOCAL nIndice

   aDias := { "Domingo", ;
              "Segunda-feira", ;
              "Ter‡a-feira", ;
              "Quarta-feira", ;
              "Quinta-feira", ;
              "Sexta-feira", ;
              "S bado" }

   ? "Digite um n£mero de 1 a 7:"
   ACCEPT TO cIndice

   nIndice := Val(cIndice)

   IF nIndice >= 1 .AND. nIndice <= Len(aDias)
      ? "Dia da semana:", aDias[nIndice]
   ELSE
      ? "N£mero inv lido! Digite um valor entre 1 e 7."
   ENDIF

RETURN NIL