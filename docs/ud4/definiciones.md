# Definiciones — Unidad 4: Diagonalización

En esta página reunimos las definiciones y propiedades que necesitaremos a lo largo de la unidad.

- El **subespacio propio** (o espacio propio) asociado a $\lambda$ es
  $$V_\lambda=\{v\in K^n\mid (A-\lambda I)v=0\}=\ker(A-\lambda I).$$

## Polinomio característico y multiplicidades

- El **polinomio característico** de $A$ es
  $$p_A(x)=\det(A-xI).$$
  Los autovalores son las raíces de $p_A(x)$.

- **Multiplicidad algebraica** ($a_\lambda$): la multiplicidad de $\lambda$ como raíz de $p_A(x)$.

- **Multiplicidad geométrica** ($d_\lambda$): la dimensión del espacio propio $V_\lambda$, es decir
  $$d_\lambda=\dim\ker(A-\lambda I)=n-\mathrm{rg}(A-\lambda I).$$

Siempre se cumple $1\le d_\lambda\le a_\lambda$.

## Matrices semejantes y diagonalización

- Dos matrices $A$ y $B$ son **semejantes** si existe invertible $P$ tal que $B=P^{-1}AP$.

- Decimos que $A$ es **diagonalizable** si es semejante a una matriz diagonal, es decir existe invertible $P$ y una diagonal $D$ tal que
  $$A=PDP^{-1}.$$

**Criterio básico:** $A$ es diagonalizable si y solo si la suma de las dimensiones de los espacios propios es $n$, equival. si existe una base formada por autovectores de $A$.

## Propiedades útiles

- Si $A$ es diagonalizable: $A=PDP^{-1}$, entonces $A^k=PD^kP^{-1}$ (fácil de computar).
- Si $A$ es simétrica real ($A^T=A$) entonces es diagonalizable (teorema espectral).

---

???+ details "Solución paso a paso"

    Sea $A=\begin{pmatrix}2 & 1\\1 & 2\end{pmatrix}$. Calculamos su polinomio característico:

    $$p_A(x)=\det\begin{pmatrix}2-x & 1\\1 & 2-x\end{pmatrix}=(2-x)^2-1=x^2-4x+3=(x-1)(x-3).$$

    Por tanto los autovalores son $1$ y $3$, distintos, con multiplicidad algebraica 1 cada uno. Concluimos que $A$ es diagonalizable (dos autovalores distintos en $2\\times2$ implican diagonalizable).
