# Algoritmo paso a paso 3x3 — Diagonalización

### Método de Sarrus (explicado paso a paso)

Vamos a calcular el polinomio característico en la forma monica habitual usando $p_A(x)=\det(xI - A)$ y aplicando la regla de Sarrus, para evitar signos confusos.

1. Escribimos la matriz $xI - A$:

$$
xI - A = \begin{pmatrix}x-4 & -1 & -1 \\ -1 & x-4 & -1 \\ -1 & -1 & x-4\end{pmatrix}.
$$

??? tip "Regla de Sarrus"

    Para una matriz 3x3 $\begin{pmatrix}a&b&c\\d&e&f\\g&h&i\end{pmatrix}$,

    $$\det = aei + bfg + cdh - ceg - bdi - afh.$$
    
    Es decir, suma de las tres diagonales principales menos la suma de las tres diagonales secundarias.

2. Identificamos los productos diagonales en $xI-A$:

- Diagonales principales:

  - $(x-4)(x-4)(x-4) = (x-4)^3$,
  - $(-1)(-1)(-1) = -1$,
  - $(-1)(-1)(-1) = -1$.
    Suma principal = $(x-4)^3 - 2$.

- Diagonales secundarias:
  - $(-1)(x-4)(-1) = (x-4)$,
  - $(x-4)(-1)(-1) = (x-4)$,
  - $(-1)(-1)(x-4) = (x-4)$.
    Suma secundaria = $3(x-4)$.

3. Determinante (Sarrus):

$$
p_A(x)=\det(xI-A) = \text{suma principal} - \text{suma secundaria} = (x-4)^3 - 2 - 3(x-4).
$$

4. Simplificamos con la sustitución $y = x-4$ (para ver la factorización más claro):

$$
p_A(x) = y^3 - 3y - 2 = (y-2)(y+1)^2.
$$

Volviendo a $x$ (con $y=x-4$):

$$
p_A(x) = (x-6)(x-3)^2.
$$

??? tip "Consejo — interpretar multiplicidades"

    Si un factor $(x-\alpha)^m$ aparece en $p_A(x)$, el autovalor $\alpha$ tiene multiplicidad algebraica $m$. Aquí $3$ aparece con multiplicidad 2 y $6$ con multiplicidad 1.

Así obtenemos los autovalores: $\lambda_1=6$ (mult. 1) y $\lambda_2=3$ (mult. 2).

Esto no está ayudando. Mejor usar la fórmula conocida.

### "Fórmula conocida"

Para matrices de la forma $\begin{pmatrix}a & b & b \\ b & a & b \\ b & b & a\end{pmatrix}$, los autovalores son $a+2b$ (multiplicidad 1) y $a-b$ (multiplicidad 2).

Aquí $a=4$, $b=1$, así que $\lambda_1 = 4 + 2\cdot1 = 6$ (mult. 1), $\lambda_2 = 4 - 1 = 3$ (mult. 2).

Por tanto, $p_A(x) = (x-6)(x-3)^2$.

Por tanto, los autovalores son:

- $\lambda_1 = 6$ con multiplicidad algebraica $a_1 = 1$.
- $\lambda_2 = 3$ con multiplicidad algebraica $a_2 = 2$.

## 2. Cálculo de los autovectores

### Autovector para $\lambda_1=6$

Resolvemos el sistema $(A - 6I)v = 0$, donde $v = (x, y, z)^\top$:

$$A - 6I = \begin{pmatrix} -2 & 1 & 1 \\ 1 & -2 & 1 \\ 1 & 1 & -2 \end{pmatrix}$$

El sistema de ecuaciones es:

\[
\begin{cases}
-2x + y + z = 0 \\
x - 2y + z = 0 \\
x + y - 2z = 0
\end{cases}
\]

Sumando las tres ecuaciones: $(-2x + y + z) + (x - 2y + z) + (x + y - 2z) = 0 \Rightarrow 0 = 0$, lo que confirma consistencia.

De la primera ecuación: $y + z = 2x \Rightarrow y = 2x - z$

Sustituyendo en la segunda: $x - 2(2x - z) + z = 0 \Rightarrow x - 4x + 2z + z = 0 \Rightarrow -3x + 3z = 0 \Rightarrow x = z$

Entonces, $y = 2x - x = x$

Por tanto, $v = (x, x, x)^\top = x(1,1,1)^\top$. Un autovector es $v^{(1)} = (1,1,1)^\top$.

Verificación: $A v^{(1)} = \begin{pmatrix}4&1&1\\1&4&1\\1&1&4\end{pmatrix} \begin{pmatrix}1\\1\\1\end{pmatrix} = \begin{pmatrix}6\\6\\6\end{pmatrix} = 6 \begin{pmatrix}1\\1\\1\end{pmatrix}$.

### Autovectores para $\lambda_2=3$

Resolvemos $(A - 3I)v = 0$:

$$A - 3I = \begin{pmatrix}1 & 1 & 1 \\ 1 & 1 & 1 \\ 1 & 1 & 1\end{pmatrix}$$

El sistema es:

\[
\begin{cases}
x + y + z = 0 \\
x + y + z = 0 \\
x + y + z = 0
\end{cases}
\]

Todas las ecuaciones son la misma: $x + y + z = 0$. El rango es 1, nulidad 2.

Dos soluciones independientes: $v^{(2)} = (1, -1, 0)^\top$, $v^{(3)} = (1, 0, -1)^\top$.

Verificación: $A v^{(2)} = 3 v^{(2)}$, $A v^{(3)} = 3 v^{(3)}$.

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

???+ details "Solución paso a paso completa"

    1. **Polinomio característico**: Usando la fórmula conocida, $p_A(x) = (x-6)(x-3)^2$.

    2. **Autovector para $\lambda=6$**: Resolver $(A-6I)v=0$ da $x=y=z$, así $v^{(1)}=(1,1,1)^T$.

    3. **Autovectores para $\lambda=3$**: Resolver $(A-3I)v=0$ da $x+y+z=0$. Soluciones: $v^{(2)}=(1,-1,0)^T$, $v^{(3)}=(1,0,-1)^T$.

    4. **Matriz $P$**: Columnas $v^{(1)}, v^{(2)}, v^{(3)}$; $D = \diag(6,3,3)$. Verificar $\det(P) \neq 0$.
