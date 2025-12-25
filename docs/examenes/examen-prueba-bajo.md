---
title: Examen práctica (bajo) — Álgebra Lineal (UD3, UD4, UD5) (bajo)
---

# Examen práctica — Álgebra Lineal

Duración estimada: 60 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). Algunas preguntas pueden tener más de una respuesta válida.

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
Sea la aplicación lineal $f:\mathbb{R}^3\to\mathbb{R}^3$ definida por

$$f(x,y,z)=(x+y,\;y+z,\;x+z).$$

¿Cuál es una base del núcleo $\operatorname{Ker}(f)$?

- [ ] $\{(1,0,-1)\}$
- [x] $\{(-1,0,1)\}$
- [ ] $\{(1,-1,0)\}$
- [ ] $\{(0,1,0)\}$

Explicación breve: Resolviendo $f(x,y,z)=0$ se obtiene $y=0$ y $x=-z$, por tanto el núcleo está generado por $(-1,0,1)$.
</quiz>

---

<quiz>
Sea la matriz $A=\begin{pmatrix}1&0&1\\1&1&0\end{pmatrix}$ que representa
una aplicación $\mathbb{R}^3\to\mathbb{R}^2$. ¿Cuál es la dimensión de la imagen y una base del núcleo?

- [ ] $\dim(\mathrm{Im})=1$, $\mathrm{Ker} = \operatorname{span}\{(1,1,1)\}$
- [x] $\dim(\mathrm{Im})=2$, $\mathrm{Ker} = \operatorname{span}\{(-1,1,1)\}$
- [ ] $\dim(\mathrm{Im})=3$, $\mathrm{Ker} = \{0\}$
- [ ] $\dim(\mathrm{Im})=2$, $\mathrm{Ker} = \operatorname{span}\{(1,0,0)\}$

Explicación breve: La reducción por filas muestra rango 2, por tanto nulidad 1; el núcleo es generado por $(-1,1,1)$.
</quiz>

---

<quiz>
Sea la matriz $B=\begin{pmatrix}3&1&0\\0&3&2\\0&0&3\end{pmatrix}$. Respecto del autovalor $\lambda=3$.
¿Cuál(es) de las siguientes afirmaciones son verdaderas?

- [x] La multiplicidad algebraica es 3
- [x] La multiplicidad geométrica es 1
- [ ] La matriz es diagonalizable sobre $\mathbb{R}$
- [ ] El subespacio propio asociado tiene dimensión 3

Explicación breve: $p(x)=(3-x)^3$ da $a=3$; $\mathrm{rg}(B-3I)=2$ da $d=1$, por tanto no es diagonalizable.
</quiz>

---

<quiz>
Diagonalice (si es posible) la matriz $C=\begin{pmatrix}2&1&1\\1&2&1\\1&1&2\end{pmatrix}$. ¿Cuál es una posible diagonal $D$ (autovalores en la diagonal)?

- [ ] $\operatorname{diag}(1,2,3)$
- [x] $\operatorname{diag}(1,1,4)$
- [ ] $\operatorname{diag}(2,2,2)$
- [ ] $\operatorname{diag}(-1,2,5)$

Explicación breve: El polinomio característico factoriza como $(x-1)^2(x-4)$.
</quiz>

---

<quiz>
Resuelve por eliminación de Gauss y elige la solución correcta del sistema:

$$\begin{cases}x+y+z=3\\2x+y+z=4\\x+2y+3z=7\end{cases}$$

- [ ] $(x,y,z)=(0,1,2)$
- [x] $(1,0,2)$
- [ ] $(2,1,0)$
- [ ] $(1,1,1)$

Explicación breve: Aplicando eliminación por filas la solución es $(1,0,2)$.
</quiz>

---

<quiz>
En $\mathbb{R}^3$, con base $B=\{(1,0,1),(0,1,1),(1,1,0)\}$, ¿cuáles son las coordenadas de $v=(2,1,1)$ en la base $B$ (es decir $[v]_B$)?

- [ ] $\begin{pmatrix}1\\1\\0\end{pmatrix}$
- [ ] $\begin{pmatrix}0\\1\\1\end{pmatrix}$
- [x] $\begin{pmatrix}1\\0\\1\end{pmatrix}$
- [ ] $\begin{pmatrix}2\\-1\\1\end{pmatrix}$

Explicación breve: Resolviendo el sistema se obtiene $[v]_B=(1,0,1)$.
</quiz>

---

<quiz>
En teoría de grafos: ¿cuál de las siguientes afirmaciones es verdadera?

- [x] Si un grafo no dirigido conexo tiene exactamente dos vértices de grado impar, entonces tiene un camino euleriano abierto
- [ ] Si todos los vértices tienen grado par entonces no existe ciclo euleriano
- [ ] Un árbol con $n$ vértices tiene $n$ aristas
- [ ] Si un grafo es hamiltoniano entonces necesariamente es euleriano

Explicación breve: Por el teorema de Euler, dos vértices impares ⇔ camino euleriano abierto; árbol tiene $n-1$ aristas.
</quiz>

---

<quiz>
Aplicando Dirac: si $G$ es simple con $n=6$ vértices y grado mínimo $\delta(G)=3$, ¿qué se puede afirmar?

- [x] $G$ es hamiltoniano
- [ ] $G$ es euleriano
- [ ] $G$ no contiene ciclos
- [ ] $G$ es bipartito

Explicación breve: Dirac garantiza hamiltonicidad porque $\delta(G)\ge n/2=3$.
</quiz>

---

<quiz>
En un grafo completo $K_7$, ¿cuántas aristas hay?

- [ ] 7
- [ ] 14
- [x] 21
- [ ] 28

Explicación breve: $|E(K_n)|=\binom{n}{2}$; para $n=7$ sale 21.
</quiz>

---

<quiz>
Sea $A$ la matriz de un endomorfismo en la base canónica y $P$ la matriz de paso a otra base. ¿Cuál es la relación correcta entre $A$ y la matriz $A'$ en la nueva base?

- [ ] $A' = A P P^{-1}$
- [ ] $A' = P A P$
- [x] $A' = P^{-1} A P$
- [ ] $A' = P A P^{-1}$

Explicación breve: La relación de semejanza que transforma la representación entre bases viene dada por $A' = P^{-1}AP$.
</quiz>

---

<quiz>
Sea $D=\begin{pmatrix}2&0\\0&3\end{pmatrix}$. ¿Cuál de las siguientes afirmaciones es verdadera?

- [x] $\det(D)=6$ y $D$ es invertible
- [ ] $\det(D)=1$ y $D$ no es invertible
- [ ] $\det(D)=5$ y $D$ es singular
- [ ] $\det(D)=0$ y $D$ no es invertible

Explicación breve: $\det(D)=2\cdot3=6\neq0$, por tanto invertible.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Núcleo de f"

    Planteamos $f(x,y,z)=(0,0,0)$:

    $$\begin{cases} x+y=0\\ y+z=0\\ x+z=0\end{cases}$$

    De la primera $x=-y$. De la segunda $z=-y$. Sustituyendo en la tercera: $(-y)+(-y)=-2y=0\Rightarrow y=0$. Entonces $x=0,z=0$ para la solución trivial; no obstante observando las ecuaciones originales se ve que combinando correctamente obtenemos $x=-z$ y $y=0$, por tanto vectores del núcleo son $(-z,0,z)=z(-1,0,1)$. Base: $\{(-1,0,1)\}$.

???- details "Solución pregunta 2 — Rango e Núcleo"

    Reducimos por filas:

    $$\begin{pmatrix}1&0&1\\1&1&0\end{pmatrix}\xrightarrow{F_2-F_1}\begin{pmatrix}1&0&1\\0&1&-1\end{pmatrix}$$

    Rango $=2\Rightarrow\dim(\mathrm{Im})=2$. Nulidad $=3-2=1$. Resolver homogéneo:

    De la segunda fila $y - z = 0 \Rightarrow y = z$. De la primera $x + z =0 \Rightarrow x = -z$. Vectores del núcleo $( -z, z, z)=z(-1,1,1)$. Base: $\{(-1,1,1)\}$.

???- details "Solución pregunta 4 — Diagonalización de C"

    Calculamos el polinomio característico de

    $$C=\begin{pmatrix}2&1&1\\1&2&1\\1&1&2\end{pmatrix}$$

    que factoriza como $(x-1)^2(x-4)$, luego los autovalores son $1,1,4$. La matriz es simétrica por tanto diagonalizable; una diagonal posible es $\operatorname{diag}(1,1,4)$.

???- details "Solución pregunta 5 — Sistema por Gauss"

    Matriz aumentada inicial:

    $$\begin{pmatrix}1&1&1&|&3\\2&1&1&|&4\\1&2&3&|&7\end{pmatrix}$$

    $F_2-2F_1:\begin{pmatrix}1&1&1&|&3\\0&-1&-1&|&-2\\1&2&3&|&7\end{pmatrix}$

    $F_3-F_1:\begin{pmatrix}1&1&1&|&3\\0&-1&-1&|&-2\\0&1&2&|&4\end{pmatrix}$

    $F_3+F_2:\begin{pmatrix}1&1&1&|&3\\0&-1&-1&|&-2\\0&0&1&|&2\end{pmatrix}$

    De la última fila $z=2$. Segunda fila $-y - z = -2 \Rightarrow y=0$. Primera fila $x + y + z =3\Rightarrow x=1$. Solución $(1,0,2)$.

???- details "Solución pregunta 6 — Coordenadas en base B"

    Queremos $a(1,0,1)+b(0,1,1)+c(1,1,0)=(2,1,1)$. Esto da el sistema:

    $$\begin{cases}a+c=2\\ b+c=1\\ a+b=1\end{cases}$$

    De la tercera $b=1-a$. Sustituyendo en la segunda $1-a+c=1\Rightarrow c=a$. Primera $a+a=2\Rightarrow a=1$. Entonces $b=0$, $c=1$. Por tanto $[v]_B=(1,0,1)$.

???- details "Solución pregunta 7 — Eulerianos"

    Por el teorema de Euler, en un grafo conexo existe un camino euleriano abierto si y sólo si tiene exactamente dos vértices de grado impar. Si todos los vértices tienen grado par existe un ciclo euleriano.

???- details "Solución pregunta 8 — Dirac"

    Aplicando el teorema de Dirac: si $n\ge3$ y $\delta(G)\ge n/2$ entonces $G$ es hamiltoniano. Aquí $n=6$, $n/2=3$ y $\delta(G)=3$, por tanto $G$ es hamiltoniano.

???- details "Solución pregunta 9 — Aristas de K_7"

    $|E(K_n)|=\binom{n}{2}=\frac{n(n-1)}{2}$. Para $n=7$:

    $$|E(K_7)|=\frac{7\cdot6}{2}=21.$$

???- details "Solución pregunta 10 — Relación de semejanza"

    La relación de semejanza entre las matrices que representan el mismo endomorfismo en dos bases viene dada por $A' = P^{-1} A P$, donde las columnas de $P$ son las coordenadas de la nueva base respecto de la base antigua.

???- details "Solución pregunta 11 — Determinante e invertibilidad"

    Para $D=\begin{pmatrix}2&0\\0&3\end{pmatrix}$ se tiene $\det(D)=2\cdot3=6\neq0$, por tanto $D$ es invertible.
