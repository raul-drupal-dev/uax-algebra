# Criterios y comprobaciones para diagonalizar

En esta página explicamos cómo comprobar si una matriz es diagonalizable y qué pasos seguir cuando hay raíces repetidas.

## Pasos rápidos para comprobar diagonalización

1. Calcular el polinomio característico $p_A(x)=\det(A-xI)$.
2. Factorizar $p_A(x)$ en el cuerpo que estemos trabajando (ej. $\mathbb{R}$ o $\mathbb{C}$).
3. Para cada autovalor $\lambda$: calcular $a_\lambda$ (multiplicidad algebraica) y $d_\lambda=\dim\ker(A-\lambda I)$ (multiplicidad geométrica).
4. Si para todo $\lambda$ se cumple $d_\lambda=a_\lambda$, entonces $A$ es diagonalizable.

## Observaciones importantes

- Si todos los autovalores son distintos (polinomio sin raíces repetidas), la matriz es diagonalizable.
- Si existe un autovalor complejo pero trabajas en $\mathbb{R}$, puede que no sea diagonalizable sobre $\mathbb{R}$; debes pasar a $\mathbb{C}$ si es necesario.
- Si $d_\lambda<a_\lambda$ para algún $\lambda$, entonces **no** es diagonalizable; en ese caso estudia la forma de Jordan.

---

## Ejemplos ilustrativos

### Ejemplo 1: Matriz $2\times2$ con raíces distintas

Sea $A=\begin{pmatrix}2 & 1\\1 & 2\end{pmatrix}$ (ya visto en definiciones). Polinomio: $(x-1)(x-3)$, autovalores $1$ y $3$ (multiplicidad 1 cada uno). Por tanto diagonalizable.

### Ejemplo 2: Raíz repetida y comprobación geométrica

Sea $B=\begin{pmatrix}3 & 1 & 0\\0 & 3 & 1\\0 & 0 & 3\end{pmatrix}$. Observa que

$$p_B(x)=(3-x)^3.$$

La multiplicidad algebraica de $3$ es $a_3=3$. Calculamos $B-3I$ cuyo rango es 2 (verificando que la primera subdiagonal contiene ceros salvo la estructura superior triangular), luego

$$d_3 = 3 - \mathrm{rg}(B-3I) = 3-2=1.$$

Como $d_3=1< a_3=3$, **no** es diagonalizable. Debemos usar Jordan.

???+ details "Solución paso a paso"

    Dada $B-3I=\begin{pmatrix}0 & 1 & 0\\0 & 0 & 1\\0 & 0 & 0\end{pmatrix}$, resolver $(B-3I)v=0$ da una sola dimensión para el espacio propio, por eso $d_3=1$.
