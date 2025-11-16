---
title: Espacios vectoriales y bases
---

## Espacios vectoriales y bases

Este documento es una versión ampliada y pensada para el estudio de los conceptos clave sobre espacios vectoriales y bases. Contiene definiciones, propiedades, ejemplos detallados y procedimientos paso a paso para resolver los problemas más habituales.

### 1. Definición de espacio vectorial

Sea $\mathbb{K}$ un cuerpo (por ejemplo $\mathbb{R}$ o $\mathbb{C}$). Un conjunto $V$ junto con dos operaciones —suma $+$ y producto por escalares $\cdot$— es un espacio vectorial sobre $\mathbb{K}$ si se cumplen las siguientes propiedades para todo $u,v,w\in V$ y todo $\alpha,\beta\in\mathbb{K}$:

1. (Cerradura suma) $u+v\in V$.
2. (Conmutatividad) $u+v=v+u$.
3. (Asociatividad suma) $(u+v)+w=u+(v+w)$.
4. (Elemento neutro) Existe $0\in V$ tal que $v+0=v$ para todo $v\in V$.
5. (Opuesto) Para cada $v\in V$ existe $-v\in V$ con $v+(-v)=0$.
6. (Cerradura por escalares) $\alpha v\in V$.
7. (Compatibilidad escalares con la suma) $\alpha(u+v)=\alpha u+\alpha v$.
8. (Compatibilidad escalares con la multiplicación) $(\alpha+\beta)v=\alpha v+\beta v$.
9. (Asociatividad de escalares) $(\alpha\beta)v=\alpha(\beta v)$.
10. (Elemento neutro escalar) $1\cdot v=v$.

Nota: Las propiedades 6–10 son las que implican la relación entre el cuerpo de escalares y la suma en $V$.

Ejemplo de espacios vectoriales: $\mathbb{K}^n$, el espacio de polinomios de grado a lo sumo $n$ (denotado $\mathbb{K}_n[x]$), el espacio de matrices $M_{m\times n}(\mathbb{K})$, y subespacios como rectas y planos que pasan por el origen en $\mathbb{R}^n$.

### 2. Subespacios

Un subconjunto $W\subseteq V$ es un subespacio si es no vacío y cerrado bajo suma y multiplicación por escalares: para todo $u,v\in W$ y $\alpha\in\mathbb{K}$, $u+v\in W$ y $\alpha u\in W$. En la práctica basta comprobar que $0\in W$, que $u+v\in W$ y que $\alpha u\in W$.

Ejemplo rápido: en $\mathbb{R}^3$, el conjunto de vectores $(x,y,z)$ con $z=0$ es un subespacio (es el plano $xy$ que pasa por el origen).

### 3. Combinaciones lineales, generadores y span

Dado un conjunto $S=\{v_1,\dots,v_k\}\subset V$, una combinación lineal de los vectores de $S$ es un vector de la forma

$$
\alpha_1 v_1+\cdots+\alpha_k v_k,\quad \alpha_i\in\mathbb{K}.
$$

El subespacio generado por $S$, denotado $\text{span}(S)$ o $\langle S\rangle$, es el conjunto de todas las combinaciones lineales de los vectores de $S$. Por construcción $\text{span}(S)$ es el menor subespacio de $V$ que contiene a $S$.

Ejemplo: Si $S=\{(1,0),(0,1)\}\subset\mathbb{R}^2$ entonces $\text{span}(S)=\mathbb{R}^2$.

### 4. Independencia y dependencia lineal

Un conjunto $S=\{v_1,\dots,v_k\}$ es linealmente independiente (L.I.) si la única solución al sistema

$$
\alpha_1 v_1+\cdots+\alpha_k v_k=0
$$

es $\alpha_1=\cdots=\alpha_k=0$. Si existe una solución no trivial (algún $\alpha_i\ne 0$), el conjunto es linealmente dependiente (L.D.).

Hecho importante: $S$ es L.D. si y solo si algún vector de $S$ es combinación lineal de los demás.

Procedimiento práctico (usando matrices): Para vectores en $\mathbb{K}^n$ se construye la matriz que tiene los vectores como columnas y se calcula su rango (por eliminación gaussiana). Si el rango es igual al número de vectores, son L.I.; si no, son L.D.

Ejemplo paso a paso (R^2): Determinar si $v_1=(1,2)$ y $v_2=(2,4)$ son L.I.

1. Planteamos $\alpha_1(1,2)+\alpha_2(2,4)=(0,0)$, i.e.
   $$
   \begin{cases}
   \alpha_1+2\alpha_2=0 \\\\
   2\alpha_1+4\alpha_2=0
   \end{cases}
   $$
2. Observamos que la segunda ecuación es el doble de la primera, por tanto hay infinitas soluciones relacionadas: tomar $\alpha_2=t$, entonces $\alpha_1=-2t$. Hay soluciones no triviales, luego $\{v_1,v_2\}$ es L.D.
3. Conclusión: $v_2=2v_1$, así que $v_2$ es combinación lineal de $v_1$.

#### Trucos y métodos para determinar dependencia lineal (resumen)

Pequeña guía práctica y ordenada para decidir si un conjunto de vectores es linealmente independiente (L.I.) o dependiente (L.D.):

1. Trucos rápidos (casos evidentes) — ejemplos sencillos

    - Regla de dimensión: si hay más vectores que la dimensión, son L.D.  
        Ejemplo: 4 vectores en \(\mathbb{R}^3\), p.ej. \((1,0,0),(0,1,0),(0,0,1),(1,1,1)\) → L.D.

    - Vector cero: si el conjunto contiene \(\mathbf{0}\) es L.D.  
        Ejemplo: \(\{(1,0),(0,1),(0,0)\}\) → L.D.

    - Múltiplo escalar / repetidos: si algún vector es múltiplo de otro o se repite → L.D.  
        Ejemplo: \(\{(1,2),(2,4)\}\) porque \((2,4)=2(1,2)\) → L.D.

2. Método del determinante (caso cuadrado) — ejemplos

    - Si el número de vectores = dimensión, forme la matriz cuadrada y calcule \(\det\).  
        Ejemplo (L.I.): columnas \((1,3),(2,4)\) → \(A=\begin{pmatrix}1&2\\3&4\end{pmatrix}\), \(\det(A)=-2\neq0\) → L.I.  
        Ejemplo (L.D.): columnas \((1,2),(2,4)\) → \(A=\begin{pmatrix}1&2\\2&4\end{pmatrix}\), \(\det(A)=0\) → L.D.

3. Método universal: eliminación por filas — ejemplo

    - Forme la matriz con las columnas y reduzca (o compruebe relaciones entre columnas).  
        Ejemplo: vectores \((1,0,1),(0,1,1),(1,1,2)\). Matriz
        \(A=\begin{pmatrix}1&0&1\\0&1&1\\1&1&2\end{pmatrix}\).  
        Observación: la tercera columna es suma de la primera y la segunda \((1,1,2)=(1,0,1)+(0,1,1)\), luego hay sólo 2 pivotes (rango=2 < 3) → L.D.
    - Si tras la reducción el rango = nº de vectores → L.I.; si rango < nº de vectores → L.D.
    - Nota práctica: columnas no pivote indican combinaciones lineales entre columnas.

Consejo: Empieza por los trucos rápidos; si no son concluyentes, usa determinante (si aplica) o la eliminación por filas, que siempre funciona.

### 5. Bases y dimensión

Una base de $V$ es un conjunto $B$ que es simultáneamente L.I. y generador de $V$; es decir, cada vector de $V$ se escribe de manera única como combinación lineal de los elementos de $B$. La dimensión $\dim(V)$ es el número (finito) de vectores en cualquier base de $V$.

Ejemplo: La base canónica de $\mathbb{R}^3$ es
$$
e_1=(1,0,0),\quad e_2=(0,1,0),\quad e_3=(0,0,1),
$$
y por tanto $\dim(\mathbb{R}^3)=3$.

Procedimiento para extraer una base de un conjunto generador: Dados vectores en $\mathbb{K}^n$, organízalos como columnas en una matriz y aplica eliminación por filas para obtener una matriz con columnas pivote; las columnas originales correspondientes a pivotes forman una base de $\text{span}(S)$.

Ejemplo práctico: Encontrar una base de $S=\{(1,2,0),(2,4,0),(0,1,1)\}\subset\mathbb{R}^3$.

1. Formamos la matriz con columnas los vectores:
   $$
   A=\begin{pmatrix}1&2&0\\\\2&4&1\\\\0&0&1\end{pmatrix}
   $$
2. Aplicamos eliminación por filas (o calculemos el rango): observamos que la segunda columna es 2 veces la primera en las dos primeras filas, pero la tercera columna es independiente en la tercera fila. Tras la reducción, las columnas 1 y 3 son pilares independientes.
3. Por tanto una base de $\text{span}(S)$ es $\{(1,2,0),(0,1,1)\}$ y $\dim(\text{span}(S))=2$.

### 6. Coordenadas respecto a una base

Si $B=\{b_1,\dots,b_n\}$ es una base de $V$, todo $v\in V$ se escribe de forma única como $v=\alpha_1 b_1+\cdots+\alpha_n b_n$. Los escalares $\alpha_i$ son las coordenadas de $v$ respecto a $B$. Se suele escribir

$$
[v]_B=\begin{pmatrix}\alpha_1\\\vdots\\\alpha_n\end{pmatrix}
$$

Ejemplo: en $\mathbb{R}^2$ sea la base $B=\{b_1=(1,1),\,b_2=(1,-1)\}$ y $v=(3,1)$. Para hallar coordenadas resolvemos

$$
\alpha_1(1,1)+\alpha_2(1,-1)=(3,1)
$$

Esto da el sistema

$$
\begin{cases}\alpha_1+\alpha_2=3\alpha_1-\alpha_2=1.\end{cases}
$$

Sumando ambas ecuaciones: $2\alpha_1=4\Rightarrow\alpha_1=2$. Entonces $\alpha_2=1$. Por tanto

$$
[v]_B=\begin{pmatrix}2\\\\1\end{pmatrix}
$$

### 7. Matriz de cambio de base

Si $B=\{b_1,\dots,b_n\}$ y $B'=\{b'_1,\dots,b'_n\}$ son dos bases de un espacio vectorial de dimensión $n$, la matriz de cambio de base de $B$ a $B'$—denotada $P_{B\to B'}$—es la matriz que satisface

$$
[v]_{B'}=P_{B\to B'}\,[v]_B$
$
para todo $v\in V$. Las columnas de $P_{B\to B'}$ son las coordenadas de los vectores de $B$ expresados en la base $B'$.

Ejemplo completo: En $\mathbb{R}^2$ con bases $B=\{(1,0),(0,1)\}$ (canónica) y $B'=\{(1,1),(1,-1)\}$, hallar $P_{B'\leftarrow B}$ (la matriz que transforma coordenadas canónicas a coordenadas en $B'$).

1. Escribimos las columnas de la matriz como las coordenadas de los vectores de la base destino respecto de la base origen. Es decir, la matriz cuyas columnas son los vectores de $B'$ en coordenadas canónicas:
$$

M=\begin{pmatrix}1&1\\\\1&-1\end{pmatrix}

$$
2. Si $[v]_{\text{can}}$ es la coordenada canónica, entonces $[v]_{B'}=M^{-1}[v]_{\text{can}}$. Por tanto $P_{\text{can}\to B'}=M^{-1}$.
3. Calculamos $M^{-1}$. El determinante de $M$ es $-2$, así que
$$

M^{-1}=\frac{1}{-2}\begin{pmatrix}-1&-1\\\\-1&1\end{pmatrix}=\frac{1}{2}\begin{pmatrix}1&1\\\\1&-1\end{pmatrix}

$$
(Comprobación: $M^{-1}M=I$).

### 8. Ejemplo en el espacio de polinomios

Consideremos $\mathbb{R}_2[x]$, polinomios de grado a lo sumo 2. Una base canónica es $\{1,x,x^2\}$. Sea $p(x)=2+3x-x^2$. Sus coordenadas respecto a la base canónica son
$$

[p]\_B=\begin{pmatrix}2\\\\3\\\\-1\end{pmatrix}

$$

Si tomamos otra base, por ejemplo $B'=\{1,\,x-1,\,x^2-1\}$, podemos expresar cada vector de $B'$ con respecto a la base canónica y construir la matriz de cambio de base para obtener coordenadas de $p$ en $B'$ (procedimiento análogo al caso de $\mathbb{R}^n$).

### 9. Consejos prácticos y casos típicos

- Para probar independencia, organice los vectores como columnas y compute el rango (el uso de la eliminación gaussiana es el método estándar).
- Para encontrar una base de un subespacio generado por vectores, reduzca la matriz y seleccione las columnas pivote.
- Completar una base en $\mathbb{K}^n$: si tiene $k$ vectores L.I. con $k<n$, añada vectores canónicos (u otros) y pruebe que el conjunto sigue siendo L.I. hasta tener $n$ vectores.

### 10. Ejercicios resueltos (paso a paso)

**Ejercicio 1.** Determinar si $\{(1,0,1),(0,1,1),(1,1,2)\}$ es L.I. en $\mathbb{R}^3$.

Solución:

1. Planteamos $\alpha(1,0,1)+\beta(0,1,1)+\gamma(1,1,2)=(0,0,0)$.
2. Esto da el sistema
$$

\begin{cases}\alpha+\gamma=0\\\\ \beta+\gamma=0\\\\ \\alpha+\beta+2\gamma=0\end{cases}

$$
3. Restando la tercera ecuación por la suma de las dos primeras: $(\alpha+\beta+2\gamma)-(\alpha+\gamma)-(\beta+\gamma)=0\Rightarrow0=0$ (no aporta nueva información). De las dos primeras: $\alpha=-\gamma$ y $\beta=-\gamma$. Sustituyendo en la tercera: $-\gamma-\gamma+2\gamma=0$ lo que es cierto para cualquier $\gamma$. Así existe la solución no trivial $(\alpha,\beta,\gamma)=(-1,-1,1)$ (tomando $\gamma=1$).

Conclusión: el conjunto es L.D.

**Ejercicio 2.** Dados $v_1=(1,2,0),\ v_2=(0,1,1),\ v_3=(2,5,1)$, encontrar una base de su span.

Solución:

1. Formamos la matriz con columnas $A=\begin{pmatrix}1&0&2\\\\2&1&5\\\\0&1&1\end{pmatrix}$
2. Aplicamos eliminación (breve): restar 2 veces la primera columna de la tercera columna (esto en términos de columnas corresponde a verificar dependencia). Observamos que la tercera columna es $2\cdot$col1 + col2, ya que
$$
2\begin{pmatrix}1\\\\2\\\\0\end{pmatrix}+\begin{pmatrix}0\\\\1\\\\1\end{pmatrix}=\begin{pmatrix}2\\\\5\\\\1\end{pmatrix}
$$
3. Por tanto la tercera columna es combinación de las dos primeras y una base del span es $\{v_1,v_2\}$

### 11. Resumen

Resumen de lo aprendido en esta página:

- Espacio vectorial: definición y propiedades fundamentales.
- Subespacio: cómo comprobarlo (cerradura y existencia del 0).
- Combinación lineal y span (subespacio generado por un conjunto).
- Independencia / dependencia lineal y su comprobación mediante sistemas homogéneos.
- Uso de matrices y eliminación por filas para calcular rango y extraer bases.
- Base y dimensión: definición y unicidad de las coordenadas.
- Coordenadas respecto a una base y matriz de cambio de base.

#### Tabla de fórmulas y relaciones clave

| Término | Fórmula | Mini descripción |
|---|---|---|
| Combinación lineal | $v=\sum_{i=1}^k \alpha_i v_i$ | Expresión general de un vector como combinación de otros. |
| Span / subespacio generado | $\mathrm{span}(S)=\{\sum_{i=1}^k \alpha_i v_i:\ \alpha_i\in\mathbb{K}\}$ | Conjunto de todas las combinaciones lineales de $S$. |
| Dependencia lineal | $\exists\ (\alpha_1,\dots,\alpha_k)\neq(0,\dots,0):\ \sum_{i}\alpha_i v_i=0$ | Indica que hay una relación no trivial entre los vectores. |
| Independencia lineal | $\sum_i\alpha_i v_i=0\Rightarrow\alpha_i=0\ \forall i$ | Sólo la solución trivial al homogéneo. |
| Sistema homogéneo | $A x=0$ | Forma matricial para estudiar dependencia. |
| Rango | $\mathrm{rank}(A)=$ número de pivotes | Determina la dimensión del espacio generado por las columnas. |
| Base | $B$ base de $V$ | $B$ L.I. y $\mathrm{span}(B)=V$. |
| Dimensión | $\dim(V)=\|B\|$ | Número de vectores en una base. |
| Coordenadas | $[v]_B=(\alpha_1,\dots,\alpha_n)^T$ | Coordenadas de $v$ en la base $B$. |
| Cambio de base | $[v]_{B'}=P_{B\to B'}\,[v]_B$ | $P_{B\to B'}$ transforma coordenadas de $B$ a $B'$. |
| Inversa $2\times2$ | $\begin{pmatrix}a&b\\c&d\end{pmatrix}^{-1}=\dfrac{1}{ad-bc}\begin{pmatrix}d&-b\\-c&a\end{pmatrix}$ | Fórmula práctica usada en ejemplos. |


