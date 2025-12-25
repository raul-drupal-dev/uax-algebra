# Definiciones — Unidad 5: Teoría de grafos

En esta página reunimos las definiciones mínimas para poder leer el resto de la unidad sin “saltos”.

## Grafo, vértices y aristas

Un **grafo** es un par ordenado

$$G=(V,E),$$

donde:

- $V$ es el conjunto de **vértices** (o nodos).
- $E$ es el conjunto de **aristas** (o lados).

En un grafo no dirigido, una arista entre $u$ y $v$ se denota $uv$ (o $\{u,v\}$).

En un grafo dirigido (dígrafo), una arista tiene orientación y se denota $u\to v$.

!!! note "Orden del grafo"

    El **orden** de un grafo es el número de vértices: $|V|$ (a veces $ord(G)$).

## Tipos de grafos

- **Grafo simple**: no tiene bucles y no tiene múltiples aristas entre el mismo par de vértices.
- **Multigrafo**: permite múltiples aristas entre el mismo par de vértices.
- **Dígrafo**: aristas orientadas (arcos).
- **Grafo completo** $K_n$: todos los pares de vértices distintos están unidos por una arista.
- **Grafo bipartito**: $V$ se parte en $V_1\cup V_2$ y solo hay aristas entre vértices de conjuntos distintos.
  En particular, el **bipartito completo** se denota $K_{n,m}$.

???+ details "Ejemplo 1 — Identificar el tipo de grafo"

    Sea 
    
    $$V=\{a,b,c,d,e\} \textit{ y } E=\{ab,ac,bc,cd,da,de\}.$$

    - No hay bucles ($aa$) ni aristas repetidas: es **simple**.
    - No hay orientación: es **no dirigido**.

## Adyacencia e incidencia

- Dos vértices $u$ y $v$ son **adyacentes** si existe una arista $uv\in E$.
- Una arista $uv$ es **incidente** en $u$ y en $v$.

!!! tip "Idea visual"

    En muchos ejercicios basta con contar “líneas que llegan/salen” en un dibujo del grafo.

## Ejercicio resuelto (rápido)

**Ejercicio.** ¿Cuántas aristas tiene el grafo completo $K_7$?

???+ details "Solución"

    En $K_n$ cada par de vértices distintos determina exactamente una arista.

    El número de pares no ordenados es:

    $$\binom{n}{2}.$$

    Para $n=7$:

    $$|E|=\binom{7}{2}=\frac{7\cdot 6}{2}=21.$$
