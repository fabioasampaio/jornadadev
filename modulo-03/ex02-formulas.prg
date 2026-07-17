#define PI 3.14159

PROCEDURE Main()

   LOCAL nRaio, nArea
   LOCAL nCatetoA, nCatetoB, nHipotenusa
   LOCAL nPeso, nAltura, nIMC

   // a) µrea do c¡rculo
   ? "Digite o raio do c¡rculo:"
   ACCEPT TO nRaio
   nRaio := Val(nRaio)

   nArea := PI * (nRaio ^ 2)

   ? "µrea do c¡rculo: " + Str(nArea, 10, 2)
   ?

   // b) Hipotenusa
   ? "Digite o valor do primeiro cateto:"
   ACCEPT TO nCatetoA
   nCatetoA := Val(nCatetoA)

   ? "Digite o valor do segundo cateto:"
   ACCEPT TO nCatetoB
   nCatetoB := Val(nCatetoB)

   nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))

   ? "Hipotenusa: " + Str(nHipotenusa, 10, 2)
   ?

   // c) IMC
   ? "Digite o peso (kg):"
   ACCEPT TO nPeso
   nPeso := Val(nPeso)

   ? "Digite a altura (m):"
   ACCEPT TO nAltura
   nAltura := Val(nAltura)

   nIMC := nPeso / (nAltura ^ 2)

   ? "IMC: " + Str(nIMC, 10, 2)

RETURN