FUNCTION Main()

   LOCAL cHora
   LOCAL nInicio := Seconds()

   DO WHILE Seconds() - nInicio < 30

      cHora := ObterHora()
      cHora := FormatarHora(cHora)

      LimparTela()
      ExibirHora(cHora)

      Inkey(1)

   ENDDO

RETURN NIL

FUNCTION ObterHora()
RETURN Time()

FUNCTION FormatarHora(cHora)
RETURN cHora

FUNCTION ExibirHora(cHora)
   ? "Hora atual:", cHora
RETURN NIL

FUNCTION LimparTela()
   CLS
RETURN NIL