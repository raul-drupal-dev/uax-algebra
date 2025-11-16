---
title: Coordenadas y cambio de base
---

## 2. Coordenadas y cambio de base

Este capítulo explica cómo representar vectores mediante coordenadas relativas a una base y cómo pasar de las coordenadas en una base a las de otra mediante la matriz de cambio de base. Incluye procedimientos paso a paso y ejemplos resueltos.

### 1. Coordenadas relativas a una base

Sea $V$ un espacio vectorial de dimensión $n$ y sea $B=\{u_1,\dots,u_n\}$ una base de $V$. Para cada $x\in V$ existen escalares únicos $x_1,\dots,x_n$ tales que

$$
x = x_1 u_1 + \cdots + x_n u_n.
$$

La columna

$$
[x]_B=\begin{pmatrix}x_1\\\vdots\\x_n\end{pmatrix}
$$

se llama el vector de coordenadas de $x$ respecto a la base $B$. La unicidad de las coordenadas es una propiedad esencial: dada una base, la representación es única.

Cómo calcularlas en la práctica: si los vectores $u_i$ están en $\mathbb{K}^n$, forme la matriz $U$ que tiene como columnas los $u_i$ y resuelva el sistema

$$
U\,[x]_B = x\quad(\text{o en forma }U\alpha=x),
$$

es decir, encuentre el vector columna $\alpha=[x]_B$ que satisface la ecuación. Si $U$ es invertible (lo es cuando $B$ es una base), entonces

$$
[x]_B = U^{-1} x.
$$

### 2. Ejemplo sencillo en $\mathbb{R}^2$

Sea la base $B=\{b_1=(1,1),\ b_2=(1,-1)\}$ y el vector $x=(3,1)$. Queremos $[x]_B=(\alpha_1,\alpha_2)^T$ tal que

$$
\alpha_1(1,1)+\alpha_2(1,-1)=(3,1).
$$

Esto da el sistema

$$
\begin{cases}
\alpha_1+\alpha_2=3 \\\\
\alpha_1-\alpha_2=1
\end{cases}
$$

Sumando ambas ecuaciones: $2\alpha_1=4\Rightarrow\alpha_1=2$. Entonces $\alpha_2=1$. Por tanto

$$
[x]_B=\begin{pmatrix}2\\1\end{pmatrix}.
$$

Alternativa matricial: $U=\begin{pmatrix}1&1\\1&-1\end{pmatrix}$, por tanto $[x]_B=U^{-1}x$.

### 3. Matriz de cambio de base

Sea $B_1=\{u_1,\dots,u_n\}$ y $B_2=\{v_1,\dots,v_n\}$ dos bases del mismo espacio $V$. La matriz de cambio de base de $B_2$ a $B_1$ se define como la matriz $P_{B_2\to B_1}$ cuyas columnas son las coordenadas de los vectores de $B_2$ expresadas en la base $B_1$:

$$
P_{B_2\to B_1}=\begin{pmatrix}[v_1]_{B_1} & [v_2]_{B_1} & \cdots & [v_n]_{B_1}\end{pmatrix}.
$$

Propiedad fundamental: para todo $x\in V$ se tiene

$$
[x]_{B_1} = P_{B_2\to B_1}\,[x]_{B_2}.
$$

Observa que $P_{B_1\to B_2}=P_{B_2\to B_1}^{-1}$ y que $P_{B_2\to B_1}$ es invertible (es una matriz de cambio entre dos bases).

### 4. Ejemplo de cambio de base en $\mathbb{R}^2$

Tomemos la base canónica $E=\{e_1=(1,0),e_2=(0,1)\}$ y la base $B'=\{v_1=(1,1),v_2=(1,-1)\}$. Construimos

$$
P_{B'\to E}=\begin{pmatrix}[v_1]_E & [v_2]_E\end{pmatrix}=\begin{pmatrix}1&1\\1&-1\end{pmatrix}.
$$

Si $[x]_{B'}$ son las coordenadas de $x$ en $B'$, entonces las coordenadas canónicas vienen dadas por

$$
[x]_E = P_{B'\to E}\,[x]_{B'}.
$$

Si queremos las coordenadas en $B'$ a partir de las canónicas usamos la inversa:

$$
[x]_{B'} = P_{B'\to E}^{-1}[x]_E.
$$

En el ejemplo anterior $P_{B'\to E}=\begin{pmatrix}1&1\\1&-1\end{pmatrix}$ y su inversa (fácil de calcular con la fórmula $2\times2$) es: 

$$
\dfrac{1}{-2}\begin{pmatrix}-1&-1\\-1&1\end{pmatrix}=\dfrac{1}{2}\begin{pmatrix}1&1\\1&-1\end{pmatrix}
$$

### 5. Cómo construir $P$ en la práctica (procedimiento)

1. Escribe los vectores de la base origen $B_2$ en coordenadas canónicas (o en la base $B_1$ si ya las conoces).
2. Forma la matriz cuyas columnas son esas coordenadas: esa es $P_{B_2\to B_1}$.
3. Para pasar coordenadas: multiplica por $P$ según la dirección indicada; para la dirección contraria multiplica por $P^{-1}$.

### 6. Ejemplo en $\mathbb{R}^3$ (breve)

Sean $B_1$ la base canónica de $\mathbb{R}^3$ y $B_2=\{(1,0,1),(0,1,1),(1,1,0)\}$. Para construir $P_{B_2\to B_1}$ simplemente tomamos las columnas:

$$
P_{B_2\to B_1}=\begin{pmatrix}1&0&1\\0&1&1\\1&1&0\end{pmatrix}.
$$

Si $x=(2,3,1)$ en coordenadas canónicas, para obtener $[x]_{B_2}$ resolvemos $P_{B_2\to B_1}[x]_{B_2}=x$ (es decir $[x]_{B_2}=P^{-1}x$).

### 7. Consejos y errores frecuentes

- Recuerda el orden: las columnas de $P_{B_2\to B_1}$ son los vectores de $B_2$ expresados en la base $B_1$.
- Si trabajas desde la base canónica, las coordenadas de un vector son sus componentes habituales.
- Comprobar siempre que la matriz $P$ es invertible antes de usar $P^{-1}$ (si $B_2$ es base, $P$ debe ser invertible).

### 8. Resumen y tabla de fórmulas

Resumen escueto:

- Definición de coordenadas respecto a una base y su unicidad.
- Cálculo de coordenadas resolviendo $U\alpha=x$ o usando $U^{-1}x$ cuando $U$ es la matriz de la base.
- Definición y construcción de la matriz de cambio de base $P_{B_2\to B_1}$ (columnas = coordenadas de $B_2$ en $B_1$).
- Fórmula de transformación: $[x]_{B_1}=P_{B_2\to B_1}[x]_{B_2}$ y $[x]_{B_2}=P_{B_2\to B_1}^{-1}[x]_{B_1}$.

Tabla de fórmulas:

| Término             | Fórmula                                                                                            | Mini descripción                                                        |
| ------------------- | -------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| Coordenadas         | $x=\sum_i x_i u_i$, $[x]_B=(x_1,\dots,x_n)^T$                                                      | Representación única de un vector respecto a $B$.                       |
| Sistema matricial   | $U\,[x]_B=x$                                                                                       | Resolver para obtener coordenadas cuando $U$ tiene columnas de la base. |
| Cambio de base      | $[x]_{B_1}=P_{B_2\to B_1}[x]_{B_2}$                                                                | Transformación de coordenadas entre bases.                              |
| Construcción de $P$ | $P_{B_2\to B_1}=([v_1]_{B_1}\ \cdots\ [v_n]_{B_1})$                                                | Columnas: coordenadas de $B_2$ en $B_1$.                                |
| Inversa $2\times2$  | $\begin{pmatrix}a&b\\c&d\end{pmatrix}^{-1}=\dfrac{1}{ad-bc}\begin{pmatrix}d&-b\\-c&a\end{pmatrix}$ | Útil para invertir matrices pequeñas.                                   |


