FUNCTION Main()

   LOCAL aV := {}
   LOCAL cNumero
   LOCAL nNumero
   LOCAL nI
   LOCAL nSoma := 0
   LOCAL nMedia

   FOR nI := 1 TO 10

      ? "Digite o", nI, "§ n£mero:"
      ACCEPT TO cNumero

      nNumero := Val(cNumero)

      AAdd(aV, nNumero)

      nSoma := nSoma + nNumero

   NEXT

   ASort(aV)

   nMedia := nSoma / Len(aV)

   ? ""
   ? "N£meros em ordem crescente:"

   FOR nI := 1 TO Len(aV)
      ? aV[nI]
   NEXT

   ? ""
   ? "Soma:", nSoma
   ? "M‚dia:", nMedia
   ? "Menor n£mero:", aV[1]
   ? "Maior n£mero:", aV[Len(aV)]

RETURN NIL