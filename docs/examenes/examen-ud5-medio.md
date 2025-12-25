---
title: Examen UD5 — Teoría de grafos (UD5) (medio)
---

# Examen UD5 — Teoría de grafos

_Duración estimada: 60 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). Algunas preguntas pueden tener más de una respuesta válida._

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
En un grafo completo $K_9$, ¿cuántas aristas hay?

- [ ] 18
- [x] 36
- [ ] 40
- [ ] 45

Explicación breve: En $K_n$, $|E|=\binom{n}{2}=\frac{n(n-1)}{2}$; para $n=9$ da 36.
</quiz>

---

<quiz>
Sea $G$ un grafo no dirigido conexo. ¿Cuál(es) condición(es) garantizan que $G$ tiene un **ciclo euleriano**?

- [x] Todos los vértices tienen grado par
- [ ] Exactamente dos vértices tienen grado impar
- [ ] $G$ es hamiltoniano
- [ ] $G$ es bipartito

Explicación breve: Teorema de Euler: ciclo euleriano ⇔ (conexo) y todos los grados pares.
</quiz>

---

<quiz>
Sea $G$ un grafo no dirigido conexo con exactamente dos vértices de grado impar. ¿Qué se puede afirmar?

- [x] Existe un camino euleriano abierto
- [ ] Existe un ciclo euleriano
- [ ] $G$ es necesariamente hamiltoniano
- [ ] $G$ es necesariamente un árbol

Explicación breve: Dos vértices impares ⇔ existe camino euleriano abierto (y no hay ciclo euleriano).
</quiz>

---

<quiz>
Aplicando Dirac: si $G$ es simple con $n=10$ vértices y grado mínimo $\delta(G)=5$, ¿qué se puede afirmar?

- [x] $G$ es hamiltoniano
- [ ] $G$ es euleriano
- [ ] $G$ no contiene ciclos
- [ ] $G$ es necesariamente completo

Explicación breve: Dirac: si $\delta(G)\ge n/2$ entonces $G$ es hamiltoniano; aquí $5\ge 10/2$.
</quiz>

---

<quiz>
¿Cuál(es) afirmación(es) sobre árboles es/son verdadera(s)?

- [x] Un árbol con $n$ vértices tiene $n-1$ aristas
- [x] Un árbol es un grafo conexo sin ciclos
- [ ] Un árbol con $n$ vértices tiene $n$ aristas
- [ ] Todo árbol tiene exactamente dos vértices

Explicación breve: Definición: conexo y acíclico; además $|E|=n-1$.
</quiz>

---

<quiz>
Sea un grafo simple con matriz de adyacencia $A$. ¿Cuál(es) afirmación(es) es/son correcta(s)?

- [x] $A$ es simétrica si el grafo es no dirigido
- [x] La diagonal de $A$ es todo ceros si el grafo no tiene lazos
- [ ] La suma de la fila $i$ de $A$ es siempre el número de aristas del grafo
- [ ] $A$ siempre tiene unos en la diagonal

Explicación breve: En grafo simple no dirigido, $A$ es simétrica y sin lazos ⇒ diagonal 0; la suma de la fila $i$ da el grado de $v_i$.
</quiz>

---

<quiz>
En un grafo no dirigido con matriz de adyacencia $A$, ¿qué representa el elemento $(A^2)_{ij}$?

- [x] El número de caminos de longitud 2 de $v_i$ a $v_j$
- [ ] La distancia mínima de $v_i$ a $v_j$
- [ ] El número de ciclos hamiltonianos
- [ ] El grado de $v_i$

Explicación breve: En grafos no dirigidos, $(A^k)_{ij}$ cuenta caminos (walks) de longitud $k$ entre $i$ y $j$.
</quiz>

---

<quiz>
Un grafo es bipartito si y sólo si:

- [x] No contiene ciclos de longitud impar
- [ ] No contiene ciclos de longitud par
- [ ] Todos los vértices tienen grado par
- [ ] Es siempre un árbol

Explicación breve: Caracterización clásica: bipartito ⇔ no hay ciclos impares.
</quiz>

---

<quiz>
Considera el grafo ponderado con vértices $\{A,B,C,D\}$ y aristas (no dirigidas) con pesos:

$$AB=1,\; AC=4,\; BC=2,\; BD=6,\; CD=3.$$

¿Cuál es el peso total de un árbol de expansión mínima (MST)?

- [ ] 5
- [x] 6
- [ ] 7
- [ ] 8

Explicación breve: Un MST puede tomar $AB(1)+BC(2)+CD(3)=6$.
</quiz>

---

<quiz>
En el mismo grafo ponderado (aristas no dirigidas) con
$AB=1,\; AC=4,\; BC=2,\; BD=6,\; CD=3$, ¿cuál es la distancia mínima de $A$ a $D$?

- [ ] 5
- [x] 6
- [ ] 7
- [ ] 10

Explicación breve: Rutas: $A\to B\to C\to D$ pesa $1+2+3=6$; es menor que $A\to C\to D=7$ o $A\to B\to D=7$.
</quiz>

---

<quiz>
En un recorrido BFS (búsqueda en anchura) en un grafo no ponderado, ¿qué propiedad garantiza respecto a un vértice origen $s$?

- [x] Encuentra distancias mínimas en número de aristas desde $s$
- [ ] Siempre encuentra un ciclo euleriano
- [ ] Siempre encuentra un ciclo hamiltoniano
- [ ] Minimiza la suma de pesos (en grafos ponderados)

Explicación breve: BFS explora por niveles y da la distancia mínima en aristas en grafos no ponderados.
</quiz>

---

<quiz>
¿Cuál(es) afirmación(es) sobre Dijkstra es/son correcta(s)?

- [x] Calcula caminos mínimos desde un origen si todos los pesos son no negativos
- [ ] Funciona correctamente aunque existan aristas de peso negativo
- [x] Puede implementarse con cola de prioridad
- [ ] Solo aplica a grafos completos

Explicación breve: Dijkstra requiere pesos no negativos; típicamente se implementa con heap/cola de prioridad.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Aristas de K_9"
    En un grafo completo $K_n$ cada par de vértices forma una arista. Por tanto

    $$|E(K_n)|=\binom{n}{2}=\frac{n(n-1)}{2}.$$

    Para $n=9$:

    $$|E(K_9)|=\frac{9\cdot 8}{2}=36.$$

???- details "Solución pregunta 2 — Ciclo euleriano"
    Teorema de Euler (grafos no dirigidos): un grafo conexo tiene **ciclo euleriano** si y sólo si **todos** sus vértices tienen grado par.

    - Si exactamente dos vértices son impares, entonces hay camino euleriano abierto (no ciclo).

???- details "Solución pregunta 3 — Camino euleriano"
    Teorema de Euler (camino): un grafo conexo tiene un **camino euleriano abierto** si y sólo si tiene **exactamente dos** vértices de grado impar.

???- details "Solución pregunta 4 — Dirac (hamiltoniano)"
    Teorema de Dirac: si $G$ es simple, $n\ge 3$ y $\delta(G)\ge \frac{n}{2}$, entonces $G$ es hamiltoniano.

    Aquí $n=10$ y $\delta(G)=5$.

    $$\frac{n}{2}=\frac{10}{2}=5,\quad \delta(G)=5\ge 5.$$

    Por tanto, $G$ es hamiltoniano.

???- details "Solución pregunta 5 — Propiedades de árboles"
    Un árbol es un grafo **conexo** y **sin ciclos**. Además cumple la relación clásica:

    $$\text{si }|V|=n\text{ entonces }|E|=n-1.$$

    Por tanto son verdaderas:

    - Un árbol con $n$ vértices tiene $n-1$ aristas.
    - Un árbol es conexo y acíclico.

???- details "Solución pregunta 6 — Matriz de adyacencia"
    Para un grafo no dirigido, si hay arista entre $v_i$ y $v_j$ entonces también entre $v_j$ y $v_i$, así $A_{ij}=A_{ji}$ y la matriz es simétrica.

    En un grafo sin lazos, no hay aristas $v_i\to v_i$, por tanto $A_{ii}=0$ para todo $i$ (diagonal nula).

    Además, la suma de la fila $i$ da el grado de $v_i$, no el número total de aristas del grafo.

???- details "Solución pregunta 7 — Interpretación de (A^2)\_{ij}"
    Se tiene:

    $$ (A^2)_{ij}=\sum_k A_{ik}A_{kj}. $$

    Cada término $A_{ik}A_{kj}$ cuenta un paso $i\to k$ y otro $k\to j$; al sumar en $k$ contamos todos los **caminos (walks) de longitud 2** de $v_i$ a $v_j$.

???- details "Solución pregunta 8 — Bipartitos"
    Un grafo es bipartito si y sólo si no contiene ciclos de longitud impar.

    - Si hay un ciclo impar, no se puede 2-colorear.
    - Si no hay ciclos impares, existe una partición (por niveles BFS) que lo 2-colorea.

???- details "Solución pregunta 9 — MST"
    Ordenamos aristas por peso: $AB(1)$, $BC(2)$, $CD(3)$, $AC(4)$, $BD(6)$.

    Aplicando Kruskal:

    - Tomamos $AB(1)$.
    - Tomamos $BC(2)$ (no forma ciclo con $AB$).
    - Tomamos $CD(3)$ (conecta $D$ sin formar ciclo).

    Ya tenemos $n-1=3$ aristas y el grafo es conexo, por tanto es un MST.

    Peso total:

    $$1+2+3=6.$$

???- details "Solución pregunta 10 — Dijkstra (distancia mínima)"
    Calculamos rutas de $A$ a $D$:

    - $A\to C\to D$: $4+3=7$.
    - $A\to B\to D$: $1+6=7$.
    - $A\to B\to C\to D$: $1+2+3=6$.

    La menor es 6.

???- details "Solución pregunta 11 — BFS"
    BFS explora el grafo por capas: primero todos los vértices a distancia 1 (en aristas) del origen, luego los de distancia 2, etc.

    Por eso devuelve distancias mínimas en número de aristas en grafos no ponderados.

???- details "Solución pregunta 12 — Dijkstra"
    Dijkstra es correcto cuando todos los pesos son **no negativos**; si hay un peso negativo puede fijar un nodo como “definitivo” demasiado pronto.

    También es común implementarlo con una cola de prioridad para extraer el vértice con menor distancia provisional.
