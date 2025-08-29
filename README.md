#  Compuertas Lógicas con Redes Neuronales en Wolfram Language

Este proyecto implementa las compuertas lógicas **AND, OR y XOR** utilizando **Redes Neuronales Artificiales** en Wolfram Language (Mathematica).  
Cada compuerta incluye su **entrenamiento** y una **interfaz interactiva** para probarla.

---

##  Archivos
- `compuertasNeuronales.wl` → Código fuente con la implementación.

---

##  Requisitos
- Wolfram Mathematica (versión 11 o superior).

---

##  Descripción de la implementación

###  Compuerta AND
- **Datos de entrenamiento:** `{{0,0}->0, {0,1}->0, {1,0}->0, {1,1}->1}`
- **Red neuronal:** 1 capa lineal + función sigmoide.
- **Entrenamiento:** 1000 rondas.

###  Compuerta OR
- **Datos de entrenamiento:** `{{0,0}->0, {0,1}->1, {1,0}->1, {1,1}->1}`
- **Red neuronal:** igual que AND.
- **Entrenamiento:** 5000 rondas (se requiere más tiempo).

###  Compuerta XOR
- **Datos de entrenamiento:** `{{0,0}->0, {0,1}->1, {1,0}->1, {1,1}->0}`
- **Red neuronal:** más compleja, con 2 neuronas ocultas.
- **Entrenamiento:** 5000 rondas con descenso de gradiente estocástico.

---

##  Flujo de la información (explicación simple)

Imagina que la red es un sistema de tuberías:

1. **Entradas (input1, input2):**  
   Dos valores (0 o 1) entran a la red.

2. **Capa lineal:**  
   Combina las entradas con "pesos" (llaves de paso que regulan el flujo).

3. **Función sigmoide:**  
   Suaviza la señal y la convierte en un valor entre 0 y 1.

4. **Salida final:**  
   El resultado se redondea (`Round`) a 0 o 1.

 En XOR existe una **capa oculta con 2 neuronas**, que permite aprender combinaciones más complejas:
[Input1] →
→ [Neurona oculta 1] →
→ [Salida] → (0 o 1)
[Input2] → / → [Neurona oculta 2] → /



---

##  Resultados esperados
- **AND:** solo da `1` cuando ambas entradas son `1`.  
- **OR:** da `1` cuando al menos una entrada es `1`.  
- **XOR:** da `1` cuando **solo una** entrada es `1`.  

