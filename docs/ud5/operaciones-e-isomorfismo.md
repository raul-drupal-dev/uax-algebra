# Subgrafos, complemento e isomorfismo

Esta página agrupa operaciones “estructurales”: subgrafos, complemento e isomorfismo.

## Subgrafo y subgrafo inducido

Sea $G=(V,E)$.

- Un **subgrafo** $H=(V',E')$ cumple $V'\subseteq V$ y $E'\subseteq E$.
- El **subgrafo inducido** por $V'\subseteq V$, denotado $G[V']$, es el grafo cuyos vértices son $V'$ y cuyas aristas son **todas** las aristas de $G$ que conectan pares de $V'$.

!!! tip "Diferencia clave"

    En un subgrafo “normal” puedes quitar aristas a voluntad. En el inducido, **si dos vértices están en $V'$ y en el grafo original estaban unidos, en el inducido también lo están**.

## Grafo complementario

Si $G$ es simple con $|V|=n$, su **complementario** $\overline{G}$ tiene los mismos vértices y contiene exactamente las aristas que faltan para ser completo:

- $uv\in E(\overline{G})$ si y solo si $u\neq v$ y $uv\notin E(G)$.

???+ details "Ejemplo 1 — Complemento en 5 vértices"

    Si en $n=5$ el grafo $G$ tiene 6 aristas, entonces $\overline{G}$ tiene

    $$\binom{5}{2}-6=10-6=4\ \text{aristas}.$$

## Isomorfismo de grafos

Dos grafos $G=(V,E)$ y $G'=(V',E')$ son **isomorfos** si existe una biyección

$$f:V\to V'$$

tal que para cualesquiera $u,v\in V$:

$$uv\in E \ \Longleftrightarrow\ \ f(u)f(v)\in E'.$$

En pocas palabras: “mismo grafo” pero con vértices renombrados.

### Invariantes útiles (condiciones necesarias)

Si $G\cong G'$, entonces:

- $|V|=|V'|$.
- $|E|=|E'|$.
- Tienen la misma multiconjunto de grados.
- También coinciden invariantes como número de componentes conexas, etc.

!!! warning "Cuidado"

    Las condiciones anteriores son **necesarias**, pero no siempre suficientes.

???+ details "Ejemplo 2 — Argumento típico para isomorfismo"

    Si ambos grafos tienen 5 vértices y, al listar grados, obtenemos en los dos casos

    $$\{4,3,3,3,3\},$$

    entonces el vértice de grado 4 debe corresponderse con el vértice de grado 4.
    A partir de ahí, se intenta emparejar sus vecinos preservando adyacencias.

## Ejercicio resuelto

**Ejercicio.** Un grafo simple con 8 vértices tiene 10 aristas. ¿Cuántas aristas tiene el complementario?

???+ details "Solución"

    En un grafo simple con $n=8$:

    $$|E(K_8)|=\binom{8}{2}=28.$$

    Por tanto

    $$|E(\overline{G})|=28-10=18.$$
