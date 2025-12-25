# Caminos, ciclos y conexión

En esta página diferenciamos conceptos de recorrido y conectividad, que son base para Euler, Hamilton y búsquedas.

## Caminos y longitud

Una **cadena/camino** es una sucesión alterna de vértices y aristas:

$$v_0, e_1, v_1, e_2,\dots,e_k,v_k.$$

- La **longitud** es $k$ (número de aristas).
- Un **camino simple** no repite vértices.

## Circuito y ciclo

- **Circuito**: camino cerrado ($v_0=v_k$) que no repite aristas.
- **Ciclo**: circuito que no repite vértices salvo el primero/último.

!!! tip "Confusión típica"

    Circuito permite repetir vértices (si no repite aristas). Ciclo no.

???+ details "Ejemplo 1 — Circuito pero no ciclo"

    Si un recorrido vuelve a un vértice intermedio (repitiéndolo) pero no repite aristas,
    es circuito, pero no ciclo.

## Conexión y componentes

Un grafo no dirigido es **conexo** si hay un camino entre cualquier par de vértices.

Si no es conexo, se descompone en **componentes conexas** (subgrafos máximos conexos).

## Conexión fuerte en dígrafos

Un dígrafo es **fuertemente conexo** si para cualquier par $u,v$ existen caminos $u\to v$ y $v\to u$.

!!! note "No confundir"

    En dígrafos se distingue “conexo” (ignorando orientaciones) de “fuertemente conexo” (respetando orientaciones).

## Ejercicio resuelto

**Ejercicio.** Un grafo no dirigido tiene 12 vértices y está formado por 3 componentes conexas. ¿Puede ser un árbol?

???+ details "Solución"

    Un árbol (por definición) es **conexo** y acíclico.

    Si hay 3 componentes conexas, el grafo **no es conexo**, luego no puede ser un árbol.
