#!/bin/bash

echo "Ingresa tu edad:"
read edad

if [[ $edad =~ ^[0-9]+$ ]]; then
  let edad+=5
  echo "Dentro de cinco años tendrás $edad años, tu futuro será brillante como data scientist. Sigue así!."
else
  echo "La edad que ingresaste no es un número entero."
fi