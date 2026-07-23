FUNCTION Menu()

   LOCAL cOpcao

   CLS

   ? "===== CONTROLE DE ESTOQUE ====="
   ? "1 - Cadastrar produto"
   ? "2 - Listar produtos"
   ? "3 - Entrada de estoque"
   ? "4 - Sa¡da de estoque"
   ? "5 - Buscar produto"
   ? "6 - Relat¢rio"
   ? "0 - Sair"

   ACCEPT "Op‡Æo: " TO cOpcao

RETURN cOpcao


FUNCTION CadastrarProduto(aProdutos)

   LOCAL cCodigo
   LOCAL cNome
   LOCAL cQtd
   LOCAL cPreco

   ACCEPT "C¢digo: " TO cCodigo
   ACCEPT "Nome: " TO cNome
   ACCEPT "Quantidade: " TO cQtd
   ACCEPT "Pre‡o Unit rio: " TO cPreco

   AAdd(aProdutos, ;
      { ;
         cCodigo, ;
         cNome, ;
         Val(cQtd), ;
         Val(cPreco) ;
      })

RETURN NIL


FUNCTION ListarProdutos(aProdutos)

   LOCAL nI

   CLS

   FOR nI := 1 TO Len(aProdutos)

      ? "C¢digo:", aProdutos[nI][1]
      ? "Nome:", aProdutos[nI][2]
      ? "Quantidade:", aProdutos[nI][3]
      ? "Pre‡o:", aProdutos[nI][4]
      ? "---------------------------"

   NEXT

   Inkey(0)

RETURN NIL


FUNCTION BuscarPosicao(aProdutos,cCodigo)

   LOCAL nI

   FOR nI := 1 TO Len(aProdutos)

      IF aProdutos[nI][1] == cCodigo
         RETURN nI
      ENDIF

   NEXT

RETURN 0


FUNCTION EntradaEstoque(aProdutos)

   LOCAL cCodigo
   LOCAL cQtd
   LOCAL nPos

   ACCEPT "C¢digo: " TO cCodigo

   nPos := BuscarPosicao(aProdutos,cCodigo)

   IF nPos == 0
      ? "Produto nÆo encontrado."
      Inkey(0)
      RETURN NIL
   ENDIF

   ACCEPT "Quantidade de entrada: " TO cQtd

   aProdutos[nPos][3] += Val(cQtd)

RETURN NIL


FUNCTION SaidaEstoque(aProdutos)

   LOCAL cCodigo
   LOCAL cQtd
   LOCAL nPos
   LOCAL nQtd

   ACCEPT "C¢digo: " TO cCodigo

   nPos := BuscarPosicao(aProdutos,cCodigo)

   IF nPos == 0
      ? "Produto nÆo encontrado."
      Inkey(0)
      RETURN NIL
   ENDIF

   ACCEPT "Quantidade de sa¡da: " TO cQtd

   nQtd := Val(cQtd)

   IF nQtd > aProdutos[nPos][3]

      ? "Estoque insuficiente."

   ELSE

      aProdutos[nPos][3] -= nQtd

   ENDIF

RETURN NIL


FUNCTION BuscarProduto(aProdutos)

   LOCAL cCodigo
   LOCAL nPos

   ACCEPT "C¢digo: " TO cCodigo

   nPos := BuscarPosicao(aProdutos,cCodigo)

   IF nPos == 0

      ? "Produto nÆo encontrado."

   ELSE

      ? "C¢digo:", aProdutos[nPos][1]
      ? "Nome:", aProdutos[nPos][2]
      ? "Quantidade:", aProdutos[nPos][3]
      ? "Pre‡o:", aProdutos[nPos][4]

   ENDIF

   Inkey(0)

RETURN NIL


FUNCTION RelatorioEstoque(aProdutos)

   LOCAL nI
   LOCAL nValor
   LOCAL nTotal := 0

   CLS

   FOR nI := 1 TO Len(aProdutos)

      nValor := aProdutos[nI][3] * aProdutos[nI][4]

      ? aProdutos[nI][2], " -> ", Str(nValor,10,2)

      nTotal += nValor

   NEXT

   ? ""
   ? "Total Geral:", Str(nTotal,10,2)

   Inkey(0)

RETURN NIL