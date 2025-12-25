# Grados y representación matricial

Aquí conectamos el dibujo del grafo con herramientas “de cálculo”: **grados** y **matrices**.

## Grado en grafos no dirigidos

El **grado** de un vértice $v$ (en grafo no dirigido) es el número de aristas incidentes:

$$\delta(v)=\#\{e\in E: e\ \text{incide en}\ v\}.$$

### Lema del saludo (teorema fundamental)

En cualquier grafo no dirigido:

$$\sum_{v\in V} \delta(v)=2|E|.$$

!!! tip "Consecuencia típica"

    El número de vértices de grado impar siempre es **par**.

???+ details "Ejemplo 1 — Contar aristas con el lema del saludo"

    Supón que un grafo tiene grados (ordenados) $\{3,3,2,2,2\}$.

    Entonces

    $$\sum \delta(v)=3+3+2+2+2=12=2|E| \Rightarrow |E|=6.$$

## Grados en dígrafos

En un dígrafo distinguimos:

- **Grado de salida**: $\delta^+(v)$ = número de arcos que **salen** de $v$.
- **Grado de entrada**: $\delta^-(v)$ = número de arcos que **entran** en $v$.

Definiciones útiles:

- **Fuente**: $\delta^-(v)=0$.
- **Sumidero**: $\delta^+(v)=0$.

???+ details "Ejemplo 2 — Fuente y sumidero"

    Sea $E=\{a\to b,\ a\to c,\ a\to d,\ b\to c,\ d\to c,\ e\to a,\ e\to d\}$.

    - Salidas: $\delta^+(a)=3,\ \delta^+(b)=1,\ \delta^+(c)=0,\ \delta^+(d)=1,\ \delta^+(e)=2$.
    - Entradas: $\delta^-(a)=1,\ \delta^-(b)=1,\ \delta^-(c)=3,\ \delta^-(d)=2,\ \delta^-(e)=0$.

    Conclusión: $e$ es **fuente** y $c$ es **sumidero**.

## Matriz de adyacencia

Si numeramos los vértices $V=\{v_1,\dots,v_n\}$, la **matriz de adyacencia** es:

$$
A=(a_{ij})\ \text{donde}\ a_{ij}=\begin{cases}
1,& \text{si hay arista } v_i v_j \\
0,& \text{si no}
\end{cases}
$$

- En grafos no dirigidos simples, $A$ es **simétrica**.
- La suma de la fila $i$ (o columna $i$) coincide con $\delta(v_i)$.

???+ details "Ejemplo 3 — Matriz de adyacencia y grados"

    Sea $V=\{1,2,3,4\}$ y $E=\{12,13,24,34\}$.

    Entonces

    $$A=\begin{pmatrix}
    0&1&1&0\\
    1&0&0&1\\
    1&0&0&1\\
    0&1&1&0
    \end{pmatrix}.$$

    Sumas por filas: $(2,2,2,2)$, por tanto todos los vértices tienen grado 2.

## Matriz de costes (red ponderada)

Una **red** es un grafo ponderado donde cada arista tiene un **peso** (coste, distancia, tiempo…).

La **matriz de costes** $C=(c_{ij})$ suele definirse como:

- $c_{ij}=$ coste de ir de $v_i$ a $v_j$ si hay conexión.
- $c_{ij}=\infty$ si no hay arista.
- $c_{ii}=0$.

!!! note "Ojo"

    Para Dijkstra, los pesos deben ser **no negativos**.

## Ejercicio resuelto

**Ejercicio.** En un grafo no dirigido, los grados son $\{1,1,2,2,4\}$. ¿Cuántas aristas tiene?

???+ details "Solución"

    Por el lema del saludo:

    $$\sum \delta(v)=1+1+2+2+4=10=2|E| \Rightarrow |E|=5.$$
