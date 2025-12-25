# UD4 — Examen tipo test (Quiz)

_Estimación: 35–45 minutos. Material: ninguno. Justifica mentalmente, pero responde marcando la opción correcta._

**Instrucciones**

- Lee con calma cada pregunta.
- En preguntas de cálculo, elige el resultado correcto (no hace falta escribir el desarrollo).
- Cada pregunta vale lo mismo.

---

## Parte A — Definiciones y criterios (teoría)

<quiz>
¿Qué significa que una matriz $A\in M_n(\mathbb{F})$ sea diagonalizable sobre $\mathbb{F}$?

- [ ] Que $A$ es simétrica
- [x] Que existe una base formada por vectores propios de $A$
- [ ] Que $A$ es triangular
- [ ] Que $A$ tiene $n$ valores propios distintos

Equivalente: existe una matriz invertible $P$ tal que $P^{-1}AP$ es diagonal, es decir, $\mathbb{F}^n$ tiene una base de autovectores.
</quiz>

<quiz>
Si una matriz $A$ tiene $n$ valores propios (contando multiplicidad algebraica) distintos en un cuerpo, entonces:

- [x] $A$ es diagonalizable
- [ ] $A$ no es diagonalizable
- [ ] $A$ tiene siempre forma de Jordan no trivial
- [ ] Ninguna de las anteriores

Valores propios distintos garantizan independencia lineal de autovectores asociados, por tanto diagonalizable.
</quiz>

<quiz>
El polinomio minimal $m_A(x)$ de una matriz $A$ sirve para:

- [ ] Calcular el determinante únicamente
- [x] Dar la máxima potencia de cada factor $(x-\lambda)$ necesaria en la forma de Jordan
- [ ] Hallar directamente la matriz de diagonalización
- [ ] Establecer si $A$ es simétrica

El polinomio minimal refleja la máxima longitud de cadenas de Jordan para cada valor propio.
</quiz>

---

## Parte B — Cálculo de autovalores y diagonalización (práctica)

<quiz>
Sea $A=\begin{pmatrix}2&1\\0&3\end{pmatrix}$. ¿Cuáles son sus autovalores?

- [x] $2$ y $3$
- [ ] $2$ y $2$
- [ ] $3$ y $3$
- [ ] $0$ y $5$

Autovalores: raíces de $\det(A-\lambda I)=(2-\lambda)(3-\lambda)$.
</quiz>

<quiz>
Sea $A=\begin{pmatrix}4&1&0\\0&4&0\\0&0&5\end{pmatrix}$. ¿Es $A$ diagonalizable?

- [x] No, porque la multiplicidad geométrica del autovalor $4$ es 1 (solo un autovector independiente)
- [ ] Sí, porque tiene una base de autovectores
- [ ] No, porque tiene valores propios repetidos
- [ ] Solo si cambiamos de cuerpo

Calculando $A-4I=\begin{pmatrix}0&1&0\\0&0&0\\0&0&1\end{pmatrix}$ las ecuaciones del espacio propio son $y=0$ y $z=0$, por tanto los autovectores asociados a $4$ son de la forma $(x,0,0)$ (dimensión 1). Como la multiplicidad algebraica de $4$ es 2 pero su multiplicidad geométrica es 1, no hay suficientes autovectores independientes y $A$ no es diagonalizable (existe un bloque de Jordan de tamaño 2 asociado a $4$).
</quiz>

<quiz>
Calcula el polinomio característico de $B=\begin{pmatrix}1&2&0\\0&1&0\\0&0&3\end{pmatrix}$.

- [x] $(1-\lambda)^2(3-\lambda)$
- [ ] $(1-\lambda)^3$
- [ ] $(1-\lambda)(3-\lambda)^2$
- [ ] $(3-\lambda)^3$

Determinante de $B-\lambda I$ es $\det(B-\lambda I)=(1-\lambda)^2(3-\lambda)$, por tanto el polinomio característico es $(1-\lambda)^2(3-\lambda)$.
</quiz>

<quiz>
Si $A$ tiene polinomio minimal $m_A(x)=(x-2)^2(x-3)$, ¿es $A$ diagonalizable?

- [ ] Sí, siempre
- [x] No, no es diagonalizable (porque aparece cuadrado en el minimal)
- [ ] Solo si $\dim A=2$
- [ ] Solo si $2\neq3$

Presencia de $(x-2)^2$ en $m_A$ indica cadena de Jordan de longitud >1, por tanto no diagonalizable.
</quiz>

---

## Parte C — Forma de Jordan y ejemplos (teoría + práctica)

<quiz>
Una matriz en forma de Jordan asociada a valor propio $\lambda$ y bloque de tamaño 3 tiene en la diagonal principal y superdiagonal:

- [ ] Tres ceros en la superdiagonal
- [ ] $\lambda$ en la diagonal y ceros en la superdiagonal
- [x] $\lambda$ en la diagonal y unos en la superdiagonal
- [ ] $\lambda$ en la diagonal y $\lambda$ en la superdiagonal

Un bloque de Jordan $J_3(\lambda)$ tiene $\lambda$ en la diagonal y $1$ en la superdiagonal inmediata.
</quiz>

<quiz>
Si una matriz $A$ tiene bloque de Jordan $J_2(5)$ y otro $J_1(5)$ (ambos con autovalor $5$), su multiplicidad algebraica es 3 y su multiplicidad geométrica es:

- [ ] 1
- [x] 2
- [ ] 3
- [ ] 0

Geométrica = número de bloques de Jordan = 2.
</quiz>

---

## Parte D — Ejercicios de diagonalización y cálculo

<quiz>
Diagonaliza (si es posible) la matriz $C=\begin{pmatrix}0&1\\-2&3\end{pmatrix}$. ¿Cuál es el conjunto de autovalores?

- [ ] $\{0,3\}$
- [ ] $\{-1,2\}$
- [x] $\{1,2\}$
- [ ] $\{3,-2\}$

Calculando $\det(C-\lambda I)=\lambda^2-3\lambda+2=(\lambda-1)(\lambda-2)$.
</quiz>

<quiz>
Sea $D=\begin{pmatrix}2&0&0\\0&2&1\\0&0&2\end{pmatrix}$. ¿Cuál es la multiplicidad geométrica del autovalor $2$?

- [ ] 1
- [x] 2
- [ ] 3
- [ ] 0

El espacio propio tiene dimensión igual al número de bloques de Jordan; aquí hay dos bloques (uno 2x2 y uno 1x1) implicando geométrica 2.
</quiz>

<quiz>
Sea $E=\begin{pmatrix}1&1&0\\0&1&1\\0&0&1\end{pmatrix}$. ¿Cuál es su polinomio minimal?

- [ ] $(x-1)$
- [ ] $(x-1)^2$
- [x] $(x-1)^3$
- [ ] $(x-1)^4$

La cadena de Jordan tiene tamaño 3 (superdiagonal no nula), por tanto minimal $(x-1)^3$.
</quiz>

---

## Parte E — Preguntas de reflexión corta (justifica mentalmente)

<quiz>
¿Es toda matriz simétrica diagonalizable (sobre $\mathbb{R}$)?

- [x] Sí, toda matriz simétrica real es diagonalizable por una matriz ortogonal
- [ ] No, nunca
- [ ] Solo si tiene valores propios distintos
- [ ] Solo si es invertible

Teorema espectral: matrices simétricas reales son diagonalizables por ortogonal.
</quiz>

<quiz>
¿Qué ventaja práctica tiene diagonalizar una matriz para computar potencias $A^k$?

- [ ] Ninguna
- [x] Permite calcular $A^k=P D^k P^{-1}$ donde $D^k$ es trivial de obtener
- [ ] Solo sirve para matrices 2x2
- [ ] Solo si $k$ es par

Diagonalizar convierte la potencia en elevar scalars en la diagonal.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->
