FUNCTION Main()

   LOCAL aAlunos := {}
   LOCAL aAluno
   LOCAL cQtd
   LOCAL nQtd
   LOCAL cNome
   LOCAL cNota
   LOCAL nNota
   LOCAL nI
   LOCAL nJ
   LOCAL nMedia

   ? "Quantos alunos deseja cadastrar?"
   ACCEPT TO cQtd
   nQtd := Val(cQtd)

   FOR nI := 1 TO nQtd

      ? ""
      ? "Aluno", nI

      ? "Nome:"
      ACCEPT TO cNome

      aAluno := { cNome }

      FOR nJ := 1 TO 4
         ? "Nota", nJ, ":"
         ACCEPT TO cNota
         nNota := Val(cNota)

         AAdd(aAluno, nNota)
      NEXT

      AAdd(aAlunos, aAluno)

   NEXT

   ? ""
   ? "===== APROVADOS ====="

   FOR nI := 1 TO Len(aAlunos)

      nMedia := ( aAlunos[nI][2] + ;
                  aAlunos[nI][3] + ;
                  aAlunos[nI][4] + ;
                  aAlunos[nI][5] ) / 4

      IF nMedia >= 7
         ? aAlunos[nI][1], "- M‚dia:", nMedia
      ENDIF

   NEXT

   ? ""
   ? "===== REPROVADOS ====="

   FOR nI := 1 TO Len(aAlunos)

      nMedia := ( aAlunos[nI][2] + ;
                  aAlunos[nI][3] + ;
                  aAlunos[nI][4] + ;
                  aAlunos[nI][5] ) / 4

      IF nMedia < 7
         ? aAlunos[nI][1], "- M‚dia:", nMedia
      ENDIF

   NEXT

RETURN NIL