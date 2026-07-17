PROCEDURE Main()

   LOCAL cNota1, cNota2, cNota3, cNota4
   LOCAL nNota1, nNota2, nNota3, nNota4
   LOCAL nMedia

   ? "Digite a primeira nota:"
   ACCEPT TO cNota1
   nNota1 := Val(cNota1)

   ? "Digite a segunda nota:"
   ACCEPT TO cNota2
   nNota2 := Val(cNota2)

   ? "Digite a terceira nota:"
   ACCEPT TO cNota3
   nNota3 := Val(cNota3)

   ? "Digite a quarta nota:"
   ACCEPT TO cNota4
   nNota4 := Val(cNota4)

   nMedia := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / 10

   ?
   ? "M‚dia ponderada: " + Str(nMedia, 10, 2)

RETURN