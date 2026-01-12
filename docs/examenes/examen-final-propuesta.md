---
title: Examen final propuesto — Álgebra Lineal (UD2, UD3, UD4, UD5) (medio)
---

Duración estimada: 90 minutos.

Lee con atención y marca la(s) respuesta(s) correcta(s). Algunas preguntas pueden tener más de una respuesta válida.

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<!-- Comienzo de preguntas -->

<quiz>
Sea $V=\mathbb{R}^3$ y

$$
A=\begin{pmatrix}1 & 2 & 0 \\\\ 0 & 1 & 1 \\\\ 0 & 0 & 1\end{pmatrix}
$$

¿Cuál es el núcleo de $A - I$?

- [ ] $\{(x,y,z)\in\mathbb{R}^3 : x=0, y=0\}$
- [ ] $\{t(-2,1,0) + s(0,-1,1) : s,t\in\mathbb{R}\}$
- [x] $\{t(1,0,0) : t\in\mathbb{R}\}$
- [ ] $\{(0,0,0)\}$

Explicación: Resolver $(A-I)v=0$ da $y=0$, $z=0$, $x$ libre; núcleo generado por $(1,0,0)$.
</quiz>

<quiz>
Sea $T:\mathbb{R}^2\to\mathbb{R}^2$ dada por la matriz en la base estándar $B$, con

$$
\;B=\begin{pmatrix}2 & 1 \\\\ 0 & 3\end{pmatrix}
$$

¿Cuál es la imagen de $T$?

- [x] $\operatorname{Span}\{(2,0),(1,3)\}$
- [ ] $\operatorname{Span}\{(1,0)\}$
- [ ] $\operatorname{Span}\{(0,1)\}$
- [ ] Todo $\mathbb{R}^2$

Explicación: Las columnas de la matriz generan la imagen; aquí son linealmente independientes, por tanto la imagen es $\mathbb{R}^2$, y las columnas dadas la describen.
</quiz>

<quiz>
Dado el sistema homogéneo con matriz aumentada (coeficientes) 
$$
\begin{pmatrix}1 & 2 & -1 \\\\ 2 & 4 & -2\end{pmatrix}
$$

¿cuál es la dimensión del espacio de soluciones?

- [ ] 0
- [ ] 1
- [x] 2
- [ ] 3

Explicación: Las filas son linealmente dependientes (la segunda es $2\cdot$ la primera), rango $=1$, incógnitas $=3$ ⇒ dimensión del núcleo $=2$.
</quiz>

<quiz>
Sea $B=\{(1,1),(1,-1)\}\subset\mathbb{R}^2$. ¿Cuál es la matriz de cambio de base $P$ de $B$ a la base canónica y su inversa $P^{-1}$ aplicada al vector $(2,0)^\top$?

- [x] $P=\begin{pmatrix}1&1\\1&-1\end{pmatrix}$ (columnas), $P^{-1}(2,0)^\top = (1,1)^\top$
- [ ] $P=\begin{pmatrix}1&0\\0&1\end{pmatrix}$, $P^{-1}(2,0)^\top = (2,0)^\top$
- [ ] $P=\begin{pmatrix}1&1\\1&-1\end{pmatrix}$, $P^{-1}(2,0)^\top = (0,2)^\top$
- [ ] $P=\begin{pmatrix}1&-1\\1&1\end{pmatrix}$, $P^{-1}(2,0)^\top = (1,-1)^\top$

Explicación: $P$ tiene columnas los vectores de $B$; $P^{-1}$ transforma coordenadas canónicas a $B$.
</quiz>

<quiz>
Sea

$$
A=\begin{pmatrix}0 & -1 \\\\ 1 & 0\end{pmatrix}
$$

¿Cuál(es) son los valores propios de $A$ y su multiplicidad algebraica?

- [x] $\pm i$, cada uno con multiplicidad algebraica 1
- [ ] $0$ con multiplicidad 2
- [ ] $1,-1$ con multiplicidad 1
- [ ] No tiene valores propios en $\mathbb{C}$

Explicación: La matriz representa rotación de $90^\circ$; su polinomio característico es $\lambda^2+1$, raíces $\pm i$.
</quiz>

<quiz>
Sea

$$
A=\begin{pmatrix}4 & 1 & 0 \\\\ 0 & 4 & 0 \\\\ 0 & 0 & 3\end{pmatrix}
$$

¿Es $A$ diagonalizable sobre $\mathbb{R}$?

- [ ] Sí, porque tiene 3 valores propios distintos
- [x] No, no es diagonalizable sobre $\mathbb{R}$ porque tiene valor propio $4$ con multiplicidad algebraica 2 pero solo un eigenvector real asociado
- [ ] Sí, porque su polinomio minimal es producto de lineales reales
- [ ] No, porque 3 no es múltiplo de 4

Explicación: Aunque hay valores propios $4$ (mult 2) y $3$, es necesario comprobar la dimensión del espacio propio asociado a $4$; la forma muestra sólo un vector propio real.
</quiz>

<quiz>
En un grafo no dirigido con 6 vértices y 5 aristas, determine cuál de las siguientes afirmaciones es cierta sobre la existencia de caminos Eulerianos.

- [ ] Siempre existe un camino Euleriano
- [x] Solo puede existir camino Euleriano si exactamente 0 o 2 vértices tienen grado impar
- [ ] Siempre existe circuito Euleriano
- [ ] Nunca existe camino Euleriano si el grafo es conexo

Explicación: Teorema de Euler: camino Euler existe si 0 o 2 vértices de grado impar (y grafo conectado).
</quiz>

<quiz>
Sea $f:\mathbb{R}^3\to\mathbb{R}^2$ definida por la matriz

$$
\begin{pmatrix}1 & 0 & 2 \\\\ 0 & 1 & -1\end{pmatrix}
$$

¿Cuál es una base para el núcleo de $f$?

- [ ] $\{(1,0,0)\}$
- [x] $\{(-2,1,1)\}$
- [ ] $\{(2,1,0),(0,1,-1)\}$
- [ ] Ninguna de las anteriores

Explicación: Resolver sistema da vector libre $t(-2,1,1)$, núcleo de dimensión 1.
</quiz>

<quiz>
Sea A una matriz simétrica 3x3 con autovalores 1,2,2. ¿Qué se puede afirmar sobre la diagonalización ortogonal de A?

- [x] A es diagonalizable por una matriz ortogonal; la multiplicidad geométrica del autovalor 2 es 2
- [ ] A no es diagonalizable porque hay autovalores repetidos
- [ ] A solo admite diagonalización si tiene autovectores ortogonales para 1 y 2
- [ ] A es singular

Explicación: Las matrices simétricas son diagonalizables ortogonalmente; multiplicidad algebraica 2 se refleja en espacio propio de dimensión 2.
</quiz>

<quiz>
Sea el polinomio característico $p(\lambda)=\lambda(\lambda-2)^2(\lambda+1)$. ¿Cuál es la traza de la matriz correspondiente?

- [ ] 0
- [ ] 1
- [x] 3
- [ ] -1

Explicación: La traza es la suma de raíces contadas con multiplicidad: $0+2+2+(-1)=3$.
</quiz>

<quiz>
Dada la matriz cuadrada $3\times3$ $M$ con determinante $6$, ¿qué valor puede tomar el determinante de $2M$?

- [ ] 12
- [x] 48
- [ ] 6
- [ ] 24

Explicación: Para $n=3$, $\det(2M)=2^n\det(M)=2^3\cdot6=8\cdot6=48$.
</quiz>

<quiz>
Sea una transformación lineal que en una base tiene matriz

$$
\begin{pmatrix}1 & 1 & 0 \\\\ 0 & 1 & 1 \\\\ 0 & 0 & 1\end{pmatrix}
$$

Indique la naturaleza (invariante/diagonalizable) y la dimensión del espacio propio correspondiente al valor propio $1$.

- [x] No es diagonalizable; el valor propio $1$ tiene multiplicidad algebraica $3$ y dimensión geométrica $1$
- [ ] Es diagonalizable; multiplicidad geométrica $3$
- [ ] No es diagonalizable; multiplicidad geométrica $2$
- [ ] Es diagonalizable; multiplicidad geométrica $1$

Explicación: La matriz es Jordan con una única cadena, por tanto geométricamente solo un eigenvector.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Núcleo de A-I"

    Resolución: Calculamos $A-I = \begin{pmatrix}0&2&0\\0&0&1\\0&0&0\end{pmatrix}$.

    Resolver $(A-I)v=0$ con $v=(x,y,z)$: primera ecuación $2y=0 \Rightarrow y=0$, segunda $z=0 \Rightarrow z=0$, tercera trivial. $x$ es libre.

    Núcleo generado por $(1,0,0)$.

???- details "Solución pregunta 2 — Imagen de T"

    Las columnas de la matriz son $(2,0)^\top$ y $(1,3)^\top$; su determinante es $6\neq0$, por tanto son una base de $\mathbb{R}^2$. Imagen = $\mathbb{R}^2 = \operatorname{Span}\{(2,0),(1,3)\}$.

???- details "Solución pregunta 3 — Dimensión soluciones"

    Reducción por filas: la segunda fila es $2\cdot$(primera), rango $=1$. Con 3 incógnitas ⇒ dimensión del espacio de soluciones $=3-1=2$.

???- details "Solución pregunta 4 — Cambio de base"

    $P$ tiene columnas los vectores de $B$: $P= \begin{pmatrix}1&1\\1&-1\end{pmatrix}$.

    Determinante $\det(P) = 1 \cdot (-1) - 1 \cdot 1 = -1 - 1 = -2$.

    Adjunta $\operatorname{adj}(P) = \begin{pmatrix}-1 & -1 \\ -1 & 1\end{pmatrix}^\top = \begin{pmatrix}-1 & -1 \\ -1 & 1\end{pmatrix}$.

    $P^{-1} = \frac{1}{\det(P)} \operatorname{adj}(P) = \frac{1}{-2} \begin{pmatrix}-1 & -1 \\ -1 & 1\end{pmatrix} = \begin{pmatrix}1/2 & 1/2 \\ 1/2 & -1/2\end{pmatrix}$.

    Aplicado a $(2,0)^\top$: $\begin{pmatrix}1/2 & 1/2 \\ 1/2 & -1/2\end{pmatrix} \begin{pmatrix}2 \\ 0\end{pmatrix} = \begin{pmatrix}1 \\ 1\end{pmatrix} = (1,1)^\top$.

???- details "Solución pregunta 5 — Valores propios de A"

    Primero, calculamos $\lambda I - A$:

    $$
    \lambda I - A = \begin{pmatrix}\lambda & 0 \\ 0 & \lambda\end{pmatrix} - \begin{pmatrix}0 & -1 \\ 1 & 0\end{pmatrix} = \begin{pmatrix}\lambda & 1 \\ -1 & \lambda\end{pmatrix}
    $$

    Ahora, el determinante del polinomio característico:

    $$
    \det(\lambda I - A) = \begin{vmatrix}\lambda & 1 \\ -1 & \lambda\end{vmatrix} = \lambda \cdot \lambda - (1) \cdot (-1) = \lambda^2 + 1
    $$

    Las raíces del polinomio característico $\lambda^2 + 1 = 0$ son las soluciones a $\lambda^2 = -1$, es decir, $\lambda = \pm \sqrt{-1} = \pm i$.

    Cada raíz $\pm i$ aparece una vez en el polinomio, por lo que la multiplicidad algebraica de cada una es 1.

???- details "Solución pregunta 6 — Diagonalizabilidad de A"

    Primero, recordemos que una matriz es diagonalizable si para cada autovalor, la multiplicidad algebraica (cuántas veces aparece en el polinomio característico) coincide con la multiplicidad geométrica (dimensión del espacio propio).

    La matriz $A$ tiene autovalores $4$ (multiplicidad algebraica 2) y $3$ (multiplicidad algebraica 1).

    Para comprobar si es diagonalizable, necesitamos verificar el espacio propio para $\lambda = 4$.

    Calculamos $A - 4I$:

    $$
    A - 4I = \begin{pmatrix}4-4 & 1-0 & 0-0 \\ 0-0 & 4-4 & 0-0 \\ 0-0 & 0-0 & 3-4\end{pmatrix} = \begin{pmatrix}0 & 1 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & -1\end{pmatrix}
    $$

    Ahora, resolvemos el sistema $(A - 4I)v = 0$, donde $v = (x, y, z)^\top$:

    - Primera ecuación: $0 \cdot x + 1 \cdot y + 0 \cdot z = 0 \Rightarrow y = 0$
    - Segunda ecuación: $0 \cdot x + 0 \cdot y + 0 \cdot z = 0 \Rightarrow 0 = 0$ (siempre cierta)
    - Tercera ecuación: $0 \cdot x + 0 \cdot y + (-1) \cdot z = 0 \Rightarrow -z = 0 \Rightarrow z = 0$

    Por tanto, $y = 0$, $z = 0$, y $x$ es libre. El espacio propio está generado por $(1, 0, 0)$, por lo que su dimensión es 1.

    Dado que la multiplicidad algebraica de $4$ es 2, pero la geométrica es 1, no hay suficientes vectores propios linealmente independientes para diagonalizar $A$ sobre $\mathbb{R}$. Por lo tanto, $A$ no es diagonalizable sobre $\mathbb{R}$.

???- details "Solución pregunta 7 — Caminos Eulerianos"

    Por teorema de Euler: en grafo conexo, un camino Euleriano existe si y solo si $0$ o $2$ vértices tienen grado impar. Aplicar este criterio al grafo dado.

???- details "Solución pregunta 8 — Núcleo de f"

    Sistema: $x+2z=0$, $y-z=0$ → $z=t$, $x=-2t$, $y=t$ → vector generador $(-2,1,1)$. Núcleo = $\operatorname{Span}\{(-2,1,1)\}$.

???- details "Solución pregunta 9 — Diagonalización ortogonal"

    Por el teorema espectral, $A$ es simétrica → existe matriz ortogonal $Q$ tal que $Q^\top A Q = D$ diagonal; la multiplicidad algebraica $2$ implica dimensión del subespacio propio $2$.

???- details "Solución pregunta 10 — Traza"

    Primero, recordemos que la **traza** de una matriz cuadrada $A$ (denotada como $\operatorname{tr}(A)$) es la suma de los elementos de su diagonal principal. Por ejemplo, para una matriz $3 \times 3$, $\operatorname{tr}(A) = a_{11} + a_{22} + a_{33}$.

    Una propiedad fundamental de las matrices es que la traza es igual a la **suma de sus autovalores**, contados con su multiplicidad algebraica. Los autovalores son las raíces del polinomio característico $p(\lambda) = \det(\lambda I - A)$.

    Dado el polinomio característico $p(\lambda) = \lambda (\lambda - 2)^2 (\lambda + 1)$, las raíces (autovalores) se obtienen resolviendo $p(\lambda) = 0$:

    - $\lambda = 0$ (multiplicidad 1, ya que aparece una vez)
    - $\lambda - 2 = 0 \Rightarrow \lambda = 2$ (multiplicidad 2, ya que $(\lambda - 2)^2$ indica raíz doble)
    - $\lambda + 1 = 0 \Rightarrow \lambda = -1$ (multiplicidad 1)

    La suma de los autovalores, contados con multiplicidad, es: $0$ (una vez, ya que multiplicidad 1) + $2$ (dos veces, ya que multiplicidad 2) + $(-1)$ (una vez, ya que multiplicidad 1) = $0 + 2 + 2 + (-1) = 3$.

    Nota: No se suma la multiplicidad algebraica en sí, sino que se repite el valor del autovalor tantas veces como indique su multiplicidad algebraica.

???- details "Solución pregunta 11 — Determinante de 2M"

    Para una matriz cuadrada $n \times n$, el determinante de un múltiplo escalar $kA$ es $k^n$ veces el determinante de $A$. Esto se debe a que el determinante es una función multilineal alternada: multiplicar una fila por $k$ multiplica el determinante por $k$, y si se hace para todas las filas, se multiplica por $k^n$.

    Aquí, $n=3$, $k=2$, y $\det(M)=6$, por lo que $\det(2M) = 2^3 \cdot 6 = 8 \cdot 6 = 48$.

???- details "Solución pregunta 12 — Naturaleza Jordan"

    La forma de Jordan es una representación canónica de una matriz en términos de bloques de Jordan, que son matrices de la forma:

    $$
    J = \begin{pmatrix}
    \lambda & 1 & 0 \\
    0 & \lambda & 1 \\
    0 & 0 & \lambda
    \end{pmatrix}
    $$

    para un eigenvalor $\lambda$.

    La multiplicidad algebraica de $\lambda$ es el tamaño total de todos los bloques de Jordan asociados a $\lambda$ (aquí, 3).

    La multiplicidad geométrica es el número de bloques de Jordan para $\lambda$ (aquí, 1, ya que es un solo bloque de tamaño 3).

    Una matriz es diagonalizable si y solo si la multiplicidad algebraica coincide con la geométrica para cada eigenvalor. Aquí, para $\lambda=1$, algebraica = 3, geométrica = 1, por lo que no es diagonalizable.
