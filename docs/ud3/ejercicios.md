# UD3 — Ejercicios integradores (Aplicaciones lineales)

_Las soluciones y explicaciones están colapsadas por defecto para mejorar la lectura. Abre “Pista” o “Solución paso a paso” solo cuando lo necesites._

!!! info "Cómo usar esta hoja" 
    - Avanza en orden: de lo más mecánico a lo más “de examen”. 
    - En cada ejercicio: **enunciado → pista → solución**. - En cálculos con matrices, se muestran operaciones elementales y reducciones.

---

## 1) Aplicaciones lineales (definición, propiedades)

???- tip "Recordatorio rápido"
    Una aplicación $T:V\to W$ es lineal si para todo $u,v\in V$ y $\alpha\in\mathbb{K}$:

    $$T(u+v)=T(u)+T(v),\qquad T(\alpha u)=\alpha T(u).$$

### Test 1.1 (conceptos)

¿Cuál de las siguientes afirmaciones es **siempre** cierta para una aplicación lineal $T$?

a) $T(u\cdot v)=T(u)\cdot T(v)$.

b) $T(0)=0$.

c) $T(u)\neq 0$ para todo $u\neq 0$.

d) $T(u+v)=T(u)\,T(v)$.

???- example "Respuesta y explicación"
    **Correcta: b)**.

    - Si $T$ es lineal, entonces $T(0)=T(0\cdot u)=0\cdot T(u)=0$.
    - Las opciones a) y d) introducen productos que no forman parte de la definición.
    - La opción c) falla si existe un vector no nulo en el núcleo.

### Ejercicio 1.2: ¿Es lineal?

#### Enunciado

Decide si $T:\mathbb{R}^2\to\mathbb{R}^2$ dada por

$$T(x,y)=(2x-y,\;x+3y)$$

es lineal.

???- tip "Pista"
    En $2\\times 2$, es isomorfismo si el determinante no es cero.

???- example "Solución paso a paso" 
    1) Calculamos el determinante:
    Sea $u=(x_1,y_1)$ y $v=(x_2,y_2)$.

    1) **Aditividad**:

    \begin{align*}
    T(u+v) &= T(x_1+x_2,\;y_1+y_2)\\
           &= (2(x_1+x_2)-(y_1+y_2),\; (x_1+x_2)+3(y_1+y_2))\\
           &= (2x_1-y_1,\;x_1+3y_1) + (2x_2-y_2,\;x_2+3y_2)\\
           &= T(u)+T(v).
    \end{align*}

    2) **Homogeneidad**: para $\alpha\in\mathbb{R}$,

    \begin{align*}
    T(\alpha u) &= T(\alpha x_1,\alpha y_1) = (2\alpha x_1-\alpha y_1,\;\alpha x_1+3\alpha y_1)\\
                 &= \alpha(2x_1-y_1,\;x_1+3y_1)=\alpha T(u).
    \end{align*}

    **Conclusión:** $T$ es lineal.

### Ejercicio 1.3: ¿Es lineal?

#### Enunciado

Decide si $S:\mathbb{R}^2\to\mathbb{R}^2$ dada por

$$S(x,y)=(x+1,\;y)$$

es lineal.

???- tip "Pista"
    Evalúa $S(0,0)$.

???- example "Solución paso a paso"
    Si fuese lineal, debería cumplirse $S(0,0)=(0,0)$.

    $$S(0,0)=(0+1,0)=(1,0)\neq(0,0).$$

    **Conclusión:** $S$ no es lineal.

### Ejercicio 1.4: Construir una aplicación lineal a partir de imágenes

#### Enunciado

Sea $T:\mathbb{R}^2\to\mathbb{R}^3$ lineal y supón que

$$T(1,0)=(1,-1,2),\qquad T(0,1)=(0,3,1).$$

1. Calcula $T(2,-1)$.

2. Da una fórmula de $T(x,y)$.

???- tip "Pista"
    Usa que $(x,y)=x(1,0)+y(0,1)$ y aplica linealidad.

???- example "Solución paso a paso"
    Como $(x,y)=x(1,0)+y(0,1)$,

    \begin{align*}
    T(x,y) &= x\,T(1,0)+y\,T(0,1)\\
           &= x(1,-1,2)+y(0,3,1)\\
           &= (x,\;-x+3y,\;2x+y).
    \end{align*}

    1) Para $(2,-1)$:

    $$T(2,-1)=(2,\;-2+3(-1),\;4+(-1))=(2,-5,3).$$

### Ejercicio 1.5: Linealidad en polinomios (derivada)

#### Enunciado

Sea $D:P_2\to P_1$ definida por $D(p)=p'$.

1. Demuestra que $D$ es lineal.

2. Calcula $D\,(2+3x-x^2)$.

???- tip "Pista"
    Usa $(p+q)'=p'+q'$ y $(\alpha p)'=\alpha p'$.

???- example "Solución paso a paso" 

    1) Sean $p,q\in P_2$ y $\alpha\in\mathbb{R}$.

    \begin{align*}
    D(p+q) &= (p+q)' = p'+q' = D(p)+D(q),\\
    D(\alpha p) &= (\alpha p)' = \alpha p' = \alpha D(p).
    \end{align*}

    Luego $D$ es lineal.

    2) Derivamos:

    $$D\,(2+3x-x^2)=(2+3x-x^2)'=0+3-2x=3-2x.$$

### Ejercicio 1.6: Comprobar linealidad por un contraejemplo

#### Enunciado

Decide si $F:\mathbb{R}^2\to\mathbb{R}$ definida por

$$F(x,y)=x+y+1$$

es lineal.

???- tip "Pista"
    Si es lineal, debe cumplirse $F(0,0)=0$.

???- example "Solución paso a paso"
    $$F(0,0)=0+0+1=1\neq 0.$$

    **Conclusión:** $F$ no es lineal.

### Test 1.7 (combinaciones de aplicaciones)

Si $T$ y $S$ son lineales $V\to W$, ¿cuál de las siguientes aplicaciones es **siempre** lineal?

a) $U(v)=T(v)\cdot S(v)$.

b) $U(v)=T(v)+S(v)$.

c) $U(v)=\|T(v)\|$.

d) $U(v)=T(v)+w_0$ (con $w_0\neq 0$ fijo).

???- example "Respuesta y explicación"
    **Correcta: b)**.

    - La suma de lineales es lineal.
    - Producto, norma y traslación por un vector fijo no preservan en general la linealidad.

---

## 2) Núcleo e imagen

!!! info "Idea clave"
    Para $T:V\to W$ lineal:

    - $\ker(T)=\{v\in V: T(v)=0\}$.
    - $\operatorname{Im}(T)=\{T(v): v\in V\}$.
    - **Teorema rango-nulidad:** $\dim(V)=\dim(\ker T)+\dim(\operatorname{Im} T)$.

### Test 2.1 (rango-nulidad)

Sea $T:\mathbb{R}^4\to\mathbb{R}^3$ lineal con $\dim(\ker T)=2$. Entonces $\dim(\operatorname{Im}T)$ vale:

a) 1

b) 2

c) 3

d) 4

???- example "Respuesta y explicación"
    **Correcta: b)**.

    Por rango-nulidad:

    $$4 = \dim(\ker T) + \dim(\operatorname{Im}T)=2+\dim(\operatorname{Im}T)\Rightarrow \dim(\operatorname{Im}T)=2.$$

### Ejercicio 2.2: Núcleo e imagen de una matriz (con reducción)

#### Enunciado

Sea $T:\mathbb{R}^3\to\mathbb{R}^3$ dada por $T(x)=Ax$, con

$$
A=\begin{pmatrix}
1&1&0\\
2&2&0\\
0&1&1
\end{pmatrix}.
$$

1. Calcula una base de $\ker(T)$.

2. Calcula una base de $\operatorname{Im}(T)$.

???- tip "Pista"
    - Para el núcleo: resuelve $Ax=0$. 
    - Para la imagen: mira columnas pivote tras reducir $A$.

???- example "Solución paso a paso"
    **1) Núcleo**. Resolvemos $Ax=0$ con $x=(x,y,z)$.

    \begin{align*}
    x+y &= 0\\
    2x+2y &= 0\\
    y+z &= 0
    \end{align*}

    La segunda ecuación es redundante. De la primera: $y=-x$. De la tercera: $z=-y=x$.

    Por tanto:

    $$(x,y,z)=(x,-x,x)=x(1,-1,1).$$

    Luego:

    $$\ker(T)=\operatorname{span}\{(1,-1,1)\}.$$

    **2) Imagen**. Las columnas de $A$ son

    $$c_1=(1,2,0),\quad c_2=(1,2,1),\quad c_3=(0,0,1).$$

    Observa que $c_2=c_1+c_3$. Por tanto, una base de la imagen puede ser

    $$\operatorname{Im}(T)=\operatorname{span}\{(1,2,0),(0,0,1)\}.$$

    (Rango $=2$ y nulidad $=1$, coherente con $3=2+1$.)

### Ejercicio 2.3: Núcleo de una aplicación $\mathbb{R}^3\to\mathbb{R}^2$

#### Enunciado

Sea $T:\mathbb{R}^3\to\mathbb{R}^2$,

$$T(x,y,z)=(x+2y-z,\;3x+y+z).$$

1. Halla $\ker(T)$.

2. Decide si $T$ es sobreyectiva.

???- tip "Pista"
    Plantea el sistema $T(x,y,z)=(0,0)$ y usa rango-nulidad para la sobreyectividad.

???- example "Solución paso a paso"
    **1) Núcleo**. Resolver:

    \begin{align*}
    x+2y-z &= 0\\
    3x+y+z &= 0
    \end{align*}

    De la primera: $x=z-2y$.

    Sustituimos en la segunda:

    \begin{align*}
    3(z-2y)+y+z &= 0\\
    3z-6y+y+z &= 0\\
    4z-5y &= 0 \Rightarrow y=\frac{4}{5}z.
    \end{align*}

    Entonces

    $$x=z-2\cdot\frac{4}{5}z=z-\frac{8}{5}z=-\frac{3}{5}z.$$

    Tomamos $z=5t$:

    $$(x,y,z)=(-3t,4t,5t)=t(-3,4,5).$$

    Por tanto:

    $$\ker(T)=\operatorname{span}\{(-3,4,5)\}.$$

    **2) Sobreyectiva**. Como el codominio es $\mathbb{R}^2$, basta ver si el rango es 2.

    Matriz asociada (bases canónicas):

    $$A=\begin{pmatrix}1&2&-1\\3&1&1\end{pmatrix}.$$

    Las filas son linealmente independientes (por ejemplo, el determinante del subbloque de columnas 1-2 es $1\cdot 1-3\cdot 2=-5\neq 0$), así que $\operatorname{rg}(A)=2$.

    Luego $\operatorname{Im}(T)=\mathbb{R}^2$ y $T$ es **sobreyectiva**.

### Ejercicio 2.4: ¿Pertenece a la imagen? (sistema $Ax=b$)

#### Enunciado

Considera la aplicación del Ejercicio 2.2, con

$$
A=\begin{pmatrix}
1&1&0\\
2&2&0\\
0&1&1
\end{pmatrix}.
$$

Decide si los siguientes vectores pertenecen a $\operatorname{Im}(T)$:

1. $b_1=(1,0,0)$

2. $b_2=(3,6,1)$

En caso afirmativo, encuentra **un** vector $x$ tal que $Ax=b$.

???- tip "Pista"
    Resuelve $Ax=b$ por reducción. Si aparece una fila del tipo $(0\ 0\ 0\ |\ 1)$, no hay solución.

???- example "Solución paso a paso"
    Trabajamos con la matriz ampliada.

    **1) Para $b_1=(1,0,0)$**:

    $$\left(\begin{array}{ccc|c}
    1&1&0&1\\
    2&2&0&0\\
    0&1&1&0
    \end{array}\right)$$

    Hacemos $R_2\leftarrow R_2-2R_1$:

    $$\left(\begin{array}{ccc|c}
    1&1&0&1\\
    0&0&0&-2\\
    0&1&1&0
    \end{array}\right)$$

    La fila $[0\ 0\ 0\ |\ -2]$ implica **incompatibilidad**.

    **Conclusión:** $b_1\notin\operatorname{Im}(T)$.

    **2) Para $b_2=(3,6,1)$**:

    $$\left(\begin{array}{ccc|c}
    1&1&0&3\\
    2&2&0&6\\
    0&1&1&1
    \end{array}\right)$$

    $R_2\leftarrow R_2-2R_1$:

    $$\left(\begin{array}{ccc|c}
    1&1&0&3\\
    0&0&0&0\\
    0&1&1&1
    \end{array}\right)$$

    Es compatible. De la tercera fila: $y+z=1$.
    De la primera: $x+y=3$.

    Tomando $z=t$, entonces $y=1-t$ y $x=3-(1-t)=2+t$.

    Por ejemplo, con $t=0$:

    $$x=(2,1,0),\quad Ax=(3,6,1)=b_2.$$

### Ejercicio 2.5: Describir la imagen como ecuación cartesiana

#### Enunciado

Para la matriz del Ejercicio 2.2, describe $\operatorname{Im}(T)$ como el conjunto de vectores $(u,v,w)\in\mathbb{R}^3$ que verifican una ecuación lineal.

???- tip "Pista"
    Si una base de la imagen es $(1,2,0)$ y $(0,0,1)$, parametriza y elimina parámetros.

???- example "Solución paso a paso"
    Sabemos que

    $$\operatorname{Im}(T)=\operatorname{span}\{(1,2,0),(0,0,1)\}.$$

    Entonces cualquier vector de la imagen es

    $$(u,v,w)=s(1,2,0)+t(0,0,1)=(s,2s,t).$$

    Eliminando parámetros: $v=2u$.

    Por tanto:

    $$\operatorname{Im}(T)=\{(u,v,w)\in\mathbb{R}^3: v-2u=0\}.$$

---

## 3) Inyectiva, sobreyectiva e isomorfismos

!!! info "Guía práctica (muy de examen)" 
    - $T$ es **inyectiva** $\Leftrightarrow \ker(T)=\{0\}$. 
    - Si $T:\mathbb{R}^n\to\mathbb{R}^m$: 
    - Si $n>m$, **no** puede ser inyectiva. 
    - Si $n<m$, **no** puede ser sobreyectiva.

### Test 3.1 (dimensiones)

¿Cuál es la afirmación correcta?

a) Existe una aplicación lineal inyectiva $\mathbb{R}^2\to\mathbb{R}^1$.

b) Existe una aplicación lineal sobreyectiva $\mathbb{R}^2\to\mathbb{R}^3$.

c) Toda aplicación lineal $\mathbb{R}^3\to\mathbb{R}^3$ es isomorfismo.

d) Existe una aplicación lineal inyectiva $\mathbb{R}^2\to\mathbb{R}^3$.

???- tip "Respuesta y explicación"
    **Correcta: d)**.

    - Inyectiva $\mathbb{R}^2\to\mathbb{R}^1$ es imposible (dimensión baja en codominio).
    - Sobreyectiva $\mathbb{R}^2\to\mathbb{R}^3$ es imposible (dimensión alta en codominio).
    - En $\mathbb{R}^3\to\mathbb{R}^3$ hace falta que el determinante sea no nulo (no siempre pasa).

### Ejercicio 3.2: Inyectiva/sobreyectiva desde la matriz

#### Enunciado

Sea $T:\mathbb{R}^3\to\mathbb{R}^3$ con matriz

$$
A=\begin{pmatrix}
1&0&2\\
0&1&-1\\
2&0&4
\end{pmatrix}.
$$

Decide si $T$ es inyectiva, sobreyectiva e isomorfismo.

???- tip "Pista"
    Reduce por filas o detecta dependencia: ¿una fila es combinación de otra?

???- example "Solución paso a paso"
    Observa que la fila 3 es $2$ veces la fila 1:

    $$(2,0,4)=2(1,0,2).$$

    Por tanto, las filas no son L.I. y el rango es $\operatorname{rg}(A)<3$.

    - Si $\operatorname{rg}(A)<3$, entonces $\dim(\operatorname{Im}T)<3$, así que **no es sobreyectiva**.
    - Además, por rango-nulidad: $\dim(\ker T)=3-\operatorname{rg}(A)>0$, luego el núcleo no es trivial y **no es inyectiva**.

    **Conclusión:** no es isomorfismo.

### Ejercicio 3.3: Isomorfismo con determinante

#### Enunciado

Sea $T:\mathbb{R}^2\to\mathbb{R}^2$ con matriz

$$A=\begin{pmatrix}1&2\\3&-1\end{pmatrix}.$$

1. Decide si $T$ es isomorfismo.

2. Si lo es, calcula $T^{-1}$ (matriz).

???- tip "Pista"
    En $2\times 2$, $T$ es isomorfismo $\Leftrightarrow \det(A)\neq 0$. Luego usa la fórmula de la inversa.

???- example "Solución paso a paso" 
    1) Calculamos el determinante:

    $$\det(A)=1\cdot(-1)-3\cdot 2=-1-6=-7\neq 0.$$

    Luego $T$ es isomorfismo.

    2) Inversa de una $2\times 2$:

    Si $A=\begin{pmatrix}a&b\\c&d\end{pmatrix}$, entonces

    $$A^{-1}=\frac{1}{ad-bc}\begin{pmatrix}d&-b\\-c&a\end{pmatrix}.$$

    Aquí $a=1,b=2,c=3,d=-1$:

    $$A^{-1}=\frac{1}{-7}\begin{pmatrix}-1&-2\\-3&1\end{pmatrix}=\begin{pmatrix}\frac{1}{7}&\frac{2}{7}\\\frac{3}{7}&-\frac{1}{7}\end{pmatrix}.$$

### Ejercicio 3.4: Parámetro para inyectividad/sobreyectividad

#### Enunciado

Sea $T_k:\mathbb{R}^2\to\mathbb{R}^2$ con matriz

$$A_k=\begin{pmatrix}1&k\\2&2\end{pmatrix}.$$

1. ¿Para qué valores de $k$ es $T_k$ un isomorfismo?

2. Para el valor de $k$ que **no** da isomorfismo, encuentra una base de $\ker(T_k)$.

???- tip "Pista"
        En $2\times 2$, es isomorfismo si el determinante no es cero.

???- example "Solución paso a paso" 
    1)
    $$\det(A_k)=1\cdot 2-2\cdot k=2-2k=2(1-k).$$

    Así que $\det(A_k)\neq 0\iff k\neq 1$.

    **Conclusión:** $T_k$ es isomorfismo para todo $k\neq 1$.

    2) Para $k=1$,

    $$A_1=\begin{pmatrix}1&1\\2&2\end{pmatrix}.$$

    Resolver $A_1\binom{x}{y}=\binom{0}{0}$ equivale a:

    $$x+y=0\Rightarrow (x,y)=(t,-t)=t(1,-1).$$

    Luego:

    $$\ker(T_1)=\operatorname{span}\{(1,-1)\}.$$

### Test 3.5 (criterio rápido)

Para $T:\mathbb{R}^n\to\mathbb{R}^n$ con matriz $A$, ¿qué condición es equivalente a que $T$ sea un isomorfismo?

a) $\operatorname{rg}(A)=0$

b) $\det(A)=0$

c) $\ker(T)\neq\{0\}$

d) $\det(A)\neq 0$

???- exmaple "Respuesta y explicación"
    **Correcta: d)**. 
    
    En dimensión finita, $T$ es isomorfismo $\Leftrightarrow A$ es invertible $\Leftrightarrow \det(A)\neq 0$.

---

## 4) Matriz asociada a una aplicación lineal

!!! info "Idea clave"
    En bases canónicas, si $T:\mathbb{R}^n\to\mathbb{R}^m$ es lineal y $T(e_j)$ son las imágenes de los vectores canónicos, entonces la matriz asociada $A$ tiene como **columna $j$** el vector $T(e_j)$.

### Ejercicio 4.1: Obtener la matriz desde una fórmula

#### Enunciado

Sea $T:\mathbb{R}^2\to\mathbb{R}^2$,

$$T(x,y)=(x+2y,\;3x-y).$$

1. Halla la matriz $A$ en la base canónica.

2. Calcula $T(1,-2)$ mediante la matriz.

???- tip "Pista"
    Calcula $T(1,0)$ y $T(0,1)$. Esas serán las columnas.

???- example "Solución paso a paso" 
    1) Imágenes de la base canónica:

    $$T(1,0)=(1,3),\qquad T(0,1)=(2,-1).$$

    Luego

    $$A=\begin{pmatrix}1&2\\3&-1\end{pmatrix}.$$

    2) Vector $v=(1,-2)$:

    $$T(v)=Av=\begin{pmatrix}1&2\\3&-1\end{pmatrix}\begin{pmatrix}1\\-2\end{pmatrix}
    =\begin{pmatrix}1-4\\3+2\end{pmatrix}=\begin{pmatrix}-3\\5\end{pmatrix}.$$

### Ejercicio 4.2: Matriz a partir de imágenes (dominio $\mathbb{R}^3$)

#### Enunciado

Sea $T:\mathbb{R}^3\to\mathbb{R}^2$ lineal y supón:

$$T(1,0,0)=(2,1),\quad T(0,1,0)=(-1,0),\quad T(0,0,1)=(3,-2).$$

1. Halla la matriz asociada $A$.

2. Calcula $T(4,-1,2)$.

???- tip "Pista"
    Coloca $T(e_1),T(e_2),T(e_3)$ como columnas en ese orden.

???- example "Solución paso a paso" 
    1) La matriz es

    $$A=\begin{pmatrix}2&-1&3\\1&0&-2\end{pmatrix}.$$

    2) Para $v=(4,-1,2)$:

    $$T(v)=Av=\begin{pmatrix}2&-1&3\\1&0&-2\end{pmatrix}\begin{pmatrix}4\\-1\\2\end{pmatrix}
    =\begin{pmatrix}8+1+6\\4+0-4\end{pmatrix}=
    \begin{pmatrix}15\\0\end{pmatrix}.$$

### Ejercicio 4.3: Matriz de $T$ en otras bases

#### Enunciado

Sea $T:\mathbb{R}^2\to\mathbb{R}^2$ con matriz en la base canónica

$$A=\begin{pmatrix}1&2\\0&1\end{pmatrix}.$$

Considera las bases:

$$B=\{b_1=(1,1),\ b_2=(1,0)\},\qquad C=\{c_1=(1,0),\ c_2=(1,1)\}.$$

Calcula la matriz $[T]_C^B$ (matriz de $T$ en base $B$ del dominio y base $C$ del codominio).

???- tip "Pista"
    Usa matrices de cambio:

        $$[T]_C^B = P_C^{-1}\,A\,P_B,$$

        donde $P_B=[b_1\ b_2]$ y $P_C=[c_1\ c_2]$.

??? example "Solución paso a paso"
    Construimos matrices de cambio con columnas las bases:

    $$P_B=\begin{pmatrix}1&1\\1&0\end{pmatrix},\qquad P_C=\begin{pmatrix}1&1\\0&1\end{pmatrix}.$$

    Inversas:

    - $\det(P_B)=1\cdot 0-1\cdot 1=-1$ y
        $$P_B^{-1}=\begin{pmatrix}0&1\\1&-1\end{pmatrix}.$$
    - $P_C^{-1}=\begin{pmatrix}1&-1\\0&1\end{pmatrix}$.

    Calculamos primero $A P_B$:

    $$A P_B=\begin{pmatrix}1&2\\0&1\end{pmatrix}\begin{pmatrix}1&1\\1&0\end{pmatrix}
    =\begin{pmatrix}3&1\\1&0\end{pmatrix}.$$

    Ahora

    \begin{align*}
    [T]_C^B &= P_C^{-1}(A P_B)
    =\begin{pmatrix}1&-1\\0&1\end{pmatrix}\begin{pmatrix}3&1\\1&0\end{pmatrix}
    =\begin{pmatrix}2&1\\1&0\end{pmatrix}.
    \end{align*}

---

## 5) Espacio dual y base dual

!!! tip "Recordatorio corto"
    El dual $V^*$ es el conjunto de aplicaciones lineales $\varphi:V\to\mathbb{K}$ (funcionales lineales).

    Si $B=\{b_1,\dots,b_n\}$ es una base de $V$, la base dual $B^*=\{\varphi^1,\dots,\varphi^n\}$ cumple:

    $$\varphi^i(b_j)=\delta_{ij}.$$

### Test 5.1 (definición)

En una base $B=\{b_1,b_2,b_3\}$ y su dual $B^*=\{\varphi^1,\varphi^2,\varphi^3\}$, ¿cuánto vale $\varphi^2(b_2)$?

a) 0

b) 1

c) 2

d) Depende de la base

???- tip "Respuesta y explicación"
    **Correcta: b)**, por definición de base dual: $\varphi^i(b_j)=\delta_{ij}$.

### Ejercicio 5.2: Calcular base dual en $\mathbb{R}^2$

#### Enunciado

Sea la base $B=\{b_1,b_2\}$ de $\mathbb{R}^2$ con

$$b_1=(1,1),\qquad b_2=(1,2).$$

Calcula la base dual $B^*={\varphi^1,\varphi^2}$ y escribe $\varphi^1(x,y)$ y $\varphi^2(x,y)$.

???- tip "Pista"
    Si $P=[b_1\ b_2]$, entonces las filas de $P^{-1}$ son los coeficientes de los funcionales duales (como vectores fila).

???- example "Solución paso a paso"
    Formamos la matriz con columnas $b_1,b_2$:

    $$P=\begin{pmatrix}1&1\\1&2\end{pmatrix}.$$

    Calculamos $P^{-1}$. Su determinante es $\det(P)=1\cdot 2-1\cdot 1=1$.

    $$P^{-1}=\begin{pmatrix}2&-1\\-1&1\end{pmatrix}.$$

    Interpretación: buscamos $\varphi^1,\varphi^2$ como formas lineales

    $$\varphi^1(x,y)=ax+by,\qquad \varphi^2(x,y)=cx+dy,$$

    tales que $\varphi^i(b_j)=\delta_{ij}$. Las **filas** de $P^{-1}$ nos dan $(a,b)$ y $(c,d)$:

    - Fila 1: $(2,-1)$, luego $\varphi^1(x,y)=2x-y$.
    - Fila 2: $(-1,1)$, luego $\varphi^2(x,y)=-x+y$.

    Comprobación rápida:

    $$\varphi^1(b_1)=2\cdot 1-1=1,\;\varphi^1(b_2)=2\cdot 1-2=0,$$
    $$\varphi^2(b_1)=-1+1=0,\;\varphi^2(b_2)=-1+2=1.$$

### Ejercicio 5.3: Expresar un funcional en la base dual

#### Enunciado

Sea la base $B$ del Ejercicio 5.2 y su dual $B^*=\{\varphi^1,\varphi^2\}$. Considera el funcional

$$\psi(x,y)=x+2y.$$

Escribe $\psi$ como combinación lineal de la base dual:

$$\psi=\alpha\,\varphi^1+\beta\,\varphi^2.$$

???- tip "Pista"
    En una base dual, los coeficientes se obtienen evaluando en la base primal:

    $$\alpha=\psi(b_1),\qquad \beta=\psi(b_2).$$

???- example "Solución paso a paso"
    Recordemos $b_1=(1,1)$ y $b_2=(1,2)$.

    Evaluamos:

    $$\psi(b_1)=\psi(1,1)=1+2\cdot 1=3,$$
    $$\psi(b_2)=\psi(1,2)=1+2\cdot 2=5.$$

    Por tanto:

    $$\psi=3\,\varphi^1+5\,\varphi^2.$$

### Test 5.4 (hiperplanos)

Si $\varphi\in(\mathbb{R}^3)^*$ es no nulo, entonces $\ker(\varphi)$ es:

a) Todo $\mathbb{R}^3$

b) Una recta

c) Un plano que pasa por el origen

d) Un punto

???- example "Respuesta y explicación"
    **Correcta: c)**. 
    
    Si $\varphi\neq 0$, entonces $\ker(\varphi)$ es un subespacio de codimensión 1: un plano por el origen.

---

## 6) Anulador de un subespacio

!!! info "Fórmula útil"
    Si $U\le V$ y $\dim(V)=n$, entonces

    $$\dim(U^0)=n-\dim(U).$$

    Además, si $U=\operatorname{span}\{u_1,\dots,u_k\}$, entonces

    $$U^0=\{\varphi\in V^*: \varphi(u_i)=0\ \forall i\}.$$

### Ejercicio 6.1: Anulador a partir de generadores

#### Enunciado

En $V=\mathbb{R}^3$, sea

$$U=\operatorname{span}\{(1,0,1),(0,1,1)\}.$$

Halla una base de $U^0$.

???- tip "Pista"
    Escribe un funcional como $\varphi(x,y,z)=ax+by+cz$ y fuerza $\varphi(u)=0$ para los generadores.

???- example "Solución paso a paso"
    Sea $\varphi(x,y,z)=ax+by+cz$.

    Exigimos $\varphi(1,0,1)=0$ y $\varphi(0,1,1)=0$:

    \begin{align*}
    a\cdot 1 + b\cdot 0 + c\cdot 1 &= 0 \Rightarrow a+c=0\\
    a\cdot 0 + b\cdot 1 + c\cdot 1 &= 0 \Rightarrow b+c=0
    \end{align*}

    De aquí $a=-c$ y $b=-c$. Tomando $c=t$:

    $$(a,b,c)=(-t,-t,t)=t(-1,-1,1).$$

    Luego

    $$U^0=\operatorname{span}\{\varphi\},\quad \varphi(x,y,z)=-x-y+z.$$

### Ejercicio 6.2: Anulador de un subespacio dado por ecuación

#### Enunciado

Sea $U\subset\mathbb{R}^3$ definido por

$$U=\{(x,y,z): x+y+z=0\}.$$

Halla una base de $U^0$.

???- tip "Pista"
    $U$ es un plano por una ecuación lineal. Piensa qué funcional “mide” exactamente esa ecuación.

???- example "Solución paso a paso"
    Si $u\in U$, entonces cumple $x+y+z=0$.

    Considera el funcional

    $$\varphi(x,y,z)=x+y+z.$$

    Entonces para todo $u\in U$, $\varphi(u)=0$. Por tanto $\varphi\in U^0$.

    Como $\dim(U)=2$ (un plano en $\mathbb{R}^3$), se tiene $\dim(U^0)=3-2=1$.

    Luego el anulador es 1-dimensional y queda:

    $$U^0=\operatorname{span}\{\varphi\},\quad \varphi(x,y,z)=x+y+z.$$

### Ejercicio 6.3: Propiedad del anulador (suma e intersección)

#### Enunciado

En $\mathbb{R}^3$, sean

$$U=\operatorname{span}\{(1,0,0)\},\qquad W=\operatorname{span}\{(0,1,0)\}.$$

1. Calcula $U^0$ y $W^0$.

2. Calcula $(U+W)^0$ usando que $(U+W)^0=U^0\cap W^0$.

???- tip "Pista"
    Escribe $\varphi(x,y,z)=ax+by+cz$ y fuerza $\varphi$ a anular los generadores.

???- example "Solución paso a paso"
    Sea $\varphi(x,y,z)=ax+by+cz$.

    1) Para $U=\langle(1,0,0)\rangle$:

    $$\varphi(1,0,0)=a=0.$$

    Luego en $U^0$ quedan libres $b$ y $c$, es decir

    $$U^0=\operatorname{span}\{(0,1,0),(0,0,1)\}.$$

    Para $W=\langle(0,1,0)\rangle$:

    $$\varphi(0,1,0)=b=0,$$

    y por tanto

    $$W^0=\operatorname{span}\{(1,0,0),(0,0,1)\}.$$

    2) Intersección:

    $$U^0\cap W^0=\{(a,b,c): a=0\text{ y } b=0\}=\operatorname{span}\{(0,0,1)\}.$$

    Por la propiedad, $(U+W)^0=\operatorname{span}\{(0,0,1)\}$.

---

## 7) Interpolación de Lagrange

!!! tip "Recordatorio"
    Dados $n+1$ puntos $(x_0,y_0),\dots,(x_n,y_n)$ con $x_i$ distintos, existe un único polinomio $p$ de grado $\le n$ tal que $p(x_i)=y_i$.

    En forma de Lagrange:

    $$p(x)=\sum_{i=0}^n y_i\,L_i(x),\qquad L_i(x)=\prod_{j\ne i}\frac{x-x_j}{x_i-x_j}.$$

### Test 7.1 (grado)

Con 4 puntos con abscisas distintas, el polinomio interpolador único tiene grado como máximo:

a) 1

b) 2

c) 3

d) 4

???- tip "Respuesta y explicación"
    **Correcta: c)**. 
    
    Con 4 puntos hay $n+1=4\Rightarrow n=3$, así que $\deg(p)\le 3$.

### Ejercicio 7.2: Interpolación (3 puntos)

#### Enunciado

Encuentra el polinomio de grado $\le 2$ que pasa por

$$(0,1),\ (1,2),\ (2,0).$$

???- tip "Pista"

    Construye $L_0,L_1,L_2$ y luego $p=\sum y_iL_i$.

???- example "Solución paso a paso"
    Puntos: $(x_0,y_0)=(0,1)$, $(x_1,y_1)=(1,2)$, $(x_2,y_2)=(2,0)$.

    1) Polinomios base:

    \begin{align*}
    L_0(x) &= \frac{(x-1)(x-2)}{(0-1)(0-2)}=\frac{(x-1)(x-2)}{2},\\
    L_1(x) &= \frac{(x-0)(x-2)}{(1-0)(1-2)}=\frac{x(x-2)}{-1}= -x(x-2),\\
    L_2(x) &= \frac{(x-0)(x-1)}{(2-0)(2-1)}=\frac{x(x-1)}{2}.
    \end{align*}

    2) Interpolador:

    $$p(x)=1\cdot L_0(x)+2\cdot L_1(x)+0\cdot L_2(x)=L_0(x)+2L_1(x).$$

    Expandimos:

    $$L_0(x)=\frac{x^2-3x+2}{2}=\frac{1}{2}x^2-\frac{3}{2}x+1,$$

    $$2L_1(x)=2(-x^2+2x)=-2x^2+4x.$$

    Sumando:

    \begin{align*}
    p(x) &= \left(\frac{1}{2}x^2-\frac{3}{2}x+1\right)+\left(-2x^2+4x\right)\\
         &= -\frac{3}{2}x^2+\frac{5}{2}x+1.
    \end{align*}

    Comprobación:

    $$p(0)=1,\quad p(1)= -\frac{3}{2}+\frac{5}{2}+1=2,\quad p(2)=-6+5+1=0.$$

### Ejercicio 7.3: ¿Existe interpolación?

#### Enunciado

¿Existe un polinomio (de cualquier grado) que pase por los puntos

$$(1,2),\ (1,3),\ (2,0)?$$

???- tip "Pista"
    Fíjate en las abscisas repetidas.

???- example "Solución paso a paso"
    Si un polinomio $p$ pasa por $(1,2)$ y por $(1,3)$, entonces debería cumplirse a la vez

    $$p(1)=2\quad\text{y}\quad p(1)=3,$$

    lo cual es imposible.

    **Conclusión:** no existe ningún polinomio que interpole esos puntos.

### Ejercicio 7.4: Calcular un valor interpolado sin expandir todo

#### Enunciado

Sea $p$ el polinomio de grado $\le 2$ que interpola los puntos

$$(0,0),\ (1,1),\ (2,4).$$

Calcula $p(3)$.

???- tip "Pista"
    Puedes construir $p(x)$ por Lagrange o reconocer el patrón de los valores.

???- example "Solución paso a paso"
    Observa que los puntos cumplen $y=x^2$ para $x=0,1,2$.

    Como existe un único polinomio de grado $\le 2$ que interpola tres puntos con abscisas distintas, necesariamente

    $$p(x)=x^2.$$

    Por tanto:

    $$p(3)=9.$$

---

## 8) Mix final (todo UD3)

### Ejercicio 8.1: Núcleo + matriz + decisión de inyectividad

#### Enunciado

Sea $T:\mathbb{R}^3\to\mathbb{R}^3$ definida por

$$T(x,y,z)=(x+y,\;y+z,\;x+z).$$

1. Halla la matriz asociada $A$.

2. Calcula $\ker(T)$.

3. Decide si $T$ es isomorfismo.

???- tip "Pista" 
    - Escribe $T(x,y,z)$ como combinación de $x,y,z$. 
    - Para el núcleo, resuelve $T(x,y,z)=(0,0,0)$.

???- example "Solución paso a paso" 

    1) Matriz en base canónica. Observa:

    \begin{align*}
    T(x,y,z) &= (x+y,\;y+z,\;x+z)\\
             &= x(1,0,1)+y(1,1,0)+z(0,1,1).
    \end{align*}

    Por tanto las columnas son $T(e_1)=(1,0,1)$, $T(e_2)=(1,1,0)$, $T(e_3)=(0,1,1)$:

    $$A=\begin{pmatrix}
    1&1&0\\
    0&1&1\\
    1&0&1
    \end{pmatrix}.$$

    2) Núcleo: resolver

    \begin{align*}
    x+y &= 0\\
    y+z &= 0\\
    x+z &= 0
    \end{align*}

    De $x=-y$ y $z=-y$. En la tercera: $x+z=-y+(-y)=-2y=0\Rightarrow y=0$.

    Entonces $x=0$ y $z=0$. Luego

    $$\ker(T)=\{0\}.$$

    3) Como $\ker(T)=\{0\}$ en dimensión finita con $\dim=3$, $T$ es inyectiva y por tanto también sobreyectiva.

    **Conclusión:** $T$ es un isomorfismo.

### Ejercicio 8.2: Anulador de la imagen (conecta UD3: imagen ↔ anulador)

#### Enunciado

Sea $T$ la aplicación del Ejercicio 2.2 con imagen

$$\operatorname{Im}(T)=\operatorname{span}\{(1,2,0),(0,0,1)\}.$$

Halla una base de $(\operatorname{Im}T)^0$.

???- tip "Pista"
    Un funcional $\varphi(x,y,z)=ax+by+cz$ pertenece a $(\operatorname{Im}T)^0$ si anula una base de la imagen.

???- example "Solución paso a paso"
    Sea $\varphi(x,y,z)=ax+by+cz$.

    Debe cumplirse:

    \begin{align*}
    \varphi(1,2,0)&=a+2b=0,\\
    \varphi(0,0,1)&=c=0.
    \end{align*}

    Por tanto $c=0$ y $a=-2b$. Tomando $b=t$:

    $$(a,b,c)=(-2t,t,0)=t(-2,1,0).$$

    Luego

    $$(\operatorname{Im}T)^0=\operatorname{span}\{\varphi\},\quad \varphi(x,y,z)=-2x+y.$$

!!! tip "Mini-plantilla (por si quieres automatizarte en exámenes)"
    Cuando te pidan “anulador de un subespacio” o “anulador de una imagen”, el esquema típico es:

    - Escribe el funcional genérico $\varphi(x,y,z)=ax+by+cz$.
    - Impón ecuaciones del tipo $\varphi(u_i)=0$.
    - Resuelve el sistema y parametriza.

    Ejemplo de notación compacta con reducción (solo plantilla): `#!text R2 ← R2 − 2R1`.
