FUNCTION Main()

   LOCAL cJogador
   LOCAL cCPU
   LOCAL cResultado
   LOCAL cContinuar := "S"

   DO WHILE Upper(cContinuar) == "S"

      ? "Escolha: Pedra, Papel ou Tesoura: "
      ACCEPT TO cJogador

      IF !ValidarJogada(cJogador)
         ? "Jogada inv lida!"
         LOOP
      ENDIF

      cCPU := SortearJogadaCPU()

      ? "Computador escolheu:", cCPU

      cResultado := DefinirVencedor(cJogador, cCPU)

      ? cResultado

      ? "Deseja jogar novamente? (S/N)"
      ACCEPT TO cContinuar

   ENDDO

RETURN NIL


FUNCTION SortearJogadaCPU()

   LOCAL nSorteio

   nSorteio := HB_RandomInt(1,3)

   DO CASE
      CASE nSorteio == 1
         RETURN "PEDRA"

      CASE nSorteio == 2
         RETURN "PAPEL"

      OTHERWISE
         RETURN "TESOURA"
   ENDCASE

RETURN ""


FUNCTION ValidarJogada(cJogada)

   cJogada := Upper(AllTrim(cJogada))

RETURN cJogada == "PEDRA" .OR. ;
       cJogada == "PAPEL" .OR. ;
       cJogada == "TESOURA"


FUNCTION DefinirVencedor(cJogador, cCPU)

   cJogador := Upper(AllTrim(cJogador))
   cCPU     := Upper(AllTrim(cCPU))

   IF cJogador == cCPU
      RETURN "Empate!"
   ENDIF

   IF (cJogador == "PEDRA"   .AND. cCPU == "TESOURA") .OR. ;
      (cJogador == "PAPEL"   .AND. cCPU == "PEDRA")   .OR. ;
      (cJogador == "TESOURA" .AND. cCPU == "PAPEL")

      RETURN "Vocˆ venceu!"

   ENDIF

RETURN "Computador venceu!"