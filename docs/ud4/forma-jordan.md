# Forma canónica de Jordan

Cuando una matriz no es diagonalizable estudiamos su forma de Jordan. Aquí se recogen definiciones, el procedimiento y ejemplos.

## Definición y bloques de Jordan

- Un **bloque de Jordan** $J_k(\lambda)$ de tamaño $k$ es la matriz $k\times k$ con $\lambda$ en la diagonal, unos en la superdiagonal y ceros en el resto.

- La **forma de Jordan** $J$ de una matriz $A$ es una matriz en bloque diagonal compuesta por bloques de Jordan, tal que existe invertible $P$ con $A=PJP^{-1}$.

## Subespacios propios generalizados

- Definimos $E_i(\lambda)=\ker(A-\lambda I)^i$. Se obtiene una cadena creciente

$$E_1(\lambda)\subseteq E_2(\lambda)\subseteq \dots$$

  que se estabiliza y nos permite construir cadenas de vectores generalizados para formar la base de Jordan.

## Procedimiento resumido

1. Para cada $\lambda$ calcular $a_\lambda$ (alg.) y las dimensiones $\dim E_i(\lambda)$ hasta que se estabilice.
2. Construir cadenas generalizadas de longitud igual al orden de los bloques.
3. Ordenar las cadenas para formar $P$ y obtener $J=P^{-1}AP$.

## Ejemplo simple (bloque 2x2)

Sea

$$A=\begin{pmatrix}2 & 1\\0 & 2\end{pmatrix}.$$

El polinomio es $(2-x)^2$, con $a_2=2$.

Calculamos $A-2I=\begin{pmatrix}0 & 1\\0 & 0\end{pmatrix}$. Entonces $\ker(A-2I)$ tiene dimensión 1 (vectores de la forma $(t,0)$). Por tanto $d_2=1<2$ y la matriz no es diagonalizable.

La forma de Jordan es ya

$$J=\begin{pmatrix}2 & 1\\0 & 2\end{pmatrix},$$

es decir un único bloque de Jordan $J_2(2)$.

???+ details "Solución paso a paso"

    Tomamos $v_1\in\ker(A-2I)$, por ejemplo $v_1=\begin{pmatrix}1\\0\end{pmatrix}$. Buscamos $v_2$ tal que $(A-2I)v_2=v_1$. Si tomamos

    $v_2=\begin{pmatrix}0\\1\end{pmatrix}$,

    entonces $(A-2I)v_2=\begin{pmatrix}1\\0\end{pmatrix}=v_1$. Con la cadena $(v_1,v_2)$ obtenemos la matriz $P$ y la forma de Jordan indicada.
