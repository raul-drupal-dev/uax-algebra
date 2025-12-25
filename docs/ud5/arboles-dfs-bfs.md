# Árboles, DFS y BFS

Los árboles son grafos “sin ciclos” que aparecen en muchos problemas (conexión mínima, jerarquías, recorridos…).

## Árbol

Un **árbol** es un grafo simple, **conexo** y **acíclico**.

Propiedades equivalentes (muy usadas en ejercicios):

- Si $G$ es un árbol con $n=|V|$ entonces:

$$|E|=n-1.$$

- Entre dos vértices cualesquiera existe un **único** camino simple.

???+ details "Demostración breve de $|E|=n-1$"

    Es una propiedad clásica: en un árbol, añadir una arista crea un ciclo y quitar una arista desconecta.
    Se puede probar por inducción en $n$ eliminando una hoja.

## Árbol enraizado (arborescencia)

Cuando fijamos una **raíz**, aparecen términos:

- padre/hijo, ascendientes/descendientes
- **nivel**
- **hoja**: vértice sin hijos
- **vértice interno**: no es hoja

!!! note "Contexto"

    Esto se usa mucho para describir recorridos DFS/BFS como “árboles de expansión”.

## Árbol de expansión (generador)

Un **árbol de expansión** de un grafo conexo $G$ es un subgrafo que:

- contiene todos los vértices de $G$,
- es un árbol.

## DFS (búsqueda en profundidad)

DFS explora “todo lo que pueda” antes de retroceder.

```text
Idea: usa una pila (LIFO)
- marca el vértice inicial
- avanza a un vecino no visitado, apílalo
- si te quedas sin vecinos nuevos, desapila (retrocede)
```

???+ details "Ejemplo (esquema) — DFS"

    Empieza en $a$:

    - Visita $a$.
    - Elige un vecino no visitado (por ejemplo $b$), visita $b$.
    - Sigue hasta que un vértice no tenga vecinos nuevos; entonces retrocede.

    El conjunto de aristas usadas al descubrir vértices forma un árbol de expansión.

## BFS (búsqueda en anchura)

BFS explora por “capas”: primero los vecinos a distancia 1, luego distancia 2, etc.

```text
Idea: usa una cola (FIFO)
- encolas el origen
- sacas el primero, encolas sus vecinos no visitados
- repites
```

!!! tip "Cuándo usar BFS"

    En grafos no ponderados, BFS encuentra caminos de longitud mínima (mínimo número de aristas).

## Ejercicio resuelto

**Ejercicio.** Si un grafo es un árbol con $n=15$ vértices, ¿cuántas aristas tiene?

???+ details "Solución"

    En un árbol $|E|=n-1$, luego:

    $$|E|=15-1=14.$$
