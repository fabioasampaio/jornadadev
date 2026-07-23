FUNCTION Main()

   LOCAL aVetor := {}
   LOCAL cNumero
   LOCAL nNumero
   LOCAL nI

   FOR nI := 1 TO 10

      ? "Digite o", nI, "§ n£mero:"
      ACCEPT TO cNumero

      nNumero := Val(cNumero)

      AAdd(aVetor, nNumero)

   NEXT

   BubbleSort(aVetor)

   ? ""
   ? "N£meros em ordem crescente:"

   FOR nI := 1 TO Len(aVetor)
      ? aVetor[nI]
   NEXT

RETURN NIL


FUNCTION BubbleSort(aVetor)

   LOCAL nI
   LOCAL nJ
   LOCAL nTemp

   FOR nI := 1 TO Len(aVetor) - 1

      FOR nJ := 1 TO Len(aVetor) - nI

         IF aVetor[nJ] > aVetor[nJ + 1]

            nTemp := aVetor[nJ]
            aVetor[nJ] := aVetor[nJ + 1]
            aVetor[nJ + 1] := nTemp

         ENDIF

      NEXT

   NEXT

RETURN NIL