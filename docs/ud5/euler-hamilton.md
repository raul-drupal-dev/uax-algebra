# Grafos Eulerianos y Hamiltonianos

Esta es una de las páginas más “de examen”: la diferencia **Euler vs Hamilton**.

!!! tip "Regla mental"

    - Euler: recorre **aristas**.
    - Hamilton: visita **vértices**.

## Eulerianos (aristas)

- **Camino euleriano**: recorre todas las aristas exactamente una vez.
- **Ciclo euleriano**: recorre todas las aristas exactamente una vez y vuelve al inicio.

### Teorema de Euler (grafos no dirigidos)

Sea $G$ conexo.

- $G$ tiene **ciclo euleriano** $\Longleftrightarrow$ todos los vértices tienen grado **par**.
- $G$ tiene **camino euleriano abierto** $\Longleftrightarrow$ exactamente **dos** vértices tienen grado **impar**.

???+ details "Ejemplo 1 — Decidir si hay camino euleriano"

    Si los grados son $\{3,3,2,2,2\}$, hay exactamente dos vértices impares.

    Conclusión: existe **camino euleriano abierto**, pero no ciclo euleriano.

## Hamiltonianos (vértices)

- **Camino hamiltoniano**: visita todos los vértices una vez.
- **Ciclo hamiltoniano**: visita todos los vértices una vez y vuelve al inicio.

A diferencia de Euler, no existe un criterio tan simple necesario y suficiente en general. Se usan **condiciones suficientes**.

### Teorema de Dirac (condición suficiente)

Si $G$ es simple con $n\ge 3$ y grado mínimo $\delta(G)$, entonces:

$$\delta(G)\ge \frac{n}{2}\ \Rightarrow\ \text{$G$ es hamiltoniano.}$$

### Teorema de Ore (condición suficiente)

Si $G$ es simple con $n\ge 3$ y para todo par de vértices no adyacentes $u,v$ se cumple

$$\delta(u)+\delta(v)\ge n,$$

entonces $G$ es hamiltoniano.

???+ details "Ejemplo 2 — Aplicar Dirac"

    Si $n=6$ y $\delta(G)=3$, entonces

    $$3\ge 6/2=3,$$

    así que por Dirac el grafo es hamiltoniano.

## Ejercicio resuelto

**Ejercicio.** En un grafo conexo, hay 4 vértices de grado impar. ¿Existe camino euleriano?

???+ details "Solución"

    Por el teorema de Euler:

    - Para ciclo euleriano: 0 impares.
    - Para camino euleriano abierto: 2 impares.

    Con 4 vértices impares no existe ni ciclo ni camino euleriano que recorra todas las aristas una sola vez.
