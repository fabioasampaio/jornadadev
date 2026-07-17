PROCEDURE Main()

   LOCAL cTexto1 := "Harbour"
   LOCAL cTexto2 := "Harb"

   ? "Usando ="
   ? cTexto1 = cTexto2

   ? "Usando =="
   ? cTexto1 == cTexto2

RETURN

/*
   Este programa demonstra a diferen‡a entre os operadores = e == em Harbour.
   O operador = compara strings sem considerar mai£sculas/min£sculas.
   O operador == compara strings considerando mai£sculas/min£sculas.

   Em Harbour, o operador = faz uma compara‡Æo flex¡vel entre strings, aceitando que uma seja o in¡cio da outra. 
   J  o operador == faz uma compara‡Æo exata, exigindo que os dois valores sejam idˆnticos. 
   Por isso, "Harbour" = "Harb" resulta em .T., enquanto "Harbour" == "Harb" resulta em .F..
*/
