#!/bin/bash
echo "creacion de un directorio de estructura simetrica" 
sudo mkdir -p Examenes-UTN/{alumno_{1..3}/parcial_{1..3},profesores} 
tree Examenes-UTN/ 
echo "se verifica" 

