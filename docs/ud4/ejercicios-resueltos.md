# Ejercicios resueltos — Unidad 4

Aquí tienes una colección de ejercicios resueltos, pensados para cubrir casos típicos y trampas:

## Ejercicio 1 (diagonalización, autovalores distintos)

Sea $A=\begin{pmatrix}4 & 1\\2 & 3\end{pmatrix}$. Diagonalizar si es posible.

???- details "Solución paso a paso"

    Polinomio característico:

    $$p_A(x)=\det\begin{pmatrix}4-x & 1\\2 & 3-x\end{pmatrix}=(4-x)(3-x)-2= x^2-7x+10=(x-2)(x-5).$$

    Autovalores: $2$ y $5$ (distintos) ⇒ diagonalizable.

    Para $\lambda=2$ resolvemos $(A-2I)v=0$:

    $$(A-2I)=\begin{pmatrix}2 & 1\\2 & 1\end{pmatrix},$$

    ecuaciones: $2v_1+v_2=0$. Tomamos $v^{(1)}=(1,-2)^T$.

    Para $\lambda=5$:

    $$(A-5I)=\begin{pmatrix}-1 & 1\\2 & -2\end{pmatrix},$$

    ecuación: $-v_1+v_2=0$. Tomamos $v^{(2)}=(1,1)^T$.

    Formamos $P=\begin{pmatrix}1 & 1\\-2 & 1\end{pmatrix}$, $D=\mathrm{diag}(2,5)$ y verificamos $P^{-1}AP=D$.

## Ejercicio 2 (multiplicidad repetida, comprobar geométrica)

Sea $B=\begin{pmatrix}3 & 1 & 0\\0 & 3 & 1\\0 & 0 & 3\end{pmatrix}$.

???- details "Solución paso a paso"

    Polinomio $p_B(x)=(3-x)^3$ ⇒ $a_3=3$. Calculamos $B-3I=\begin{pmatrix}0 & 1 & 0\\0 & 0 & 1\\0 & 0 & 0\end{pmatrix}$.
    Resolver $(B-3I)v=0$ conduce a $v_2=v_3=0$ y $v_1$ libre ⇒ dimensión 1. Por tanto $d_3=1<3$ → no diagonalizable.

## Ejercicio 3 (matriz simétrica)

Sea $C=\begin{pmatrix}1 & 2 & 3\\2 & 4 & 5\\3 & 5 & 6\end{pmatrix}$. Explica por qué es diagonalizable.

???- details "Solución paso a paso"

    $C$ es simétrica ($C^T=C$), por el teorema espectral toda matriz simétrica real es diagonalizable por una matriz ortogonal. Por tanto existe $Q$ ortogonal con $Q^T C Q = D$ diagonal.

## Ejercicio 4 (forma de Jordan 3x3, construir cadenas)

Sea $D=\begin{pmatrix}5 & 1 & 0\\0 & 5 & 1\\0 & 0 & 5\end{pmatrix}$. Describe la forma de Jordan.

???- details "Solución paso a paso"

    Polinomio $(5-x)^3$, $a_5=3$. $D-5I$ tiene rango 2 ⇒ $d_5=1$. La forma de Jordan tendrá un bloque de tamaño 3 (o dos+uno según dimensiones de $E_i$), y en este caso es un único bloque $J_3(5)$.

## Ejercicio 5 (calcular $A^k$ usando diagonalización)

Sea $A=\begin{pmatrix}2 & 0\\0 & 3\end{pmatrix}$ (diagonal ya). Calcula $A^{10}$.

???- details "Solución paso a paso"

    Si $A=\mathrm{diag}(2,3)$ entonces $A^{10}=\mathrm{diag}(2^{10},3^{10})$.

## Ejercicio 6 (Eliminación Gauss — autovector 2x2)

Sea $A=\begin{pmatrix}4 & 1\\2 & 3\end{pmatrix}$ y queremos calcular un autovector para $\lambda=2$ usando eliminación de Gauss.

???- details "Solución paso a paso (Gauss)"

    1) Planteamos $(A-2I)v=0$:

    $$(A-2I)=\begin{pmatrix}2 & 1\\2 & 1\end{pmatrix},\qquad v=\begin{pmatrix}v_1\\v_2\end{pmatrix}.$$

    2) Pasamos al sistema homogéneo asociado (matriz aumentada):

    $$\left(\begin{array}{cc|c}2 & 1 & 0\\2 & 1 & 0\end{array}\right).$$

    3) Aplicamos eliminación:

    * Fila2 <- Fila2 - Fila1:

    $$\left(\begin{array}{cc|c}2 & 1 & 0\\0 & 0 & 0\end{array}\right).$$

    4) Obtenemos la ecuación $2v_1+v_2=0\Rightarrow v_2=-2v_1$. Tomamos $v_1=1$ y

    $$v=\begin{pmatrix}1\\-2\end{pmatrix}.$$

    5) Verificación: $A v=2v$ se comprueba directamente.

## Ejercicio 7 (Eliminación Gauss — autovectores 3x3 con multiplicidad)

Usamos la matriz

$$A=\begin{pmatrix}4 & 1 & 1\\1 & 4 & 1\\1 & 1 & 4\end{pmatrix}$$

y calculamos autovectores para $\lambda=3$ (autovalor con multiplicidad algebraica 2) usando eliminación de Gauss.

???- details "Solución paso a paso (Gauss)"

    1) Planteamos $(A-3I)v=0$:

    $$(A-3I)=\begin{pmatrix}1 & 1 & 1\\1 & 1 & 1\\1 & 1 & 1\end{pmatrix},\quad v=\begin{pmatrix}v_1\\v_2\\v_3\end{pmatrix}.$$

    2) Matriz aumentada del sistema homogéneo:

    $$\left(\begin{array}{ccc|c}1 & 1 & 1 & 0\\1 & 1 & 1 & 0\\1 & 1 & 1 & 0\end{array}\right).$$

    3) Eliminación (pasos):

    * Fila2 <- Fila2 - Fila1 → (0,0,0|0)

    * Fila3 <- Fila3 - Fila1 → (0,0,0|0)

    Queda:

    $$\left(\begin{array}{ccc|c}1 & 1 & 1 & 0\\0 & 0 & 0 & 0\\0 & 0 & 0 & 0\end{array}\right).$$

    4) La ecuación esencial es $v_1+v_2+v_3=0$. Tomamos parámetros libres para dos variables, por ejemplo $v_2=s$, $v_3=t$ y

    $$v_1=-s-t.$$

    5) Dos vectores L.I. solución (elegidos fijando parámetros) son

    $$v^{(1)}=\begin{pmatrix}1\\-1\\0\end{pmatrix},\qquad v^{(2)}=\begin{pmatrix}1\\0\\-1\end{pmatrix}.$$

    6) Verificación: comprobar que $A v^{(1)}=3 v^{(1)}$ y $A v^{(2)}=3 v^{(2)}$.


