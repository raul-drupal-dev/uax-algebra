# UD5 — Examen tipo test (Quiz)

_Estimación: 40–50 minutos. Material: ninguno. Justifica mentalmente, pero responde marcando la opción correcta._

**Instrucciones**

- Lee con calma cada pregunta.
- En preguntas de cálculo, elige el resultado correcto (no hace falta escribir el desarrollo).
- Cada pregunta vale lo mismo.

---

## Parte A — Definiciones

<quiz>
Un grafo se define como:

- [ ] Un conjunto de números y una operación
- [x] Un par $G=(V,E)$ de vértices y aristas
- [ ] Una matriz cuadrada siempre simétrica
- [ ] Un árbol con raíz

Un grafo se define por sus vértices $V$ y sus aristas $E$.
</quiz>

<quiz>
El orden de un grafo $G$ es:

- [ ] El número de aristas $|E|$
- [x] El número de vértices $|V|$
- [ ] El grado máximo
- [ ] El número de componentes conexas

Por definición, el orden es $|V|$.
</quiz>

<quiz>
En un grafo simple no dirigido, la matriz de adyacencia $A$ cumple siempre:

- [x] $A$ es simétrica
- [ ] $A$ es diagonal
- [ ] $A$ es triangular
- [ ] $A$ tiene determinante distinto de 0

Si hay arista $v_i v_j$ entonces hay arista $v_j v_i$ y por eso $a_{ij}=a_{ji}$.
</quiz>

---

## Parte B — Grados y lema del saludo

<quiz>
En un grafo no dirigido se cumple:

- [x] $\sum_{v\in V}\delta(v)=2|E|$
- [ ] $\sum_{v\in V}\delta(v)=|E|$
- [ ] $\sum_{v\in V}\delta(v)=|V|$
- [ ] $\sum_{v\in V}\delta(v)=|E|+|V|$

Lema del saludo.
</quiz>

<quiz>
Un grafo no dirigido tiene suma de grados igual a 18. Entonces el número de aristas es:

- [ ] 18
- [x] 9
- [ ] 6
- [ ] 3

$2|E|=18\Rightarrow |E|=9$.
</quiz>

<quiz>
En un grafo no dirigido, el número de vértices de grado impar es:

- [ ] Siempre impar
- [x] Siempre par
- [ ] Siempre 0
- [ ] Depende de si el grafo es bipartito

Consecuencia del lema del saludo.
</quiz>

---

## Parte C — Caminos, ciclos, conexión

<quiz>
Un camino simple es:

- [x] Un camino que no repite vértices
- [ ] Un camino que no repite aristas pero puede repetir vértices
- [ ] Un camino que recorre todas las aristas
- [ ] Un camino de longitud 1

Camino simple: no repite vértices.
</quiz>

<quiz>
En un dígrafo, “fuertemente conexo” significa:

- [ ] El grafo es conexo si ignoramos orientaciones
- [x] Hay caminos $u\to v$ y $v\to u$ para cualquier par $u,v$
- [ ] Existe un ciclo euleriano
- [ ] Todos los grados de entrada coinciden con los de salida

Es la definición estándar de fuerte conexión.
</quiz>

---

## Parte D — Eulerianos vs Hamiltonianos

<quiz>
En un grafo conexo no dirigido, existe ciclo euleriano si y solo si:

- [ ] Todos los vértices tienen grado impar
- [x] Todos los vértices tienen grado par
- [ ] Hay exactamente dos vértices de grado impar
- [ ] El grafo es completo

Teorema de Euler (versión no dirigida). Un **ciclo euleriano** recorre _todas_ las aristas exactamente una vez y vuelve al vértice inicial.

Idea de por qué exige grados pares:

- Cada vez que “entras” en un vértice por una arista, para poder seguir el recorrido tienes que “salir” por otra arista distinta.
- Por tanto, las aristas incidentes en cada vértice se emparejan (entrada–salida), lo que obliga a que $\delta(v)$ sea **par** para todo vértice.

Y al revés (suficiencia): si el grafo es conexo y todos los grados son pares, siempre se puede construir un ciclo que use todas las aristas (algoritmo de Hierholzer).
</quiz>

<quiz>
En un grafo conexo no dirigido, existe camino euleriano abierto si y solo si:

- [ ] Todos los grados son pares
- [x] Hay exactamente dos vértices de grado impar
- [ ] Hay exactamente un vértice de grado impar
- [ ] El grafo es bipartito

Teorema de Euler (camino abierto). Un **camino euleriano** recorre _todas_ las aristas exactamente una vez, pero **no tiene por qué** terminar donde empieza.

Por qué son exactamente dos vértices impares:

- En los vértices “intermedios” del recorrido, por cada entrada hay una salida (emparejamiento), así que su grado tiene que ser **par**.
- Solo el **inicio** tiene una salida “sin pareja” (sales una vez más de las que entras) y el **final** tiene una entrada “sin pareja” (entras una vez más de las que sales).
- Eso ocurre exactamente en **dos** vértices, y por eso tienen grado **impar**.

Si hubiera 0 vértices impares, entonces el recorrido puede cerrarse y sería un ciclo euleriano.
</quiz>

<quiz>
La diferencia correcta entre Euler y Hamilton es:

- [x] Euler recorre aristas; Hamilton visita vértices
- [ ] Euler visita vértices; Hamilton recorre aristas
- [ ] Ambos significan lo mismo
- [ ] Euler solo existe en árboles

Euler: aristas. Hamilton: vértices.
</quiz>

<quiz>
Teorema de Dirac: si $G$ es simple con $n\ge 3$ y $\delta(G)\ge n/2$, entonces:

- [x] $G$ es hamiltoniano (condición suficiente)
- [ ] $G$ es euleriano
- [ ] $G$ no puede ser hamiltoniano
- [ ] $G$ es bipartito

Dirac da una condición suficiente para Hamilton.
</quiz>

---

## Parte E — Árboles

<quiz>
Un árbol es:

- [ ] Un grafo con todos los grados pares
- [x] Un grafo simple, conexo y acíclico
- [ ] Un grafo completo
- [ ] Un dígrafo con una fuente

Definición de árbol.
</quiz>

<quiz>
Si un árbol tiene $n$ vértices, entonces su número de aristas es:

- [ ] $n$
- [x] $n-1$
- [ ] $n+1$
- [ ] $2n$

Propiedad básica de árboles.
</quiz>

<quiz>
Si a un árbol le añadimos una arista más (entre dos vértices existentes), entonces:

- [ ] Se vuelve no conexo
- [x] Se crea exactamente un ciclo
- [ ] No cambia nada
- [ ] Se convierte en grafo bipartito

Añadir una arista a un árbol siempre crea un ciclo.
</quiz>

---

## Parte F — Redes (MST y Dijkstra)

<quiz>
Kruskal construye un MST:

- [x] Ordenando aristas por peso y añadiendo si no forma ciclo
- [ ] Añadiendo siempre el vértice más cercano al origen
- [ ] Buscando un camino euleriano
- [ ] Eliminando aristas de mayor peso hasta quedar conexo

Kruskal: aristas en orden creciente, evitando ciclos.
</quiz>

<quiz>
Prim construye un MST:

- [ ] Ordenando aristas globalmente y añadiendo si no forma ciclo
- [x] Creciendo desde un conjunto conectado y añadiendo la arista más barata que saca a un vértice nuevo
- [ ] Calculando caminos mínimos desde un origen
- [ ] Buscando un ciclo hamiltoniano

Prim crece por frontera del conjunto conectado.
</quiz>

<quiz>
Dijkstra es válido (garantiza caminos mínimos) si:

- [ ] Hay pesos negativos
- [x] Todos los pesos son no negativos
- [ ] El grafo es completo
- [ ] El grafo es bipartito

Con pesos negativos Dijkstra puede fallar.
</quiz>

<quiz>
En un MST de un grafo conexo con $n$ vértices, el número de aristas es:

- [ ] $n$
- [x] $n-1$
- [ ] $\binom{n}{2}$
- [ ] Depende del algoritmo

Todo árbol de expansión tiene $n-1$ aristas.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->
