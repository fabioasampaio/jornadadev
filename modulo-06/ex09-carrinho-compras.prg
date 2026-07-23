FUNCTION Main()

   LOCAL aCarrinho := {}
   LOCAL aProduto
   LOCAL cNome
   LOCAL cPreco
   LOCAL nPreco
   LOCAL cContinuar := "S"
   LOCAL nI
   LOCAL nTotal := 0

   DO WHILE Upper(cContinuar) == "S"

      ? "Nome do produto:"
      ACCEPT TO cNome

      ? "Pre‡o do produto:"
      ACCEPT TO cPreco
      nPreco := Val(cPreco)

      aProduto := { cNome, nPreco }

      AAdd(aCarrinho, aProduto)

      ? "Deseja adicionar outro produto? (S/N)"
      ACCEPT TO cContinuar

   ENDDO

   ? ""
   ? "===== CARRINHO DE COMPRAS ====="

   FOR nI := 1 TO Len(aCarrinho)

      ? aCarrinho[nI][1], "- R$", Str(aCarrinho[nI][2],10,2)

      nTotal := nTotal + aCarrinho[nI][2]

   NEXT

   ? ""
   ? "Total da compra: R$", Str(nTotal,10,2)

RETURN NIL