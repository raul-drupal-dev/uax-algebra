# Algoritmo paso a paso 3x3 — Diagonalización

En este documento aplicamos el algoritmo de diagonalización a un ejemplo concreto de dimensión 3. El objetivo es practicar el cálculo del polinomio característico, autovalores, multiplicidades, autovectores y construcción de la matriz de paso $P$ que diagonaliza la matriz.

## Matriz de trabajo

Consideremos la matriz simétrica

$$A=\begin{pmatrix}4 & 1 & 1\\1 & 4 & 1\\1 & 1 & 4\end{pmatrix}$$

Esta familia de matrices (mismo valor en la diagonal y 1 en las entradas fuera de la diagonal) es un buen ejemplo porque muestra una raíz simple y una raíz con multiplicidad 2.

## 1. Polinomio característico

Calculamos

$$p_A(x)=\det(A-xI)=(4-x-1-1)\cdot(\cdots)\quad\text{(procedimiento de desarrollo)}$$

En este caso podemos usar la fórmula conocida para matrices con diagonal $a$ y off-diagonal $b$ en dimensión 3: los autovalores son $a+2b$ (multiplicidad 1) y $a-b$ (multiplicidad 2). Para $a=4$, $b=1$:

$$p_A(x)=(x-6)(x-3)^2$$

Por tanto los autovalores son

- $\lambda_1=6$ con multiplicidad algebraica $a_1=1$.
- $\lambda_2=3$ con multiplicidad algebraica $a_2=2$.

## 2. Cálculo de los autovectores

### Autovector para $\lambda_1=6$

Resolvemos $(A-6I)v=0$:

$$A-6I=\begin{pmatrix}-2 & 1 & 1\\1 & -2 & 1\\1 & 1 & -2\end{pmatrix}$$

Sumando las tres ecuaciones observamos que las filas suman cero, lo que sugiere que un autovector es $v^{(1)}=(1,1,1)^T$. Verificamos:

$$A\begin{pmatrix}1\\1\\1\end{pmatrix}=\begin{pmatrix}6\\6\\6\end{pmatrix}=6\begin{pmatrix}1\\1\\1\end{pmatrix}.$$

### Autovectores para $\lambda_2=3$

Resolvemos $(A-3I)v=0$:

$$A-3I=\begin{pmatrix}1 & 1 & 1\\1 & 1 & 1\\1 & 1 & 1\end{pmatrix}.$$

Todas las filas son iguales, por lo que el rango es 1 y la nulidad es 2: $d_2=2$ (como esperábamos). La ecuación que hay que satisfacer es

$$v_1+v_2+v_3=0.$$

Dos vectores independientes que cumplen esto son, por ejemplo,

$$v^{(2)}=\begin{pmatrix}1\\-1\\0\end{pmatrix},\qquad v^{(3)}=\begin{pmatrix}1\\0\\-1\end{pmatrix}.$$

Comprobación rápida:

$$A v^{(2)}=3 v^{(2)},\qquad A v^{(3)}=3 v^{(3)}.$$

## 3. Construcción de $P$ y $D$

Tomamos como columnas de $P$ los autovectores encontrados (ordenados como queramos, pero manteniendo la correspondencia con la diagonal de $D$):

$$P=\begin{pmatrix}1 & 1 & 1\\1 & -1 & 0\\1 & 0 & -1\end{pmatrix},\qquad D=\begin{pmatrix}6 & 0 & 0\\0 & 3 & 0\\0 & 0 & 3\end{pmatrix}.$$

Comprobemos que $P$ es invertible calculando su determinante (o observando que las columnas son L.I.). Un cálculo rápido da $\det(P)=3\neq0$, luego $P$ es invertible.

Por tanto

$$P^{-1}AP=D,$$

y hemos diagonalizado $A$.

## 4. Aplicaciones y observaciones

- Dado que $A$ es simétrica, era de esperar que fuera diagonalizable y que los autovectores correspondientes a autovalores distintos fuesen ortogonales (podemos ortonormalizarlos si se desea).
- Para elevar $A$ a una potencia basta calcular $D^k$ y conjugarlos: $A^k=PD^kP^{-1}$.

---

???+ details "Solución paso a paso"

    1) Polinomio característico: si expandimos $\det(A-xI)$ obtenemos

    $$p_A(x)=(x-6)(x-3)^2$$

    2) Para $\lambda=6$, resolver $(A-6I)v=0$. Una solución es

    $$v^{(1)}=(1,1,1)^T$$

    3) Para $\lambda=3$, resolver $(A-3I)v=0$ da la condición $v_1+v_2+v_3=0$. Elegimos dos soluciones independientes:

    $$v^{(2)}=(1,-1,0)^T,\qquad v^{(3)}=(1,0,-1)^T$$

    4) Formamos $P$ con columnas $v^{(1)},v^{(2)},v^{(3)}$ y calculamos $D=P^{-1}AP=\mathrm{diag}(6,3,3)$. Verificamos $\det(P)=3\neq0$.
