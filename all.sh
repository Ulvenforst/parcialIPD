#!/usr/bin/env bash
#
# Este script procesa todas las imágenes JPG en el directorio images/
# Primero las convierte a PNG, luego a binario para su procesamiento,
# y finalmente guarda las imágenes procesadas
#
# Autor: John Sanabria - john.sanabria@correounivalle.edu.co
# Modificado para procesamiento por lotes
#

# Crear directorio para las imágenes procesadas si no existe
mkdir -p processed_images

# Procesar cada imagen JPG en el directorio images/
for image in images/*.png; do
    # Obtener solo el nombre base del archivo sin extensión
    basename=$(basename "$image" .png)
    
    # Convertir JPG a PNG
    convert "$image" "images/${basename}.png"
    
    # Convertir PNG a binario
    python3 fromPNG2Bin.py "images/${basename}.png"
    
    # Procesar la imagen binaria
    ./main "images/${basename}.bin"
    
    # Convertir el resultado binario a PNG
    python3 fromBin2PNG.py "images/${basename}.bin.new"
    
    # Mover la imagen procesada al directorio de salida
    mv "images/${basename}.bin.new.PNG" "processed_images/${basename}_processed.png"
    
    # Limpiar archivos temporales
    rm -f "images/${basename}.bin" "images/${basename}.bin.new"
done

echo "Procesamiento de todas las imágenes completado."
