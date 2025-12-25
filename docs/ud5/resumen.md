Basado en la documentación proporcionada para la **Unidad Didáctica 5: Teoría de grafos**, he extraído los conceptos, fórmulas y algoritmos fundamentales para que puedas generar tu material de estudio.

Este listado sigue la progresión lógica de la unidad, desde la definición básica hasta la aplicación de algoritmos complejos.

***

## Temario: Teoría de Grafos y Algoritmos

### 1. Definiciones Básicas y Tipos de Grafos
*   **Grafo $G = (V, E)$**: Definición como terna o par de conjuntos (vértices y aristas).
*   **Vértices (nodos) y Aristas (lados)**: Elementos que componen el grafo y su relación de adyacencia.
*   **Grafo Simple**: Grafo que no tiene bucles (aristas que unen un vértice consigo mismo).
*   **Multigrafo**: Grafo con más de una arista entre dos vértices.
*   **Grafo Dirigido (Dígrafo)**: Las aristas (arcos o ramas) tienen una orientación definida (punto de partida y llegada).
*   **Orden de un grafo**: Número total de vértices, denotado por $ord(G)$ o $|V|$.
*   **Grafo Completo ($K_n$)**: Grafo donde cada par de vértices distintos tiene una arista que los une.
*   **Grafo Bipartito ($K_{n,m}$)**: Vértices divididos en dos conjuntos donde solo hay aristas entre vértices de conjuntos distintos.

### 2. Grados y Representación Matricial
*   **Grado de un vértice $\delta(v)$**: Número de aristas incidentes en un vértice.
*   **Teorema Fundamental (Lema del saludo)**: La suma de los grados de todos los vértices es igual a dos veces el número de aristas ($\sum \delta(v) = 2|E|$).
*   **Grados en grafos dirigidos**:
    *   **Grado de salida ($\delta^+(v)$)**: Arcos que inician en el vértice.
    *   **Grado de entrada ($\delta^-(v)$)**: Arcos que terminan en el vértice.
    *   **Vértice Fuente**: Cuando $\delta^-(v) = 0$.
    *   **Vértice Sumidero**: Cuando $\delta^+(v) = 0$.
*   **Matriz de Adyacencia ($A$)**: Representación binaria (1 y 0) de las conexiones.
    *   *Indicación:* Mencionar que es simétrica para grafos no dirigidos y que la suma de filas/columnas da los grados.

### 3. Conexión, Isomorfía y Operaciones
*   **Subgrafo y Subgrafo Inducido**: Subconjuntos de vértices y aristas que forman un nuevo grafo.
*   **Grafo Complementario**: Grafo con los mismos vértices pero con las aristas que le faltan al original para ser completo.
*   **Isomorfismo de grafos**: Definición de biyección entre vértices que preserva las conexiones.
    *   *Indicación:* Listar condiciones necesarias: mismo número de vértices, aristas y mismos grados.

### 4. Caminos, Ciclos y Grafos Especiales
*   **Conceptos de recorrido**:
    *   **Cadena/Camino**: Sucesión finita alterna de vértices y aristas.
    *   **Longitud**: Número de aristas que componen el camino.
    *   **Camino Simple**: No repite ningún vértice.
    *   **Circuito**: Camino cerrado que no repite aristas.
    *   **Ciclo**: Circuito que no repite vértices (excepto el inicial y final).
*   **Conexión**:
    *   **Componente conexa**: Subgrafo máximo donde todos los vértices están conectados.
    *   **Fuertemente conexo (en dígrafos)**: Existe camino de ida y vuelta entre cualquier par de vértices.
*   **Grafos Eulerianos**:
    *   **Camino Euleriano**: Pasa por todas las aristas una sola vez.
    *   **Teorema de Euler**: Relación con la paridad de los grados de los vértices (todos pares para ciclo, máximo dos impares para camino abierto).
*   **Grafos Hamiltonianos**:
    *   **Ciclo Hamiltoniano**: Pasa por todos los vértices una sola vez.
    *   **Teoremas de Dirac y Ore**: Condiciones suficientes basadas en los grados de los vértices ($d \ge n/2$ o suma de grados de no adyacentes $\ge n$).
    *   **Clausura de un grafo**: Grafo obtenido uniendo vértices no adyacentes cuya suma de grados es $\ge n$.

### 5. Árboles
*   **Definición de Árbol**: Grafo simple, conexo y acíclico.
*   **Propiedades de los árboles**: $|V| = |E| + 1$ y existencia de un único camino simple entre cualquier par de vértices.
*   **Árbol Enraizado (Arborescencia)**:
    *   **Terminología**: Raíz, nivel, padre, hijo, ascendientes, descendientes, hoja (vértice sin hijos) y vértices internos.
*   **Árbol de Expansión (Generador)**: Árbol contenido en un grafo que incluye todos sus vértices.
*   **Algoritmos de búsqueda**:
    *   **Búsqueda en profundidad (DFS)**: Uso de pilas (LIFO) para explorar.
    *   **Búsqueda en anchura (BFS)**: Uso de colas/pilas para explorar niveles.

### 6. Redes y Algoritmos de Optimización
*   **Red**: Grafo ponderado con pesos (costes, distancias, tiempos) asociados a las aristas.
*   **Matriz de Costes ($C$)**: Matriz que indica los pesos entre vértices (uso de $\infty$ para no conexión).
*   **Árbol Generador de Mínimo Coste (MST)**: Árbol de expansión cuya suma de pesos es mínima.
*   **Algoritmo de Prim**: Construye el MST añadiendo el vértice más cercano al conjunto ya conectado.
*   **Algoritmo de Kruskal**: Construye el MST añadiendo las aristas de menor peso que no formen ciclos.
*   **Algoritmo de Dijkstra**: Determina el camino mínimo desde un origen a todos los demás vértices en redes con pesos no negativos.

***

### Indicaciones relevantes para la generación de documentación:

1.  **Representación Visual**: Es vital mencionar la importancia de los diagramas de puntos (vértices) y líneas/flechas (aristas/arcos) para entender conceptos como el isomorfismo o los ciclos.
2.  **Paridad de Euler**: Para la IA, recalca que el Teorema de Euler es la clave para resolver problemas clásicos como los "Puentes de Königsberg".
3.  **Diferencia Euler vs Hamilton**: Es el error más común; mientras Euler se centra en recorrer todas las **aristas**, Hamilton se centra en visitar todos los **vértices**.
4.  **Algoritmos Voraces (Greedy)**: Kruskal, Prim y Dijkstra pertenecen a esta familia; entender que eligen la opción "óptima local" en cada paso es fundamental para comprender su lógica.
5.  **Matrices**: La IA debe ser capaz de explicar cómo convertir un grafo visual a matriz de adyacencia/costes y viceversa, ya que es el puente entre la geometría y el cálculo computacional.


---

Aquí tienes una recapitulación de los ejemplos proporcionados en los documentos de la **Unidad Didáctica 5: Teoría de grafos**, organizados por temas y con el desarrollo paso a paso de los procesos algorítmicos.

---

### 1. Definiciones Básicas y Representación

**Ejemplo 1.1: Grafo Simple**
*   **Enunciado:** Considerar $G = (V, E)$ con $V = \{a, b, c, d, e\}$ y $E = \{ab, ac, bc, cd, da, de\}$.
*   **Respuesta:** El grafo se representa uniendo los pares de vértices indicados. Es un **grafo simple** porque no tiene bucles (aristas de un vértice a sí mismo).

**Ejemplo 1.4: Grados en Grafos Dirigidos**
*   **Enunciado:** Calcular grados de entrada ($\delta^-$) y salida ($\delta^+$) del digrafo con $E = \{ab, ac, ad, bc, dc, ea, ed\}$.
*   **Paso a paso:**
    1.  Contar flechas que salen de cada nodo: $\delta^+(a)=3, \delta^+(b)=1, \delta^+(c)=0, \delta^+(d)=1, \delta^+(e)=2$.
    2.  Contar flechas que entran a cada nodo: $\delta^-(a)=1, \delta^-(b)=1, \delta^-(c)=3, \delta^-(d)=2, \delta^-(e)=0$.
*   **Conclusión:** El vértice $c$ es un **sumidero** ($\delta^+=0$) y el vértice $e$ es una **fuente** ($\delta^-=0$).

**Ejemplo 1.7: Isomorfismo de Grafos**
*   **Enunciado:** Determinar si dos grafos de 5 vértices son isomorfos.
*   **Análisis paso a paso:**
    1.  Verificar número de vértices: Ambos tienen 5.
    2.  Verificar grados: En ambos, cuatro vértices tienen grado 3 y uno tiene grado 4.
    3.  Establecer la biyección: El vértice de grado 4 en el primero ($e$) debe corresponder al de grado 4 en el segundo (vértice 4).
*   **Conclusión:** Son isomorfos; gráficamente representan mover los vértices en el espacio manteniendo las conexiones.

---

### 2. Caminos y Conexión

**Ejemplo 2.1: Circuito vs. Ciclo**
*   **Diferencia:** Un **circuito** es un camino cerrado que no repite aristas (pero puede repetir vértices). Un **ciclo** es un circuito que no repite ningún vértice excepto el inicial y el final.

**Ejemplo 2.2: Conexión Fuerte en Dígrafos**
*   **Caso Conexo:** Existe un camino de ida y vuelta entre cualquier par de vértices.
*   **Caso No Conexo:** Si existe camino de $a \to b$ pero no de $b \to a$, el digrafo no es fuertemente conexo.

---

### 3. Grafos Especiales (Eulerianos y Hamiltonianos)

**Ejemplo: Puentes de Königsberg**
*   **Problema:** ¿Se pueden recorrer los 7 puentes pasando una sola vez por cada uno?
*   **Resolución según Teorema de Euler:**
    1.  Modelar las regiones como vértices y los puentes como aristas.
    2.  Calcular grados: Si hay más de dos vértices de grado impar, no existe camino euleriano.
*   **Conclusión:** Como hay vértices de grado impar, **no es euleriano**.

**Ejemplo: Teorema de Dirac (Hamiltonianos)**
*   **Enunciado:** ¿Es $G$ con 6 vértices y grado mínimo $\delta=3$ hamiltoniano?
*   **Paso a paso:** Aplicar condición $\delta \ge n/2$.
    *   $3 \ge 6/2 \to 3 \ge 3$.
*   **Conclusión:** Se cumple la condición suficiente, el grafo es **hamiltoniano**.

---

### 4. Algoritmos de Árboles de Expansión

**Ejemplo 2.7: Búsqueda en Profundidad (DFS)**
*   **Objetivo:** Hallar un árbol de expansión para un grafo de vértices $\{a, b, c, d, e, f, g, h, i\}$.
*   **Proceso Paso a Paso (uso de pila $P$):**
    1.  **Paso 0:** $P=(a)$, $V'=\{a\}$.
    2.  **Paso 1:** Elegir adyacente a $a \to b$. $P=(b, a)$, $E'=\{ab\}$.
    3.  **Paso 2:** Elegir adyacente a $b \to e$. $P=(e, b, a)$, $E'=\{ab, be\}$.
    4.  **Paso 3:** $e$ no tiene adyacentes nuevos. Retroceder (extraer $e$): $P=(b, a)$.
    5.  **Paso 4:** Elegir otro adyacente a $b \to f$. $P=(f, b, a)$, $E'=\{ab, be, bf\}$.
    6.  **Pasos finales:** Continuar hasta que $V' = V$. El árbol resultante en este ejemplo incluye las aristas $\{ab, be, bf, ac, cg, gh, hd, di\}$.

---

### 5. Algoritmos de Optimización en Redes

**Ejemplo 3.1: Árbol Generador Mínimo (Prim vs. Kruskal)**
*   **Red:** Vértices $a$ al $f$ con diversos pesos.
*   **Solución Kruskal (Aristas):**
    1.  Ordenar aristas por peso: $bc(3), ce(4), ac(5), bd(6), cf(7) \dots$
    2.  Añadir $bc$ (coste 3).
    3.  Añadir $ce$ (coste 4). No forma ciclo.
    4.  Añadir $ac$ (coste 5). No forma ciclo.
    5.  Añadir $bd$ (coste 6). No forma ciclo.
    6.  Añadir $cf$ (coste 7). No forma ciclo.
*   **Resultado:** Coste total = $3+4+5+6+7 = \mathbf{25}$.

**Ejemplo 3.3: Algoritmo de Dijkstra (Camino Mínimo)**
*   **Objetivo:** Camino mínimo desde el vértice $a$ a todos los demás en una red ponderada.
*   **Proceso paso a paso:**
    1.  **Paso 0:** Distancias $D_0 = (a:0, b:\infty, c:\infty, d:\infty, e:\infty, f:\infty)$.
    2.  **Paso 1:** Desde $a$, actualizar vecinos $b$ y $c$. $D_1 = (a:0, b:2, c:4, d:\infty, e:\infty, f:\infty)$.
    3.  **Paso 2:** El mínimo es $b(2)$. Actualizar vecinos de $b$ ($d, e, f$). $D_2(d) = \min(\infty, 2+3)=5$. $D_2 = (a:0, b:2, c:4, d:5, e:11, f:10)$.
    4.  **Pasos finales:** Se sigue eligiendo el nodo con distancia mínima acumulada hasta cerrar todos los nodos.
*   **Resultados finales:**
    *   Camino a $d$: $a, b, d$ (Distancia: 5).
    *   Camino a $f$: $a, b, d, e, f$ (Distancia: 8).

---

### Resumen de Fórmulas y Teoremas Aplicados
*   **Lema del saludo:** $\sum \delta(v) = 2|E|$.
*   **Propiedad de Árboles:** $|V| = |E| + 1$.
*   **Fórmula de Binet (Fibonacci vía Grafos):** $F_{n+1} = \frac{1}{\sqrt{5}} \left(\frac{1 + \sqrt{5}}{2}\right)^{n+1} - \frac{1}{\sqrt{5}} \left(\frac{1 - \sqrt{5}}{2}\right)^{n+1}$.