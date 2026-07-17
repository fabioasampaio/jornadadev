PROCEDURE Main()

   LOCAL cNome
   LOCAL cData
   LOCAL dNasc
   LOCAL cPreco
   LOCAL nPreco
   LOCAL nIdade
   LOCAL nDesconto
   LOCAL nTotal

   // Nome
   ? "Digite o nome do cliente:"
   ACCEPT TO cNome

   // Data de nascimento
   ? "Digite a data de nascimento (dd/mm/aaaa):"
   ACCEPT TO cData
   dNasc := CTOD(cData)

   // Pre‡o do produto
   ? "Digite o pre‡o do produto:"
   ACCEPT TO cPreco
   nPreco := Val(cPreco)

   // Calcula a idade
   nIdade := Int((Date() - dNasc) / 365)

   // Verifica se tem direito ao desconto
   IF nIdade > 60
      nDesconto := nPreco * 0.125
   ELSE
      nDesconto := 0
   ENDIF

   // Valor final
   nTotal := nPreco - nDesconto

   // Exibe o resumo
   ?
   ? "===== RESUMO ====="
   ? "Cliente:   " + cNome
   ? "Idade:     " + Str(nIdade, 3)
   ? "Pre‡o:     R$ " + Str(nPreco, 10, 2)
   ? "Desconto:  R$ " + Str(nDesconto, 10, 2)
   ? "Total:     R$ " + Str(nTotal, 10, 2)

RETURN