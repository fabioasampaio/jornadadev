SET PROCEDURE TO estoque_lib.prg

FUNCTION Main()

   LOCAL aProdutos := {}
   LOCAL cOpcao

   DO WHILE .T.

      cOpcao := Menu()

      DO CASE

         CASE cOpcao == "1"
            CadastrarProduto(@aProdutos)

         CASE cOpcao == "2"
            ListarProdutos(aProdutos)

         CASE cOpcao == "3"
            EntradaEstoque(@aProdutos)

         CASE cOpcao == "4"
            SaidaEstoque(@aProdutos)

         CASE cOpcao == "5"
            BuscarProduto(aProdutos)

         CASE cOpcao == "6"
            RelatorioEstoque(aProdutos)

         CASE cOpcao == "0"
            EXIT

         OTHERWISE
            ? "Op‡Æo inv lida!"

      ENDCASE

   ENDDO

RETURN NIL