# Algoritmo paso a paso 2x2 — Diagonalización

Aquí mostramos un procedimiento claro y un ejemplo detallado con todos los cálculos.

## Algoritmo general

1. Calcular $p_A(x)=\det(A-xI)$.
2. Factorizar y obtener los autovalores $\lambda_1,\dots,\lambda_r$ con sus multiplicidades algebraicas $a_i$.
3. Para cada $\lambda_i$ resolver $(A-\lambda_i I)v=0$ para obtener una base de $V_{\lambda_i}$ y calcular $d_i=\dim V_{\lambda_i}$.
4. Si $\sum_i d_i=n$, tomar una base formada por la unión de bases de cada $V_{\lambda_i}$, ordenar vectores como columnas para obtener $P$. Entonces
   $$P^{-1}AP=D$$
   donde $D$ es diagonal con los autovalores (repetidos según su multiplicidad algebraica) en la diagonal.

## Ejemplo completo (2x2)

Diagonalicemos

$$A=\begin{pmatrix}2 & 1\\1 & 2\end{pmatrix}$$

### 1. Polinomio característico:

$$p_A(x)=\det\begin{pmatrix}2-x & 1\\1 & 2-x\end{pmatrix}=(2-x)^2-1=x^2-4x+3=(x-1)(x-3)$$

Autovalores: $\lambda_1=1$, $\lambda_2=3$ (distintos).

### 2. Para $\lambda_1=1$:

\begin{align*}
(A-I)=\begin{pmatrix}1 & 1\\1 & 1\end{pmatrix}.
\end{align*}

Resolver $(A-I)v=0$:

\begin{cases} v_1 + v_2 = 0 \newline v_1 + v_2 = 0 \end{cases}

Escogemos $v^{(1)}=\begin{pmatrix}1\\-1\end{pmatrix}$.

### 3. Para $\lambda_2=3$:

\begin{align*}
(A-3I)=\begin{pmatrix}-1 & 1\\1 & -1\end{pmatrix}.
\end{align*}

Resolver $(A-3I)v=0$:

$$\begin{cases} -v_1 + v_2 = 0 \newline v_1 - v_2 = 0 \end{cases}$$

Escogemos $v^{(2)}=\begin{pmatrix}1\\1\end{pmatrix}$.

### 4. Formamos la matriz $P$ con columnas los autovectores:

$$P=\begin{pmatrix}1 & 1\\-1 & 1\end{pmatrix}$$

Comprobamos que $P$ es invertible: $\det(P)=1\cdot1 - (1)(-1)=2\neq0$.

### 5. Calculamos $D=P^{-1}AP$ (dejaremos el cálculo de la inversa al lector o lo hacemos por método directo). El resultado es

$$D=\begin{pmatrix}1 & 0\\0 & 3\end{pmatrix}$$

???+ details "Solución paso a paso"

    Para comprobar, podemos calcular $P^{-1}AP$ explicitando $P^{-1}=\frac{1}{2}\begin{pmatrix}1 & -1\\1 & 1\end{pmatrix}$ y verificar la multiplicación, que da la diagonal con 1 y 3.
