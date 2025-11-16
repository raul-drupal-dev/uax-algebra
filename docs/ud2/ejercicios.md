# Álgebra Lineal — Unidad 2: Espacios Vectoriales

**Profesor:** Dr. Carlos Alberto Lastras Rodríguez  
**Fecha:** 29 de octubre de 2025

## 1. Espacios vectoriales y bases

**Ejercicio 1.1**  
Sea \( P_2 \) el conjunto de polinomios reales de grado a lo sumo 2.  
Compruebe que \( (P_2, +, \cdot) \) es un espacio vectorial sobre \( \mathbb{R} \).  
Indique además una base canónica y su dimensión.

**Ejercicio 1.2**  
Considere \( v_1 = (1, 0, 1),\ v_2 = (1, 1, 0),\ v_3 = (1, 1, 1),\ v_4 = (1, 2, 1) \) en \( \mathbb{R}^3 \).  
Determine qué subconjuntos son linealmente independientes.

**Ejercicio 1.3**  
Sea \( S = \{(1, 3, 4, 1), (2, 6, 8, 2), (2, 5, 7, 2)\} \subset \mathbb{R}^4 \).  
Obtenga una base de \( \text{span}(S) \) y su dimensión.

**Ejercicio 1.4**  
En \( P_3 \), estudie si \( \{1 + x, x + x^2, x^2 + x^3\} \) es un conjunto linealmente independiente.

## 2. Coordenadas y cambio de base

**Ejercicio 2.1**  
En \( \mathbb{R}^3 \), sea \( B = \{u_1 = (1, 1, 1), u_2 = (0, 1, 1), u_3 = (0, 0, 1)\} \).  
Exprese \( x = (2, 3, 1) \) en coordenadas respecto a \( B \).

**Ejercicio 2.2**  
En \( \mathbb{R}^3 \), sean

\[
B_1 = \{(1, 0, 1), (-1, 1, 1), (1, -1, 0)\}, \quad
B_2 = \{(2, 1, 1), (1, 1, 1), (1, -1, 1)\}.
\]

Calcule la matriz de paso de \( B_2 \) a \( B_1 \) y transforme las coordenadas de \( v = (1, 1, 1) \) de \( B_2 \) a \( B_1 \).

## 3. Subespacios, ecuaciones paramétricas y cartesianas

**Ejercicio 3.1**  
Determine si los siguientes subconjuntos de \( \mathbb{R}^3 \) son subespacios:

a) \( U = \{(a, 0, 0) : a \in \mathbb{R}\} \)  
b) \( W = \{(x, y, z) : x + y + z = 1\} \)

**Ejercicio 3.2**  
En \( \mathbb{R}^4 \), sea \( U = \text{span}\{(1, 0, 1, 1), (0, 1, 1, 0), (1, 1, 2, 1)\} \).  
Halle una base de \( U \) y \( \dim(U) \).

**Ejercicio 3.3**  
En \( \mathbb{R}^4 \), el subespacio \( U \) está dado por las ecuaciones paramétricas:

\[
x = s + t, \quad y = 2s, \quad z = s + t, \quad w = t \quad (s, t \in \mathbb{R}).
\]

Obtenga las ecuaciones cartesianas de \( U \).

**Ejercicio 3.4**  
En \( \mathbb{R}^4 \), sea \( U = \{(x, y, z, w) \in \mathbb{R}^4 : x - y + z = 0,\ y - w = 0\} \).  
Obtenga ecuaciones paramétricas y una base.

**Ejercicio 3.5**  
En \( \mathbb{R}^3 \), sean  

\[
U = \{(x, y, z) : x + y + z = 0\}, \quad W = \{(x, y, z) : y = z\}.
\]

Halle una base y la dimensión de \( U \cap W \).

**Ejercicio 3.6**  
En \( \mathbb{R}^3 \), sean  

\[
U = \text{span}\{(1, 0, -1), (0, 1, -1)\}, \quad W = \text{span}\{(1, 1, 0), (0, 0, 1)\}.
\]

Calcule \( \dim(U),\ \dim(W),\ \dim(U \cap W) \) y \( \dim(U + W) \).

## 4. Espacio cociente

**Ejercicio 4.1**  
En \( \mathbb{R}^3 \), sea \( U = \{(x, y, z) \in \mathbb{R}^3 : z = 0\} \).  
Describa una base de \( \mathbb{R}^3 / U \) y su dimensión.

## 5. Problemas integradores

**Ejercicio 5.1**  
En \( \mathbb{R}^3 \), considere

\[
B_1 = \{(1, 0, 1), (0, 1, 1), (1, 1, 0)\}, \quad
B_2 = \{(1, 1, 1), (1, 0, 0), (0, 1, 0)\}.
\]

a) Calcule la matriz de paso \( M \) de \( B*2 \) a \( B_1 \).  
b) Sea \( x = (2, 3, 1) \). Halle \( [x]*{B*2} \) y luego \( [x]*{B*1} = M [x]*{B_2} \).  
c) Defina \( U = \text{span}\{(1, 0, 1), (0, 1, 1)\} \) y obtenga ecuaciones cartesianas de \( U \).

**Ejercicio 5.2**  
En \( \mathbb{R}^4 \), sean

\[
U = \{x \in \mathbb{R}^4 : x_1 + x_2 - x_3 = 0,\ x_2 + x_4 = 0\}, \quad
W = \{x \in \mathbb{R}^4 : x_1 - x_2 = 0,\ x_3 - x_4 = 0\}.
\]

a) Halle una base y la dimensión de \( U \cap W \).  
b) Determine \( \dim(U + W) \) mediante la fórmula de las dimensiones.

**Ejercicio 5.3**  
Considere el subespacio \( U \subset \mathbb{R}^5 \) definido por

\[
\begin{cases}
x_1 + x_2 + x_3 = 0,\\
x_3 - x_4 = 0,\\
x_2 + x_5 = 0.
\end{cases}
\]

a) Exprese \( U \) en forma paramétrica con el mínimo número de parámetros.  
b) Dé una base de \( U \) y su dimensión.

**Ejercicio 5.4**  
Sea \( S = \{u_1, u_2, u_3\} \subset \mathbb{R}^4 \) con  

\[
u_1 = (1, 2, 0, 1), \quad u_2 = (0, 1, 1, 1), \quad u_3 = (1, 3, 1, 2).
\]

Determine si \( S \) es linealmente independiente usando el rango de la matriz con filas \( u_i \) y, en su caso, complete \( S \) a una base de \( \mathbb{R}^4 \).

**Ejercicio 5.5**  
Sea \( U \subset \mathbb{R}^n \) dado por \( X = A P \), con

\[
A = [u_1 \mid \dots \mid u_r] \in \mathbb{R}^{n \times r}, \quad \text{rango}(A) = r.
\]

Explique cómo obtener ecuaciones cartesianas \( B X = 0 \) y cuántas ecuaciones independientes tendrá \( B \).

## 6. Ejercicios adicionales

**Ejercicio 6.1**  
Sea \( S = \{v_1, v_2, v_3\} \subset \mathbb{R}^3 \) con  

\[
v_1 = (1, 0, 1), \quad v_2 = (2, 1, 3), \quad v_3 = (3, 2, 4).
\]

Determine si \( S \) es linealmente independiente. En caso contrario, exprese uno de los vectores como combinación lineal de los otros.

**Ejercicio 6.2**  
Sea \( U = \{(x, y, z, t) \in \mathbb{R}^4 : x + 2y + z - t = 0,\ y + z + t = 0\} \).  
Obtenga una base y la dimensión de \( U \).

**Ejercicio 6.3**  
Sea

\[
A =
\begin{pmatrix}
1 & 2 & 1 \\
0 & 1 & 1 \\
1 & 3 & 2
\end{pmatrix}.
\]

Determine \( \text{rg}(A) \) y una base del núcleo \( \text{Ker}(A) \).  
Verifique el teorema rango-nulidad.

**Ejercicio 6.4**  
Sea \( U = \text{span}\{(1, 1, 0), (1, -1, 0)\} \subset \mathbb{R}^3 \).  
Determine una base de \( U^{\perp} \).

**Ejercicio 6.5**  
Sea \( v = (1, 2, 2) \in \mathbb{R}^3 \) y \( u = (3, 4, 5) \).  
Calcule la proyección ortogonal de \( u \) sobre la recta generada por \( v \).

**Ejercicio 6.6**  
Sea \( T : \mathbb{R}^3 \to \mathbb{R}^3 \) definida por  

\[
T(x, y, z) = (x + 2y, y + z, x + y + z).
\]

Determine \( \text{Im}(T) \), \( \text{Ker}(T) \) y verifique el teorema rango-nulidad.

**Ejercicio 6.7**  
Sea \( T : \mathbb{R}^2 \to \mathbb{R}^2 \) definida por  

\[
T(x, y) = (x + 2y, 3x + y).
\]
a) Halle la matriz de \( T \) en la base canónica.  
b) Sea \( B = \{(1, 1), (1, -1)\} \). Obtenga la matriz de \( T \) en la base \( B \).  
c) Compruebe que ambas están relacionadas por  
\[
[T]_B = P^{-1}[T]_{\text{can}}P.
\]

**Ejercicio 6.8**  
Sea

\[
A =
\begin{pmatrix}
1 & 1 & 2 \\
2 & 3 & 5 \\
1 & 2 & 3
\end{pmatrix}.
\]

a) Determine \( \text{rg}(A) \).  
b) Describa \( \text{Im}(A) \) y \( \text{Ker}(A) \).  
c) Determine si el sistema \( A x = (2, 5, 3)^{\top} \) es compatible.
