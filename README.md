### Secuencial:
- **real:** 0m10.506s, 0m7.466s, 0m7.466s, 0m7.668s, 0m10.489s

### Procedimiento:
1. **Eliminar el tiempo más bajo**: 0m7.466s
2. **Eliminar el tiempo más alto**: 0m10.506s
3. **Tiempos restantes**: 0m7.466s, 0m7.668s, 0m10.489s
4. **Convertir a segundos**:
   - 0m7.466s = 7.466 segundos
   - 0m7.668s = 7.668 segundos
   - 0m10.489s = 10.489 segundos
5. **Promedio**:

   $$
   \frac{7.466 + 7.668 + 10.489}{3} = \frac{25.623}{3} = 8.541 \text{ segundos}
   $$

El tiempo promedio de ejecución secuencial es **8.541 segundos**.


### Paralela N*2:
- **real:** 0m7.035s, 0m7.385s, 0m7.385s, 0m7.120s

### Procedimiento:
1. **Eliminar el tiempo más bajo**: 0m7.035s
2. **Eliminar el tiempo más alto**: 0m7.385s (uno de los dos, ya que ambos tienen el mismo valor)
3. **Tiempos restantes**: 0m7.385s, 0m7.120s
4. **Convertir a segundos**:
   - 0m7.385s = 7.385 segundos
   - 0m7.120s = 7.120 segundos
5. **Promedio**:

   $$
   \frac{7.385 + 7.120}{2} = \frac{14.505}{2} = 7.2525 \text{ segundos}
   $$

El tiempo promedio de ejecución con los hilos configurados es **7.253 segundos**.
