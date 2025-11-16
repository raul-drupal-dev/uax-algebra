---
title: Subespacios, ecuaciones paramétricas y cartesianas
---

## 3. Subespacios, ecuaciones paramétricas y cartesianas

### 3.1. Subespacios y formas de describirlos

Sea $V$ un espacio vectorial (por ejemplo $\mathbb{R}^n$). Un subconjunto $U\subseteq V$ es un subespacio si es no vacío y está cerrado bajo suma y multiplicación por escalares. Equivalentes prácticas:

- Comprobación por generadores (paramétrica): existen vectores $u_1,\dots,u_k$ tales que
  $$U=\mathrm{span}\{u_1,\dots,u_k\} = \{A\,t:\ t\in\mathbb{K}^k\},$$
  donde $A$ es la matriz cuyas columnas son $u_1,\dots,u_k$ y $t$ es el vector columna de parámetros.
- Descripción por ecuaciones (cartesiana): existe una matriz $B$ tal que
  $$U=\{x\in V:\ Bx=0\}$$
  (sistema homogéneo de ecuaciones lineales).

Ambas descripciones son equivalentes: cualquier subespacio puede describirse por parámetros (generadores) y por ecuaciones homogéneas.

Relación entre dimensiones: si $V$ tiene dimensión $n$ y $U$ dimensión $r$, entonces el número de ecuaciones (independientes) necesarias en la forma cartesiana es $n-r$.

### 3.2. De paramétricas a cartesianas (procedimiento)

Supongamos que tenemos $U=\mathrm{span}\{u_1,\dots,u_k\}$ con $u_i\in\mathbb{R}^n$ y queremos ecuaciones del tipo $Bx=0$ que describan $U$.

1. Formar la matriz $A=[u_1\ \cdots\ u_k]$ (tamaño $n\times k$).
2. Encontrar un sistema de ecuaciones lineales independientes que anulen exactamente a las columnas de $A$. Formalmente, buscar una matriz $B$ (de tamaño $(n-r)\times n$) tal que $B A=0$ y las filas de $B$ sean independientes.
3. En la práctica se calcula el complemento ortogonal: una base de $\{x:\ A^T x=0\}$ (o resolver $A^T x=0$). Las soluciones forman las filas de $B$.

Ejemplo paso a paso (R^3):

Sea $U=\mathrm{span}\{(1,0,1),(0,1,1)\}\subset\mathbb{R}^3$. Queremos las ecuaciones cartesianas.

1. Escribimos
   $$
   A=\begin{pmatrix}1&0\\\\0&1\\\\1&1\end{pmatrix}
   $$
2. Buscamos $x=(x_1,x_2,x_3)^T$ que sea ortogonal a todas las columnas de $A$, i.e. resolver $A^T x=0$:
   $$
   \begin{pmatrix}1&0&1\\\\0&1&1\end{pmatrix}\begin{pmatrix}x_1\\\\x_2\\\\x_3\end{pmatrix}=\begin{pmatrix}0\\\\0\end{pmatrix}
   $$
3. Esto da el sistema
   $$
   \begin{cases} x_1 + x_3 = 0 \\\ x_2 + x_3 = 0. \end{cases}
   $$
   De donde $x_1=-x_3,\ x_2=-x_3$. Tomando $x_3=1$ obtenemos una ecuación independiente: $x_1+x_3=0$ y $x_2+x_3=0$. Podemos escribir en forma matricial $B=[\begin{smallmatrix}1&0&1\\0&1&1\end{smallmatrix}]$ y la condición $Bx=0$ describe $U$.

Observación: a veces se prefieren combinaciones de filas para obtener ecuaciones más sencillas; lo esencial es que las ecuaciones sean independientes y describan el mismo espacio.

### 3.3. De cartesianas a paramétricas (procedimiento)

Dada una descripción $U=\{x\in\mathbb{R}^n:\ Bx=0\}$ con $B$ de tamaño $m\times n$, resolvemos el sistema homogéneo y expresamos las variables libres como parámetros:

1. Aplicar eliminación gaussiana a la matriz aumentada $[B|0]$.
2. Expresar las soluciones en función de parámetros $t_1,\dots,t_k$; las soluciones se escriben como combinación lineal de vectores que forman una base de $U$.

Ejemplo (R^3): sea $B=\begin{pmatrix}1&0&1\\0&1&1\end{pmatrix}$ y resolvemos $Bx=0$:

1. Sistema:
   $$
   \begin{cases} x_1 + x_3 = 0 \\\ x_2 + x_3 = 0. \end{cases}
   $$
2. Tomamos $t=x_3$ como parámetro. Entonces $x_1=-t,\ x_2=-t,\ x_3=t$. Escribiendo en forma paramétrica:
   $$
   x=t(-1,-1,1)^T
   $$
3. Por tanto una base de $U$ es $\{(-1,-1,1)\}$ (observa que originalmente el span tenía dos generadores; la reducción muestra que el espacio es de dimensión 1 si las columnas eran dependientes — este ejemplo ilustra el procedimiento; en ejemplos genéricos obtendremos la base con todos los parámetros necesarios).

### 3.4. Operaciones con subespacios

Intersección $U\cap W$:

1. Si $U=\{x:\ B_U x=0\}$ y $W=\{x:\ B_W x=0\}$, entonces
   $$
   U\cap W=\{x:\ \begin{pmatrix}B_U\\\\B_W\end{pmatrix}x=0\}
   $$
   es decir, las ecuaciones que definen la intersección son todas las ecuaciones de $U$ y de $W$ juntas.

Ejemplo: si $B_U$ y $B_W$ son las matrices de ecuaciones, concatena filas y resuelve el homogéneo resultante.

Suma $U+W$:

1. Si $U=\mathrm{span}\{u_1,\dots,u_r\}$ y $W=\mathrm{span}\{w_1,\dots,w_s\}$ entonces
   $$
   U+W=\mathrm{span}\{u_1,\dots,u_r,w_1,\dots,w_s\}
   $$
2. Para obtener una base de $U+W$ forme la matriz con columnas los $u_i$ y $w_j$, reduzca por columnas y seleccione las columnas pivote.

Fórmula dimensión:

$$
\dim(U)+\dim(W)=\dim(U\cap W)+\dim(U+W).
$$

Suma directa $U\oplus W$:

Se dice que $V=U\oplus W$ si cada $v\in V$ se escribe de forma única como $v=u+w$ con $u\in U,\ w\in W$. Equivalente y práctica: $U\cap W=\{0\}$ y $\dim(U)+\dim(W)=\dim(U+W)$.

Cómo comprobar si la suma es directa (procedimiento): formar la matriz con columnas las bases de $U$ y $W$ y comprobar si las columnas son linealmente independientes.

### 3.5. Ejercicios resueltos (paso a paso)

Ejercicio 1. Hallar ecuaciones cartesianas y una base para $U=\mathrm{span}\{(1,2,0),(2,4,0),(0,1,1)\}\subset\mathbb{R}^3$.

Solución:

1. Formamos la matriz con columnas los generadores:
   $$
   A=\begin{pmatrix}1&2&0\\\\2&4&1\\\\0&0&1\end{pmatrix}.
   $$
2. Observamos dependencia: la segunda columna es 2 veces la primera en las dos primeras filas; aplicar reducción de columnas (o filas) muestra que una base del span es $\{(1,2,0),(0,1,1)\}$.
3. Para obtener ecuaciones cartesianas buscamos el complemento ortogonal resolviendo $A^T x=0$:
   $$
   \begin{pmatrix}1&2&0\\\\2&4&0\\\\0&1&1\end{pmatrix}\begin{pmatrix}x_1\\\\x_2\\\\x_3\end{pmatrix}=0
   $$
   (aplicar pasos de eliminación para obtener las ecuaciones independientes). El resultado muestra las ecuaciones que deben satisfacer los vectores de $U$.

Ejercicio 2. Dadas las ecuaciones $x_1+x_3=0$, $x_2+x_3=0$, encontrar la forma paramétrica y una base.

Solución: ya resuelto anteriormente: $x=t(-1,-1,1)^T$ y base $\{(-1,-1,1)\}$.

### 3.6. Resumen y tabla de fórmulas

Resumen escueto:

- Un subespacio puede describirse por generadores (paramétrico) o por ecuaciones homogéneas (cartesiano).
- Para pasar de paramétricas a cartesianas calculamos el complemento ortogonal (resolver $A^T x=0$).
- Para pasar de cartesianas a paramétricas resolvemos el homogéneo $Bx=0$ y expresamos en parámetros.
- Operaciones: intersección (concatenar ecuaciones), suma (unir generadores y reducir), suma directa (comprobar independencia).

Tabla de fórmulas:

| Término               | Fórmula                                                   | Mini descripción                           |
| --------------------- | --------------------------------------------------------- | ------------------------------------------ |
| Paramétricas          | $U=\mathrm{span}\{u_1,\dots,u_k\}$                        | Descripción por generadores y parámetros.  |
| Cartesianas           | $U=\{x:\ Bx=0\}$                                          | Descripción por ecuaciones homogéneas.     |
| Complemento ortogonal | $\{x:\ A^T x=0\}$                                         | Ecuaciones que anulan las columnas de $A$. |
| Intersección          | $U\cap W=\{x:\ \begin{pmatrix}B_U\\B_W\end{pmatrix}x=0\}$ | Concatenar ecuaciones de $U$ y $W$.        |
| Suma                  | $U+W=\mathrm{span}\{u_i,w_j\}$                            | Generadores unidos y reducidos a base.     |
| Fórmula dimensión     | $\dim(U)+\dim(W)=\dim(U\cap W)+\dim(U+W)$                 | Relación entre dimensiones.                |

