# Espacio Dual y Base Dual

Explicamos qué es el espacio dual, cómo construir la base dual a partir de una base dada y cómo invertir el proceso.

## Definición

**El espacio dual** de un espacio vectorial $V$ sobre un cuerpo $K$ se denota

$$\mathbf{V^*}=\mathrm{Hom}_K(V,K)$$

y es el conjunto de todas las **formas lineales** (o funcionales lineales) $f:V\to K$.

**La base dual.** Si $B=\{v_1,\dots,v_n\}$ es una base de $V$, existe una única base

$$\mathbf{B^*}=\{f_1,\dots,f_n\}\subset V^*$$

que cumple la condición de Kronecker

$$\boxed{\;f_i(v_j)=\delta_{ij}\;}$$

En palabras: cada funcional $f_i$ "detecta" la componente del vector en la dirección $v_i$ y anula las demás.

**Resumen rápido (clave):**

- **Vector** $v\in V$: un objeto del espacio (coordenadas).
- **Covector / funcional** $f\in V^*$: una función lineal que asigna un escalar a cada vector (una "medida").

## Definiciones fundamentales y propósito

**1) Espacio dual ($V^*$).**

Si $V$ es un espacio vectorial sobre $K$, entonces

$$V^*=\{f:V\to K\mid f\text{ lineal }\}.$$

- **Estructura:** $V^*$ es un espacio vectorial con suma y multiplicación por escalares definidas punto a punto.
- **Dimensión:** si $\dim V=n<\infty$, entonces $\dim V^*=n$.

**2) Base dual ($B^*$).**

La base dual satisface

$$f_i(v_j)=\delta_{ij}.$$

**3) Metodología de cálculo (paso a paso).**

- Planteamiento: para cada $i$ consideramos una forma genérica. 

$$f_i(x_1,\dots,x_n)=a_{i1}x_1+\dots+a_{in}x_n$$

- Imponemos las condiciones $f_i(v_j)=\delta_{ij}$ para $j=1,\dots,n$ y resolvemos el sistema lineal para los coeficientes $a_{ik}$.

**4) Atajo matricial (muy útil).**

- Sea $M$ la matriz cuyas columnas son las coordenadas de los vectores de la base $B$:

$$M=[v_1\;v_2\;\dots\;v_n].$$

- Si $M$ es invertible, entonces las **filas** de $M^{-1}$ son las coordenadas de los funcionales $f_i$ (cada fila representa un $f_i$ en la base dual). Esto evita resolver $n$ sistemas por separado.

**5) ¿Para qué sirve? (aplicaciones / objetivo)**

- **Extracción de coordenadas:** si $w=c_1v_1+\dots+c_nv_n$, entonces

$$\boxed{\;c_i=f_i(w)\;}$$

- **Cambio de base:** facilita la comprensión de cómo transforman las formas con la inversa transpuesta.
- **Aplicaciones prácticas:** en física y geometría, los covectores representan magnitudes (gradientes, flujos) que aplicadas a vectores devuelven escalares.
- **Objetivo pedagógico/práctico:** simplificar cómputos, construir el isomorfismo canónico con el doble dual $V\cong V^{**}$ en dimensión finita.

## Cálculo de la base dual (procedimiento)

1. Sea $v_j$ la $j$-ésima de la base; su imagen por $f_i$ debe ser 1 si $i=j$ y 0 si $i\neq j$.
2. Escribir una forma genérica (por ejemplo $f(x)=a_1 x_1+\dots+a_n x_n$) y resolver el sistema para los coeficientes.

## Ejercicios

### Ejercicio 1

En $\mathbb{R}^2$ con $B=\{(1,2),(3,4)\}$, encontrar la base dual $B^*$.

???- example "Solución"
    Queremos hallar $f_1,f_2$ de la forma $f(x,y)=a x + b y$ tales que $f_i(v_j)=\delta_{ij}$ para
    $v_1=(1,2)$ y $v_2=(3,4)$.

    Para $f_1$ se obtiene el sistema

    \[\begin{cases}
    a+2b=1\\
    3a+4b=0
    \end{cases}\]

    Multiplicando la primera por $3$ y restando la segunda: $2b=3\Rightarrow b=3/2$, luego $a=1-2b=-2$. Así

    \[f_1(x,y)=-2x+\tfrac{3}{2}y.\]

    Para $f_2$ resolvemos

    \[\begin{cases}
    a+2b=0\\
    3a+4b=1
    \end{cases}\]

    De la primera $a=-2b$, sustituyendo en la segunda se obtiene $-6b+4b=1\Rightarrow b=-1/2$, $a=1$, por tanto

    \[f_2(x,y)=x-\tfrac{1}{2}y.\]

### Ejercicio 2

Dadas las formas $f_1(x,y)=x+2y$ y $f_2(x,y)=3x+5y$ (filas de $P^{-1}$), encontrar la base original.

???- example "Solución"
    Escribimos las formas como filas de la matriz

    \[Q=\begin{pmatrix}1 & 2\\ 3 & 5\end{pmatrix}.\]

    En la convención habitual del texto las filas de $Q$ coinciden con las filas de $P^{-1}$, donde las columnas de $P$ son los vectores de la base original. Luego

    \[P=Q^{-1}.\]

    Calculamos $\det(Q)=1\cdot5-2\cdot3=-1$, y

    \[Q^{-1}=\frac{1}{-1}\begin{pmatrix}5 & -2\\ -3 & 1\end{pmatrix}=\begin{pmatrix}-5 & 2\\ 3 & -1\end{pmatrix}.\]

    Por tanto las columnas de $P$ son $v_1=(-5,3)$ y $v_2=(2,-1)$, que forman la base original buscada.

### Ejercicio 3

Probar que si $B$ es base y $B^*$ su dual, entonces $\dim V = \dim V^*$.

???- example "Solución"
    Si $B$ tiene $n$ vectores, la base dual $B^*=\{f_1,\dots,f_n\}$ proporciona $n$ formas linealmente independientes (ninguna combinación no trivial puede anularse en todos los vectores de $B$), de modo que $\dim V^*\ge n$. Por otro lado, toda forma lineal está determinada por sus valores en $B$, luego $\dim V^*\le n$. Se concluye que $\dim V^*=n=\dim V$.

### Ejercicio 4

Sea $V=P_1[x]$ (polinomios de grado \le 1). Encontrar la base dual asociada a la base canónica $\{1,x\}$ respecto a la evaluación en puntos $0$ y $1$.

???- example "Solución"
    Identificamos $p\in P_1[x]$ con $p(a+bx)=a+bx$ y escribimos una forma general como $f(p)=\alpha a+\beta b$. Buscamos $f_1,f_2$ tales que

    \[f_1(1)=1,\ f_1(x)=0;\qquad f_2(1)=0,\ f_2(x)=1.\]

    Para $f_1$ se tiene $\alpha=1,\beta=0$, es decir $f_1(p)=a$ (extrae el coeficiente constante). Para $f_2$: $\alpha=0,\beta=1$, es decir $f_2(p)=b$ (extrae el coeficiente de $x$).

    En términos de evaluaciones en puntos, $f_1(p)=p(0)$ coincide con la primera forma; la segunda puede expresarse como $f_2(p)=p(1)-p(0)$ cuando se trabaja con valores en puntos, pero la forma más directa es tomar las proyecciones sobre las coordenadas: $f_1(a+bx)=a$, $f_2(a+bx)=b$.

### Ejercicio 5

Si $B$ cambia a $\tilde B$ mediante $P$, ¿cómo cambian las formas duales?

???- example "Solución"
    Si $P$ es la matriz de paso cuyas columnas son las coordenadas de $\tilde B$ en la base $B$, y si una forma tiene coordenadas columna $[\phi]_B$ en la base dual de $B$, entonces sus coordenadas en la base dual de $\tilde B$ vienen dadas por

    \[[\phi]_{\tilde B}=(P^{-1})^{T}[\phi]_B.\]

    En palabras: las formas duales se transforman mediante la inversa transpuesta de la matriz de cambio de base (esto equivale a multiplicar por $P^{-1}$ si se usan filas en lugar de columnas, según la convención de notación utilizada).
