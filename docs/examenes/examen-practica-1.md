---
title: Examen práctica 1 — Álgebra Lineal (UD3, UD4, UD5)
---

# Examen práctica 1 — Álgebra Lineal

_Duración estimada: 60 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). Algunas preguntas pueden tener más de una respuesta válida._

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
Sea la aplicación lineal $f:
\mathbb{R}^3\to\mathbb{R}^3$ definida por

$$f(x,y,z)=(x+z,\;y,\;x+2y+z).$$

¿Cuál es una base del núcleo $\operatorname{Ker}(f)$?

- [x] $\{(-1,0,1)\}$
- [ ] $\{(1,0,-1)\}$
- [ ] $\{(1,-2,1)\}$
- [ ] $\{(0,1,0)\}$

Explicación breve: Resolviendo $f(x,y,z)=0$ se obtiene $y=0$ y $x=-z$, por tanto el núcleo está generado por $(-1,0,1)$.
</quiz>

---

<quiz>
Sea la matriz $A=\begin{pmatrix}1&1&1\\2&1&0\end{pmatrix}$ que representa
una aplicación $\mathbb{R}^3\to\mathbb{R}^2$. ¿Cuál es la dimensión de la imagen y una base del núcleo?

- [ ] $\dim(\mathrm{Im})=1$, $\mathrm{Ker} = \operatorname{span}\{(1,1,1)\}$
- [x] $\dim(\mathrm{Im})=2$, $\mathrm{Ker} = \operatorname{span}\{(1,-2,1)\}$
- [ ] $\dim(\mathrm{Im})=3$, $\mathrm{Ker} = \{0\}$
- [ ] $\dim(\mathrm{Im})=2$, $\mathrm{Ker} = \operatorname{span}\{(1,0,0)\}$

Explicación breve: La reducción por filas muestra rango 2, por tanto nulidad 1; el núcleo es generado por $(1,-2,1)$.
</quiz>

---

<quiz>
Sea la matriz $B=\begin{pmatrix}2&2&3\\0&2&2\\0&0&2\end{pmatrix}$. Respecto del autovalor $\lambda=2$.
¿Cuál(es) de las siguientes afirmaciones son verdaderas?

- [x] La multiplicidad algebraica es 3
- [x] La multiplicidad geométrica es 1
- [ ] La matriz es diagonalizable sobre $\mathbb{R}$
- [ ] El subespacio propio asociado tiene dimensión 3

Explicación breve: $p(x)=(2-x)^3$ da $a=3$; $\mathrm{rg}(B-2I)=2$ da $d=1$, por tanto no es diagonalizable.
</quiz>

---

<quiz>
Diagonalice (si es posible) la matriz $C=\begin{pmatrix}3&1&1\\1&3&1\\1&1&3\end{pmatrix}$. ¿Cuál es una posible diagonal $D$ (autovalores en la diagonal)?

- [ ] $\operatorname{diag}(1,2,3)$
- [x] $\operatorname{diag}(2,2,5)$
- [ ] $\operatorname{diag}(3,3,3)$
- [ ] $\operatorname{diag}(-1,2,7)$

Explicación breve: El polinomio característico factoriza como $(x-2)^2(x-5)$, luego los autovalores son $2,2,5$.
</quiz>

---

<quiz>
Resuelve por eliminación de Gauss y elige la solución correcta del sistema:

$$\begin{cases}x+2y+z=4\\2x+5y+3z=9\\x+y+2z=5\end{cases}$$

- [ ] $(x,y,z)=(1,1,2)$
- [ ] $(2,0,1)$
- [ ] $(0,2,1)$
- [x] $(3,0,1)$

Explicación breve: Aplicando eliminación por filas la solución es $(3,0,1)$ (ver desarrollo en soluciones desarrolladas).
</quiz>

---

<quiz>
En $\mathbb{R}^3$, con base canónica y base $B=\{(1,1,1),(1,0,1),(0,1,-1)\}$, ¿cuáles son las coordenadas de $v=(2,1,0)$ en la base $B$ (es decir $[v]_B$)?

- [ ] $\begin{pmatrix}1\\1\\0\end{pmatrix}$
- [ ] $\begin{pmatrix}0\\1\\1\end{pmatrix}$
- [ ] $\begin{pmatrix}1\\0\\1\end{pmatrix}$
- [x] $\begin{pmatrix}-1\\3\\2\end{pmatrix}$

Explicación breve: Resolviendo el sistema de coordenadas se obtiene $[v]_B=(-1,3,2)$ (desarrollo en soluciones).
</quiz>

---

<quiz>
En teoría de grafos: ¿cuál de las siguientes afirmaciones es verdadera?

- [x] Si un grafo no dirigido conexo tiene exactamente dos vértices de grado impar, entonces tiene un camino euleriano abierto
- [ ] Si todos los vértices tienen grado par entonces no existe ciclo euleriano
- [ ] Un árbol con $n$ vértices tiene $n$ aristas
- [ ] Si un grafo es hamiltoniano entonces necesariamente es euleriano

Explicación breve: Por el teorema de Euler, dos vértices impares ⇔ camino euleriano abierto; árbol tiene $n-1$ aristas; no hay implicación Hamilton ⇒ Euler.
</quiz>

---

<quiz>
Aplicando Dirac: si $G$ es simple con $n=8$ vértices y grado mínimo $\delta(G)=4$, ¿qué se puede afirmar?

- [x] $G$ es hamiltoniano
- [ ] $G$ es euleriano
- [ ] $G$ no contiene ciclos
- [ ] $G$ es bipartito

Explicación breve: Dirac garantiza hamiltonicidad porque $\delta(G)\ge n/2$.
</quiz>

---

<quiz>
En un grafo completo $K_8$, ¿cuántas aristas hay?

- [ ] 8
- [ ] 16
- [x] 28
- [ ] 32

Explicación breve: $|E(K_n)|=\binom{n}{2}$; para $n=8$ sale 28.
</quiz>

---

<quiz>
Sea $A$ la matriz de un endomorfismo en la base canónica y $P$ la matriz de paso a otra base. ¿Cuál es la relación correcta entre $A$ y la matriz $A'$ en la nueva base?

- [ ] $A' = A P P^{-1}$
- [ ] $A' = P A P$
- [x] $A' = P^{-1} A P$
- [ ] $A' = P A P^{-1}$

Explicación breve: La relación de semejanza que transforma la representación entre bases viene dada por $A' = P^{-1}AP$.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Núcleo de f"
    Planteamos $f(x,y,z)=(0,0,0)$:

    $$\begin{cases} x+z=0\\ y=0\\ x+2y+z=0\end{cases}$$

    De la segunda $y=0$. De la primera $x=-z$. Sustituyendo en la tercera: $(-z)+0+z=0$, se cumple para cualquier $z$. Por tanto vectores del núcleo son $(-z,0,z)=z(-1,0,1)$. Base: $\{(-1,0,1)\}$.

???- details "Solución pregunta 2 — Rango e Núcleo"
    Reducimos por filas:

    $$\begin{pmatrix}1&1&1\\2&1&0\end{pmatrix}\xrightarrow{F_2-2F_1}\begin{pmatrix}1&1&1\\0&-1&-2\end{pmatrix}$$

    Rango $=2\Rightarrow\dim(\mathrm{Im})=2$. Nulidad $=3-2=1$. Resolver homogéneo:

    De la segunda fila $-y-2z=0\Rightarrow y=-2z$.  
    De la primera $x+y+z=0\Rightarrow x= -y - z = 2z - z = z$.   
    Entonces vectores del núcleo $(z,-2z,z)=z(1,-2,1)$.  

???- details "Solución pregunta 3 — Multiplicidades de B"
    Polinomio característico $p(x)=(2-x)^3$, por tanto multiplicidad algebraica $a=3$. Calculamos $B-2I=\begin{pmatrix}0&2&3\\0&0&2\\0&0&0\end{pmatrix}$ cuyo rango es 2, así $\dim\ker(B-2I)=3-2=1$ (multiplicidad geométrica $d=1$). Como $d<a$, no es diagonalizable.

???- details "Solución pregunta 4 — Diagonalización de C"
    Desarrollo paso a paso:

    1) Cálculo del polinomio característico (regla de Sarrus).

    Calculamos $\det(C-xI)$ con Sarrus para

    $$C-xI=\begin{pmatrix}3-x & 1 & 1\\[4pt]1 & 3-x & 1\\[4pt]1 & 1 & 3-x\end{pmatrix}.$$

    Productos de las diagonales descendentes:

    $$(3-x)(3-x)(3-x) + 1\cdot1\cdot1 + 1\cdot1\cdot1 = (3-x)^3 + 2.$$ 

    Productos de las diagonales ascendentes:

    $$1(3-x)1 + 1\cdot1(3-x) + (3-x)1\cdot1 = 3(3-x)=9-3x.$$ 

    Por Sarrus,

    $$\det(C-xI) = (3-x)^3 + 2 - (9-3x).$$

    Desarrollando $(3-x)^3=27-27x+9x^2-x^3$ y simplificando:

    $$\det(C-xI) = -x^3 + 9x^2 -24x +20.$$

    Factorizando (por ejemplo con división sintética por $x-2$) se obtiene

    $$\det(C-xI)=-(x-2)^2(x-5),$$

    de donde los autovalores son $2$ (multiplicidad 2) y $5$ (multiplicidad 1).

    2) Autovectores para $\lambda=2$ (multiplicidad algebraica 2).

    Formamos $C-2I=\begin{pmatrix}1&1&1\\1&1&1\\1&1&1\end{pmatrix}$. Debemos resolver

    $$(C-2I)\begin{pmatrix}x\\y\\z\end{pmatrix}=0 \Longrightarrow \begin{cases} x+y+z=0 \\ x+y+z=0 \\ x+y+z=0 \end{cases}$$

    Solo queda la ecuación $x+y+z=0$, por tanto el espacio propio tiene dimensión 2 (coincide con la multiplicidad geométrica). Una base conveniente del núcleo es, por ejemplo,

    $$v_1=(1,-1,0),\qquad v_2=(1,0,-1).$$

    Comprobación rápida: para $v_1$, $(C-2I)v_1=(1+(-1)+0,\dots)=(0,0,0)$, etc.

    3) Autovector para $\lambda=5$ (multiplicidad algebraica 1).

    Formamos $C-5I=\begin{pmatrix}-2&1&1\\1&-2&1\\1&1&-2\end{pmatrix}$ y resolvemos

    $$(C-5I)\begin{pmatrix}x\\y\\z\end{pmatrix}=0.$$

    Sumando las tres ecuaciones se obtiene $-2x+ x + x -2y + y + y -2z + z + z = 0$, es decir $0=0$; de forma directa se comprueba que la condición que surge es $x=y=z$. Por tanto el espacio propio es 1‑dimensional y está generado por

    $$w=(1,1,1).$$

    4) Conclusión sobre diagonalización.

    - Multiplicidades algebraicas: $a_2=2$, $a_5=1$.
    - Multiplicidades geométricas: $d_2=2$, $d_5=1$.

    Como para cada autovalor $d_i=a_i$, la matriz es diagonalizable. Una matriz diagonal $D$ con los autovalores puede tomarse como

    $$D=\operatorname{diag}(2,2,5),$$

    y la matriz de paso $P$ puede construirse poniendo como columnas los autovectores escogidos, por ejemplo

    $$P=\begin{pmatrix}1&1&1\\-1&0&1\\0&-1&1\end{pmatrix},$$

    donde las dos primeras columnas son $v_1,v_2$ (autovectores de $\lambda=2$) y la última es $w$ (autovector de $\lambda=5$). Verificación: $P^{-1}CP=D$.

???- details "Solución pregunta 5 — Sistema por Gauss"
    Matriz aumentada inicial:

    $$\begin{pmatrix}1&2&1&|&4\\2&5&3&|&9\\1&1&2&|&5\end{pmatrix}$$

    $F_2-2F_1:\begin{pmatrix}1&2&1&|&4\\0&1&1&|&1\\1&1&2&|&5\end{pmatrix}$

    $F_3-F_1:\begin{pmatrix}1&2&1&|&4\\0&1&1&|&1\\0&-1&1&|&1\end{pmatrix}$

    $F_3+F_2:\begin{pmatrix}1&2&1&|&4\\0&1&1&|&1\\0&0&2&|&2\end{pmatrix}$

    De la última fila $2z=2\Rightarrow z=1$. Segunda fila $y+z=1\Rightarrow y=0$. Primera fila $x+2y+z=4\Rightarrow x+0+1=4\Rightarrow x=3$. Por tanto solución $(3,0,1)$. Si las opciones no coinciden, revisar transcripción del sistema.

???- details "Solución pregunta 6 — Coordenadas en base B"
    Queremos $a(1,1,1)+b(1,0,1)+c(0,1,-1)=(2,1,0)$. Esto da el sistema:

    $$\begin{cases}a+b=2\\ a+c=1\\ a+b-c=0\end{cases}$$

    De la primera $b=2-a$. Segunda $c=1-a$. Sustituyendo en la tercera: $a+(2-a)-(1-a)=0\Rightarrow a+2-a-1+a=0\Rightarrow a=-1$. Entonces $b=3$, $c=2$. Por tanto $[v]_B=(-1,3,2)$. Si las opciones del examen no muestran esto, revisar la transcripción.

???- details "Solución pregunta 7 — Eulerianos"
    Por el teorema de Euler, si un grafo conexo tiene exactamente dos vértices de grado impar existe un camino euleriano abierto. Si todos los vértices tuvieran grado par existiría un ciclo euleriano.

???- details "Solución pregunta 8 — Dirac"
    Como $\delta(G)=4\ge n/2=4$ y $n\ge3$, por el teorema de Dirac $G$ es hamiltoniano.

???- details "Solución pregunta 9 — Aristas de K_8"
    $|E(K_n)|=\binom{n}{2}=\frac{n(n-1)}{2}=\frac{8\cdot7}{2}=28$.

???- details "Solución pregunta 10 — Relación de semejanza"
    La relación de semejanza es $A' = P^{-1} A P$ donde las columnas de $P$ son las coordenadas de la nueva base respecto de la base antigua.

    - [x] $A' = P^{-1} A P$
    - [ ] $A' = P A P^{-1}$


    Explicación: La relación de semejanza es $A' = P^{-1} A P$ donde las columnas de $P$ son las coordenadas de la nueva base respecto de la base antigua.
