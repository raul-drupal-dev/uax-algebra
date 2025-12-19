# Núcleo e Imagen

En esta página ampliamos las definiciones y la intuición sobre el núcleo (ker) y la imagen (im) de una aplicación lineal, y presentamos el Teorema de la Dimensión (también conocido como Teorema Rango–Nulidad) con un esbozo de demostración y ejemplos prácticos.

## 1. Núcleo (Ker(f)) — Nulidad

**Definición:** dado $f:\;V\to V'$ lineal,

$$
{\displaystyle \ker(f)=\{v\in V\mid f(v)=0_{V'}\}}
$$

Intuición: el **núcleo** recoge todos los vectores del espacio de partida que la aplicación _anula_; son las direcciones que se colapsan hasta el vector cero en el codominio. Geométricamente, el núcleo es un subespacio de $V$ que mide cuánta información del dominio se pierde al aplicar $f$.

Propiedades importantes:

- **\(\ker(f)\)** es un _subespacio_ de $V$.
- La dimensión de **\(\ker(f)\)** se llama **nulidad** de $f$, y se denota _\(\mathrm{nul}(f)\)_ o _\(\dim\ker(f)\)_.
- Si \(\ker(f)=\{0\}\) entonces \(f\) es **inyectiva** (no hay vectores distintos que se envíen al mismo valor).

**Cómo calcularla (práctico):** si $A$ es la matriz de $f$ respecto a bases fijas, entonces

$$\ker(f)=\{x\in K^n\mid Ax=0\}$$

se obtiene resolviendo el sistema homogéneo _Ax = 0_ (el espacio de soluciones).

???+ tip "¿Qué es _x_ en _Ax = 0_?"

    - **x** es un *vector columna de incógnitas*; si A es una matriz de tamaño *m×n*, entonces *x* pertenece a *K^n* (por ejemplo \(\mathbb{R}^n\) si trabajamos sobre los reales). Un ejemplo de vector columna es \(x=(x_1,\dots,x_n)^T\).
    - Algebraicamente, *Ax = 0* significa que la combinación lineal de las columnas de *A* con coeficientes *$x_i$* es el vector nulo: \(Ax=x_1c_1+\dots+x_nc_n=0\). Por tanto las soluciones *x* son las relaciones lineales entre las columnas de *A*.
    - El conjunto de todas las soluciones forma el **núcleo** (ker) de la aplicación asociada y su dimensión es la **nulidad**.
    - Mini-ejemplo: para la transformación del documento \(f(x,y,z)=(x+y,y-z)\) la matriz asociada actúa sobre \(x=(x,y,z)^T\). Resolver \(Ax=0\) lleva a la solución paramétrica \(x=t(-1,1,1)\), es decir todos los vectores del núcleo son múltiplos de \((-1,1,1)^T\).

## 2. Imagen (Im(f)) — Rango

**Definición:** la **imagen** de $f$ es el subconjunto del codominio formado por los valores alcanzados por la aplicación:

$$
{\displaystyle \operatorname{Im}(f)=\{f(v)\in V'\mid v\in V\}}
$$

Intuición: la imagen es el subespacio del codominio que realmente se _alcanza_. Si pensamos en $f$ como una transformación, la imagen describe el espacio de resultados posibles.

Propiedades importantes:

- **\(\operatorname{Im}(f)\)** es un _subespacio_ de $V'$.
- La dimensión de **\(\operatorname{Im}(f)\)** se llama **rango** de $f$, y se denota _\(\mathrm{rg}(f)\)_ o _\(\dim\operatorname{Im}(f)\)_.
- Para calcularla con una matriz $A$ asociada, la imagen coincide con el espacio generado por las **columnas** de $A** (el llamado "espacio columna"). Una base de la imagen puede obtenerse seleccionando las columnas pivote tras reducir $A$.

**Observación práctica:** si _\(\{v_1,\dots,v_n\}\)_ genera _V_, entonces _\(\{f(v_1),\dots,f(v_n)\}\)_ genera _\(\operatorname{Im}(f)\)_; en particular, las imágenes de una base de _V_ generan la imagen (aunque no siempre serán linealmente independientes).

## 3. Teorema de la Dimensión (Rango–Nulidad)

Enunciado: si $V$ es un espacio vectorial de dimensión finita y $f:V\to V'$ es lineal, entonces

$$\boxed{\;\dim V = \dim\ker(f) + \dim\operatorname{Im}(f)\;}$$

Equivalencias y nombres: $\dim\operatorname{Im}(f)$ es el rango (o rango de la matriz asociada) y $\dim\ker(f)$ es la nulidad.

Esbozo de demostración:

1. Sea _\(k=\dim\ker(f)\)_ y elijamos una base _\(\{u_1,\dots,u_k\}\)_ de _\(\ker(f)\)_.
2. Extendamos esa base a una base de _V_ completándola con vectores _\(\{u\_{k+1},\dots,u_n\}\)_, de modo que

$$\{u_1,\dots,u_k,u_{k+1},\dots,u_n\}$$

sea base de _V_. Entonces _\(n=\dim V\)_.

3. Consideremos las imágenes _\(f(u\_{k+1}),\dots,f(u_n)\)_. Estas imágenes generan _\(\operatorname{Im}(f)\)_ y son linealmente independientes; por tanto forman una base de _\(\operatorname{Im}(f)\)_ y su número es _\(\dim\operatorname{Im}(f)=n-k\)_.
4. De aquí se obtiene _\(\dim V = k + (n-k)=\dim\ker(f)+\dim\operatorname{Im}(f)\)_.

Consecuencias inmediatas:

- Si $\dim\ker(f)=0$ entonces (f) es **inyectiva**.
- Si _\(\dim\operatorname{Im}(f)=\dim V'\)_ (rango máximo) entonces _\(f\)_ es **sobreyectiva**.
- Para una matriz _A_ de tamaño _m×n_: **\(\mathrm{rg}(A)\le\min(m,n)\)** y **\(\mathrm{nul}(A)=n-\mathrm{rg}(A)\)**.

## 4. Métodos prácticos con matrices

- Para hallar la nulidad: construir la matriz $A$ de $f$ y resolver $Ax=0$ por eliminación gaussiana; la dimensión del espacio solución es la nulidad.
- Para hallar el rango: reducir $A$ a forma escalonada por filas; el número de columnas pivote es el rango. Alternativamente, tomar las columnas y extraer una base mediante eliminación de columnas dependientes.

---

## 5. Ejemplos resueltos

### Ejemplo 1 (comprobación de rango–nulidad)

Sea $f:\mathbb{R}^3\to\mathbb{R}^2,\qquad f(x,y,z)=(x+y,\; y-z).$

Para el núcleo resolvemos.

$$\begin{cases}x+y=0\\y-z=0\end{cases}\Rightarrow y=z,\; x=-y=-z$$

Por tanto.

$$\ker(f)=\{(-t,t,t)\mid t\in\mathbb{R}\}=\langle(-1,1,1)\rangle$$

y $\dim\ker(f)=1$.  
Para la imagen, las columnas de la matriz asociada son.

$$f(1,0,0)=(1,0),\; f(0,1,0)=(1,1),\; f(0,0,1)=(0,-1).$$

Para ver por qué hay dos vectores linealmente independientes, escribimos las columnas como matriz de 2×3:

$$A=\begin{pmatrix}1&1&0\\[4pt]0&1&-1\end{pmatrix}$$  

cuyas columnas son \(c_1=(1,0),\;c_2=(1,1),\;c_3=(0,-1)\).

Observaciones rápidas:

- La matriz ya está en forma escalonada por filas: pivotes en las columnas 1 y 2. Por tanto el número de pivotes (el rango) es 2.
- Alternativamente, comprobar independencia de \(c_1\) y \(c_2\):  
  si \(\alpha c_1+\beta c_2=0\) entonces \((\alpha+\beta,\;\beta)=(0,0)\), de donde \(\beta=0\) y \(\alpha=0\). Así \(c_1\) y \(c_2\) son LI.

Conclusión: hay dos columnas LI, \(\dim\operatorname{Im}(f)=2\), y puesto que el codominio es \(\mathbb{R}^2\), \(\operatorname{Im}(f)=\mathbb{R}^2\).

Compruebe el teorema: $\dim\mathbb{R}^3=3=\dim\ker(f)+\dim\operatorname{Im}(f)=1+2$.

### Ejemplo 2 (matriz numérica)

Sea.

$$A=\begin{pmatrix}1&2&3\\[4pt]0&1&1\\[4pt]2&5&8\end{pmatrix}$$

Aplicamos eliminación por filas:

1. R3 ← R3 − 2·R1:

$$\begin{pmatrix}1&2&3\\[4pt]0&1&1\\[4pt]0&1&2\end{pmatrix}.$$

2. R3 ← R3 − R2:

$$\begin{pmatrix}1&2&3\\[4pt]0&1&1\\[4pt]0&0&1\end{pmatrix}.$$

La forma escalonada muestra pivotes en las columnas 1, 2 y 3, por tanto

- rango: $\mathrm{rg}(A)=3$,
- como $A$ es $3\times3$ con rango máximo, es invertible.

Resolver $Ax=0$ da solo la solución trivial $x=0$, así que

- nulidad: $\mathrm{nul}(A)=0$,
- $\ker(A)=\{0\}$.

La imagen es todo $\mathbb{R}^3$; una base natural de $\operatorname{Im}(A)$ son las columnas de $A$:
$$\operatorname{Im}(A)=\langle(1,0,2)^T,\,(2,1,5)^T,\,(3,1,8)^T\rangle=\mathbb{R}^3.$$

Comprobación del teorema de la dimensión:
$$\dim\mathbb{R}^3=3=\dim\ker(A)+\dim\operatorname{Im}(A)=0+3.$$

---

## Ejercicios

### Ejercicio 1 — Fácil

Definición: Sea \(f:\mathbb{R}^2\to\mathbb{R}^2\) definida por \(f(x,y)=(x,0)\). Calcular \(\ker(f)\) y \(\operatorname{Im}(f)\).

??? example "Resultado"

    Paso 1: Escribir la matriz asociada respecto a la base canónica:

    \(A=\begin{pmatrix}1&0\\0&0\end{pmatrix}\), porque \(f(1,0)=(1,0)\) y \(f(0,1)=(0,0)\).

    Paso 2: Resolver \(Ax=0\). Si \(x=(x_1,x_2)^T\), entonces

    \(\begin{pmatrix}1&0\\0&0\end{pmatrix}\begin{pmatrix}x_1\\x_2\end{pmatrix}=\begin{pmatrix}x_1\\0\end{pmatrix}=\begin{pmatrix}0\\0\end{pmatrix}\Rightarrow x_1=0\).

    Paso 3: Concluir:

    - \(\ker(f)=\{(0,x_2)\mid x_2\in\mathbb{R}\}=\langle(0,1)\rangle\).
    - \(\operatorname{Im}(f)=\langle(1,0)\rangle\) (las imágenes generan la recta en el eje x).

    Dimensiones: \(\dim\ker(f)=1\), \(\dim\operatorname{Im}(f)=1\). Verificación: \(2=1+1\).

### Ejercicio 2 — Intermedio (del documento)

Definición: Sea \(f:\mathbb{R}^3\to\mathbb{R}^2\), \(f(x,y,z)=(x+y,\;y-z)\). Calcular \(\ker(f)\) y \(\operatorname{Im}(f)\).

??? example "Resultado"

    Paso 1: Escribir el sistema homogéneo:

    \(\begin{cases}x+y=0\\y-z=0\end{cases}\).

    Paso 2: Resolver: de la segunda ecuación \(y=z\). Sustituyendo en la primera \(x=-y=-z\).

    Paso 3: Parametrizar con \(t=z\): \(x=(-t,t,t)=t(-1,1,1)\).

    Concluir:

    - \(\ker(f)=\langle(-1,1,1)\rangle\), \(\dim\ker(f)=1\).
    - Para la imagen, las columnas (imágenes de la base) son \((1,0),(1,1),(0,-1)\). Dos de ellas son independientes, por tanto \(\dim\operatorname{Im}(f)=2\) y \(\operatorname{Im}(f)=\mathbb{R}^2\).

    Verificación: \(3=1+2\).

### Ejercicio 3 — Intermedio/Avanzado

Definición: Sea \(A=\begin{pmatrix}1&2&3\\0&1&1\\2&5&8\end{pmatrix}\) (matriz 3×3). Calcular una base de \(\ker(A)\) y de \(\operatorname{Im}(A)\), y las dimensiones (rango y nulidad).

??? example "Resultado"

    Paso 1: Reducir A por filas (el objetivo es obtener forma escalonada).

    - R1 = (1 2 3)
    - R2 = (0 1 1)
    - R3 = (2 5 8) -> R3 - 2·R1 = (0 1 2)

    Tras operación: R3' = R3 - 2·R1 = (0,1,2).

    R3' - R2 = (0,0,1).

    Podemos llevar a una escalonada clara (resumen): existen pivotes en columnas 1 y 2 (y posiblemente 3 dependiendo de pasos), el procedimiento muestra que hay 2 pivotes.

    Paso 2: Determinar variables libres. Si hay 2 pivotes, tenemos 1 variable libre (n=3 -> nulidad = 1).

    Paso 3: Resolver \(Ax=0\) (esquema): de la reducción se obtiene la relación \(x_3 = t\), \(x_2 = -t\), \(x_1 = -t\) (este patrón coincide con el ejemplo trabajado antes), por tanto

    \(\ker(A)=\langle(-1,-1,1)\rangle\).

    Paso 4: Imagen: las columnas pivote (primera y segunda tras reducción) generan la imagen; por tanto \(\dim\operatorname{Im}(A)=2\) y un conjunto generador puede tomarse como las dos primeras columnas originales reducidas.

    Comprobación: \(3=1+2\).

### Ejercicio 4 — Avanzado

Definición: Sea \(A:\mathbb{R}^4\to\mathbb{R}^3\) dada por la matriz

\(A=\begin{pmatrix}1&0&2&1\\0&1&-1&2\\1&1&1&3\end{pmatrix}\).

Calcular \(\ker(A)\), \(\operatorname{Im}(A)\), y verificar rango y nulidad.

??? example "Resultado"

    Paso 1: Reducir A por filas para identificar pivotes.

    - Empezamos con R1=(1 0 2 1), R2=(0 1 -1 2), R3=(1 1 1 3).
    - R3' = R3 - R1 = (0,1,-1,2) -> coincide con R2, por tanto R3' - R2 = 0.

    Esto muestra que R3 es combinación de R1 y R2, de modo que hay pivotes en columnas 1 y 2 (al menos) y posiblemente en 3 o 4 según relaciones.

    Paso 2: Conclusión parcial: rango = 2 (dos filas independientes), por tanto nulidad = n - rango = 4 - 2 = 2.

    Paso 3: Resolver \(Ax=0\): las variables libres serán dos (por ejemplo \(x_3=t, x_4=s\)).

    - De R2: \(x_2 - x_3 + 2x_4 = 0 \Rightarrow x_2 = t - 2s\).
    - De R1: \(x_1 + 2x_3 + x_4 = 0 \Rightarrow x_1 = -2t - s\).

    Parámetrizando con \(t,s\):

    \(x = t(-2,1,1,0) + s(-1,-2,0,1)\).

    Paso 4: Bases:

    - \(\ker(A)=\langle(-2,1,1,0),\;(-1,-2,0,1)\rangle\).
    - \(\operatorname{Im}(A)\) tiene dimensión 2 y una base puede tomarse de las columnas pivote (las columnas 1 y 2 originales): \( (1,0,1)^T, (0,1,1)^T \).

    Verificación: \(4=2+2\).

### Ejercicio 5 — Reto

Definición: Sea \(f:V\to W\) lineal con \(\dim V=5\). Se sabe que \(\dim\ker(f)=2\). Responde:

a) ¿Cuál es \(\dim\operatorname{Im}(f)\)?

b) Si además \(W\cong\mathbb{R}^3\), ¿puede f ser sobreyectiva? Justifica.

??? example "Resultado"

    a) Por el teorema rango–nulidad: \(\dim V = \dim\ker(f) + \dim\operatorname{Im}(f)\). Entonces

    \(5 = 2 + \dim\operatorname{Im}(f) \Rightarrow \dim\operatorname{Im}(f) = 3\).

    b) Si \(W\cong\mathbb{R}^3\) y \(\dim\operatorname{Im}(f)=3\), entonces \(\operatorname{Im}(f)=W\) y \(f\) es sobreyectiva (rango máximo igual a la dimensión de \(W\)). Por tanto sí, \(f\) puede ser sobreyectiva y en este caso lo es.

---

## Tabla resumen final

| Término               | Símbolo                    | Definición breve                                                                | Cómo calcular (práctico)                                                 | Fórmula / dimensión                                   |
| --------------------- | -------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------ | ----------------------------------------------------- |
| Núcleo                | \(\ker(f)\)              | Conjunto de vectores del dominio que se envían al cero del codominio.           | Resolver el sistema homogéneo `Ax = 0` (el espacio de soluciones).       | Nulidad = \(\dim\ker(f)\)                          |
| Imagen                | \(\operatorname{Im}(f)\) | Subespacio del codominio formado por los valores alcanzados por `f`.            | Tomar las columnas de `A` y extraer una base (columnas pivote).          | Rango = \(\dim\operatorname{Im}(f)\)                |
| Rango                 | \(\mathrm{rg}(f)\)       | Dimensión de la imagen; número de columnas independientes.                      | Número de columnas pivote tras reducción por filas.                      | \(\mathrm{rg}(f)\le\min(m,n)\)                      |
| Nulidad               | \(\mathrm{nul}(f)\)      | Dimensión del núcleo; número de grados de libertad en las soluciones de `Ax=0`. | Número de variables libres al resolver `Ax=0`.                           | \(\mathrm{nul}(f)=n-\mathrm{rg}(A)\)                |
| Teorema Rango–Nulidad |                            | Relaciona dimensión del dominio con rango y nulidad.                            | Verificar con ejemplos (reducción de matrices y cálculo de dimensiones). | \(\dim V = \dim\ker(f) + \dim\operatorname{Im}(f)\) |