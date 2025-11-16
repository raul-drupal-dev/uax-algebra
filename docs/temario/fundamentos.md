---
title: Fundamentos
---

## Fundamentos (Términos básicos y Operaciones)

En esta sección recogemos los conceptos y operaciones fundamentales que se usan de forma recurrente en álgebra lineal. El objetivo es ofrecer definiciones precisas, ejemplos resueltos paso a paso y una tabla de fórmulas de referencia.

### 1. Vectores y espacios $\mathbb{K}^n$

- Vector: un vector en $\mathbb{K}^n$ es una lista ordenada $v=(v_1,\dots,v_n)$ con $v_i\in\mathbb{K}$.
- Espacio $\mathbb{K}^n$: conjunto de todos los vectores de dimensión $n$ con suma y producto por escalares definidos componente a componente.
- Escalar: elemento de $\mathbb{K}$ (por ejemplo $\mathbb{R}$ o $\mathbb{C}$) que multiplica vectores.

Para $n\le 3$ los vectores se pueden representar gráficamente (puntos o flechas), lo que ayuda a entender operaciones como suma y proyección.

### 2. Operaciones básicas

Definimos las operaciones de suma y producto por escalares de forma componente a componente:

$$
v+w=(v_1+w_1,\dots,v_n+w_n),\qquad \alpha v=(\alpha v_1,\dots,\alpha v_n).
$$

Ejemplo 1 (suma y producto por escalar):

Sean $v=(1,2,3)$ y $w=(2,0,-1)$ en $\mathbb{R}^3$ y $\alpha=3$.

1. Suma: $v+w=(1+2,\,2+0,\,3+(-1))=(3,2,2)$.
2. Escalar: $\alpha v=3(1,2,3)=(3,6,9)$.

### 3. Producto escalar y ortogonalidad

El producto escalar (o dot product) entre $v,w\in\mathbb{K}^n$ es

$$
v\cdot w=\sum_{i=1}^n v_i w_i.
$$

Propiedades relevantes:

- $v\cdot w = w\cdot v$ (conmutativo).
- $v\cdot v=\|v\|_2^2\ge 0$.
- Si $v\cdot w=0$ decimos que $v$ y $w$ son ortogonales.

Ejemplo 2 (producto escalar):

Sea $v=(1,2,3)$ y $w=(2,0,-1)$.

$$
v\cdot w = 1\cdot2 + 2\cdot0 + 3\cdot(-1)=2+0-3=-1
$$

### 4. Normas y distancia

Norma euclídea (2-norma):

$$
\|v\|_2=\sqrt{v\cdot v}=\sqrt{\sum_{i=1}^n v_i^2}
$$

Otras normas útiles:

- Norma 1: $\|v\|_1=\sum_{i=1}^n |v_i|$.
- Norma infinito: $\|v\|_\infty=\max_i |v_i|$.

Distancia entre vectores: $d(v,w)=\|v-w\|$.

Ejemplo 3 (norma): para $v=(1,2,3)$,

$$
\|v\|_2=\sqrt{1^2+2^2+3^2}=\sqrt{14}
$$

### 5. Combinaciones lineales, span y subespacios

Dado $v_1,\dots,v_k\in V$, una combinación lineal es

$$
\alpha_1 v_1+\cdots+\alpha_k v_k,\quad \alpha_i\in\mathbb{K}
$$

El span (subespacio generado) es el conjunto de todas las combinaciones lineales y se escribe $\mathrm{span}\{v_1,\dots,v_k\}$.

Ejemplo 4: en $\mathbb{R}^2$, $\mathrm{span}\{(1,0)\}=$ la recta eje-x.

### 6. Matrices: definiciones y operaciones básicas

Una matriz $A\in M_{m\times n}(\mathbb{K})$ es un arreglo rectangular con $m$ filas y $n$ columnas. Operaciones fundamentales:

- Suma: definida entrada a entrada.
- Producto por escalar: cada entrada se multiplica por el escalar.
- Producto matriz-vector: si $A$ es $m\times n$ y $x\in\mathbb{K}^n$, entonces
  $$
  Ax=\begin{pmatrix}\sum_j a_{1j} x_j\\\\\vdots\\\\\sum_j a_{mj} x_j\end{pmatrix}\in\mathbb{K}^m
  $$
- Producto de matrices: composición de productos matriz-vector.
- Transpuesta: $A^T$ intercambia filas y columnas.

Ejemplo 5 (producto matriz-vector):

Sea $A=\begin{pmatrix}1&2\\0&1\\1&0\end{pmatrix}$ y $x=\begin{pmatrix}3\\4\end{pmatrix}$. Entonces

$$
Ax=\begin{pmatrix}1\cdot3+2\cdot4\\\\0\cdot3+1\cdot4\\\\1\cdot3+0\cdot4\end{pmatrix}=\begin{pmatrix}11\\\\4\\\\3\end{pmatrix}
$$

### 7. Inversa, rango y sistema lineales (breve)

- Una matriz cuadrada $A\in M_{n\times n}(\mathbb{K})$ es inversible si existe $A^{-1}$ tal que $AA^{-1}=A^{-1}A=I$.
- Rango: $\mathrm{rank}(A)$ es el número máximo de columnas linealmente independientes; también igual al número de pivotes en la reducción por filas.
- Sistemas lineales $Ax=b$: soluciones se obtienen por eliminación gaussiana; si $A$ es invertible la solución única es $x=A^{-1}b$.

### 8. Proyección y componente ortogonal (intuición)

La proyección ortogonal de $v$ sobre un vector no nulo $u$ es

$$
\mathrm{proj}_u(v)=\frac{v\cdot u}{u\cdot u}\,u.
$$

Esta proyección da la componente de $v$ paralela a $u$. La componente ortogonal (o residual) se obtiene como

$$
v_{\perp}=v-\mathrm{proj}_u(v),
$$

y satisface $v_{\perp}\cdot u=0$ (es decir, es ortogonal a $u$).

Función de ortogonalidad / test de ortogonalidad:

Definimos la prueba de ortogonalidad por la función escalar

$$
\mathrm{ort}(v,w)=v\cdot w.
$$

Entonces $v\perp w$ (se dice que son ortogonales) si y solo si $\mathrm{ort}(v,w)=0$. Si se prefiere un indicador booleano:

$$
\mathbf{1}_{\perp}(v,w)=\begin{cases}1,&v\cdot w=0,\\\\0,&\text{si }v\cdot w\ne0.\end{cases}
$$

Proyección sobre un subespacio $W$:

Si $W$ es un subespacio de $\mathbb{R}^n$ generado por las columnas de la matriz $A\in\mathbb{R}^{n\times k}$ (columnas independientes), la proyección ortogonal de $v$ sobre $W$ viene dada por la matriz proyectora

$$
P_W = A(A^T A)^{-1}A^T,
$$

y por tanto

$$
\mathrm{proj}_W(v)=P_W v = A(A^T A)^{-1}A^T v.
$$

Esta fórmula requiere que las columnas de $A$ sean linealmente independientes (para garantizar que $A^T A$ es invertible). La componente ortogonal respecto a $W$ es $v-v_{W}$ con $v_W=\mathrm{proj}_W(v)$.

Ejemplo (comprobación de ortogonalidad): en el ejercicio A anterior tomamos $v=(3,1)$ y $u=(1,1)$. Hemos obtenido
$$\mathrm{proj}_u(v)=(2,2),\qquad v_{\perp}=v-\mathrm{proj}_u(v)=(1,-1).$$
Comprobamos la ortogonalidad: $(1,-1)\cdot(1,1)=1-1=0$.

Nota práctica: para proyectar sobre una recta generada por $u$ se puede usar la fórmula escalar (primera fórmula); para proyectar sobre un plano o subespacio de dimensión mayor conviene usar la matriz proyectora $P_W$.

### 9. Ejercicios resueltos (rápidos)

Ejercicio A. Calcular la proyección de $v=(3,1)$ sobre $u=(1,1)$.

Solución: $v\cdot u=3+1=4$, $u\cdot u=1+1=2$, así
$$\mathrm{proj}_u(v)=\frac{4}{2}(1,1)=2(1,1)=(2,2).$$

Ejercicio B. Determinar si $v_1=(1,2,0)$, $v_2=(2,4,0)$ son linealmente independientes.

Solución: $v_2=2v_1$, por tanto son L.D. (dependientes).

### 10. Resumen y tabla de fórmulas

Resumen escueto:

- Definición de vector, suma, producto por escalar.
- Producto escalar y normas (distancia, ortogonalidad).
- Combinaciones lineales y span; subespacios.
- Matrices y producto matriz-vector; rango e inversa.
- Proyección ortogonal y descomposición en componentes.

Tabla de fórmulas (vista rápida):

| Término                        | Fórmula                                                                                            | Mini descripción                                        |
| ------------------------------ | -------------------------------------------------------------------------------------------------- | ------------------------------------------------------- |
| Suma de vectores               | $v+w=(v_1+w_1,\dots,v_n+w_n)$                                                                      | Suma componente a componente.                           |
| Producto por escalar           | $\alpha v=(\alpha v_1,\dots,\alpha v_n)$                                                           | Multiplicación componente a componente.                 |
| Producto escalar               | $v\cdot w=\sum_{i=1}^n v_iw_i$                                                                     | Mide "alineamiento"; define ortogonalidad.              |
| Norma 2                        | $\|v\|_2=\sqrt{v^2\cdot v^2}$                                                                      | Longitud euclídea.                                      |
| Proyección (sobre una recta)   | $\mathrm{proj}_u(v)=\dfrac{v\cdot u}{u\cdot u}\,u$                                                 | Componente de $v$ paralela a la recta generada por $u$. |
| Componente ortogonal           | $v_{\perp}=v-\mathrm{proj}_u(v)$                                                                   | Componente de $v$ paralela a la recta generada por $u$. |
| Proyector sobre subespacio $W$ | $P_W=A(A^T A)^{-1}A^T$, $\mathrm{proj}_W(v)=P_W v$                                                 | Matriz proyectora y fórmula para proyectar sobre $W$.   |
| Producto matriz-vector         | $Ax$                                                                                               | Suma lineal de columnas de $A$ con coeficientes en $x$. |
| Rango                          | $\mathrm{rank}(A)$                                                                                 | Nº de columnas independientes (pivotes).                |
| Inversa 2x2                    | $\begin{pmatrix}a&b\\c&d\end{pmatrix}^{-1}=\dfrac{1}{ad-bc}\begin{pmatrix}d&-b\\-c&a\end{pmatrix}$ | Fórmula práctica para invertir $2\times2$.              |
