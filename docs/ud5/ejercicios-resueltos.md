# Ejercicios resueltos — Unidad 5

Ejercicios para repasar los puntos típicos de examen (conteos, Euler/Hamilton, árboles y redes).

---

## 1) Grados y número de aristas

**Ejercicio 1.** En un grafo no dirigido los grados son $\{3,3,3,2,1,1\}$. ¿Cuántas aristas tiene? ¿Cuántos vértices de grado impar hay?

???+ details "Solución"

    Suma de grados:

    $$3+3+3+2+1+1=13.$$

    En un grafo no dirigido, $\sum \delta(v)=2|E|$ debe ser par.

    Como 13 es impar, **esa lista de grados no puede corresponder a ningún grafo no dirigido**.

    Además, los grados impares aquí serían 5 (tres 3 y dos 1), y el número de vértices impares debe ser par.

!!! tip "Qué aprender"

    Antes de calcular nada, comprueba que los datos son compatibles con el lema del saludo.

---

## 2) Eulerianos

**Ejercicio 2.** Un grafo conexo tiene grados $\{4,4,2,2,2,2\}$. ¿Tiene ciclo euleriano? ¿Camino euleriano abierto?

???+ details "Solución"

    Todos los grados son pares.

    - Sí tiene **ciclo euleriano**.
    - Y, por tanto, también existe camino euleriano (cerrado).

---

## 3) Complementario

**Ejercicio 3.** Un grafo simple tiene $n=9$ vértices y $|E|=12$ aristas. ¿Cuántas aristas tiene el complementario?

???+ details "Solución"

    En $K_9$ hay

    $$\binom{9}{2}=36\ \text{aristas}.$$

    Luego

    $$|E(\overline{G})|=36-12=24.$$

---

## 4) Árboles

**Ejercicio 4.** Sea $T$ un árbol con 20 vértices. Si quitamos una arista, ¿qué ocurre? ¿Cuántas componentes conexas quedan?

???+ details "Solución"

    En un árbol, cualquier arista es un puente: al quitarla el grafo deja de ser conexo.

    Quedan exactamente **2** componentes conexas.

---

## 5) Dijkstra (paso inicial)

**Ejercicio 5.** En una red con origen $a$, si actualmente $D(a)=0$, $D(b)=2$, $D(c)=4$ y desde $b$ hay arista a $c$ de peso 1, ¿se actualiza $D(c)$?

???+ details "Solución"

    Relajación por $b$:

    $$D'(c)=\min(D(c),\ D(b)+w(b,c))=\min(4,\ 2+1)=3.$$

    Sí: se actualiza a $D(c)=3$.
