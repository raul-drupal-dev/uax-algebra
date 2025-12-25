# Redes: MST (Prim/Kruskal) y Dijkstra

Aquí vemos algoritmos voraces (greedy) para optimizar conexiones y rutas.

!!! note "Terminología"

    - **Red**: grafo ponderado.
    - Peso = coste/distancia/tiempo.

## Árbol generador de mínimo coste (MST)

Un **árbol generador mínimo** (MST) es un árbol de expansión cuya suma de pesos es mínima.

### Prim (idea)

Prim construye el MST creciendo desde un conjunto de vértices ya conectados:

- empieza en un vértice cualquiera
- en cada paso, añade la arista de menor peso que conecte el conjunto actual con un vértice nuevo

### Kruskal (idea)

Kruskal construye el MST eligiendo aristas por orden creciente de peso:

- ordena las aristas por peso
- añade una arista si **no** crea ciclo
- se detiene cuando hay $n-1$ aristas

???+ details "Ejemplo 1 — Kruskal (tabla corta)"

    Aristas ordenadas por peso:

    $$bc(3),\ ce(4),\ ac(5),\ bd(6),\ cf(7),\dots$$

    Vamos añadiendo sin formar ciclos hasta completar $n-1$ aristas.

## Dijkstra (caminos mínimos)

Dijkstra calcula el camino mínimo desde un origen a todos los vértices, si los pesos son **no negativos**.

```text
Esquema:
- distancia(origen)=0, resto=infinito
- repetir:
  - elegir vértice no cerrado con menor distancia provisional
  - relajar (actualizar) a sus vecinos
```

!!! warning "Limitación"

    Si hay pesos negativos, Dijkstra puede fallar.

???+ details "Ejemplo 2 — Primeras iteraciones (a modo plantilla)"

    Distancias iniciales: $D(a)=0$ y el resto $\infty$.

    - Eliges el vértice con menor distancia provisional.
    - Actualizas vecinos: $D(v)=\min(D(v),\ D(u)+w(u,v))$.

## Ejercicio resuelto

**Ejercicio.** ¿Cuántas aristas tiene cualquier MST de un grafo conexo con $n$ vértices?

???+ details "Solución"

    Un MST es un árbol de expansión.

    Todo árbol con $n$ vértices tiene $n-1$ aristas, luego el MST tiene $n-1$ aristas.
