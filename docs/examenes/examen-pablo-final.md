---
title: Examen práctica — Álgebra Lineal (independencia, cambio de base, aplicación lineal, diagonalización, combinatoria) (medio)
---

Duración estimada: 55 minutos.

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
¿Son independientes $u_1=(1,1,0)$, $u_2=(1,0,1)$, $u_3=(0,1,1)$?
- [x] Sí, forman base de $\mathbb{R}^3$.
- [ ] No, porque $u_3=u_1+u_2$.
- [ ] No, porque suman $(2,2,2)$.
- [ ] Son dependientes en $\mathbb{R}^2$.
Explicación: Matriz con columnas $u_i$ tiene determinante $-2\neq 0$.
</quiz>

<quiz>
Independencia en $\mathbb{R}^2$: $v_1=(1,2)$, $v_2=(2,4)$.
- [ ] Independientes.
- [x] Dependientes, $v_2=2v_1$.
- [ ] Generan todo $\mathbb{R}^2$.
- [ ] Forman base ortonormal.
Explicación: Uno es múltiplo del otro, rango 1.
</quiz>

<quiz>
Cambio de base: $B=\{(1,0),(0,1)\}$, $B'=\{(2,0),(0,1)\}$. Coordenadas de $x=(4,3)$ en $B'$:
- [x] $(2,3)$
- [ ] $(4,3)$
- [ ] $(1,3)$
- [ ] $(2,1.5)$
Explicación: $(4,3)=2(2,0)+3(0,1)$.
</quiz>

<quiz>
Sean $B=\{(1,1),(1,-1)\}$ y $B'$ canónica. Matriz de cambio de base de $B$ a $B'$:
- [x] $\begin{pmatrix}1&1\\1&-1\end{pmatrix}$
- [ ] $\begin{pmatrix}1&1\\-1&1\end{pmatrix}$
- [ ] $\begin{pmatrix}1&0\\0&1\end{pmatrix}$
- [ ] $\begin{pmatrix}0&1\\1&0\end{pmatrix}$
Explicación: Columnas son los vectores de $B$ escritos en la base canónica.
</quiz>

<quiz>
Aplicación $T:\mathbb{R}^2\to\mathbb{R}^2$, $T(x,y)=(3x-y,\,x+2y)$. Elige lo correcto:
- [x] Es lineal con matriz $\begin{pmatrix}3&-1\\1&2\end{pmatrix}$.
- [ ] No es lineal porque cambia el origen.
- [ ] Solo es lineal para $y=0$.
- [ ] Requiere traslación para ser lineal.
Explicación: Es transformación dada por matriz fija; preserva suma y homogeneidad.
</quiz>

<quiz>
¿Es lineal $S(x,y)=(x^2,y)$?
- [ ] Sí, porque es componente a componente.
- [x] No, falla homogeneidad.
- [ ] Sí, con matriz $\begin{pmatrix}1&0\\0&1\end{pmatrix}$.
- [ ] Solo en el eje $y$.
Explicación: $S(2,0)=(4,0)\neq 2S(1,0)$, viola linealidad.
</quiz>

<quiz>
Diagonalización fácil: $A=\begin{pmatrix}0&1\\1&0\end{pmatrix}$. Elige lo correcto:
- [x] Diagonalizable con autovalores $1,-1$.
- [ ] No diagonalizable.
- [ ] Solo diagonalizable con complejos.
- [ ] Autovalores ambos 1.
Explicación: Polinomio $-\lambda^2+1=0$, autovectores $(1,1)$ y $(1,-1)$.
</quiz>

<quiz>
Diagonalizar $C=\begin{pmatrix}2&0\\0&2\end{pmatrix}$:
- [x] $D=\begin{pmatrix}2&0\\0&2\end{pmatrix}$, $P=I$
- [ ] $D=\begin{pmatrix}2&0\\0&1\end{pmatrix}$, $P=\begin{pmatrix}1&0\\0&1\end{pmatrix}$
- [ ] No es diagonalizable.
- [ ] Requiere $P$ con autovectores complejos.
Explicación: Ya es diagonal; cualquier base de autovectores sirve.
</quiz>

<quiz>
Combinatoria: número de subconjuntos de un conjunto de 5 elementos:
- [x] $2^5=32$
- [ ] $\binom{5}{2}=10$
- [ ] $5!=120$
- [ ] $2^4=16$
Explicación: Cada elemento puede estar o no; $2^5$ subconjuntos.
</quiz>

<quiz>
Combinatoria: formas de elegir presidente y vicepresidente distintos de un grupo de 6 personas:
- [x] $6\cdot 5=30$
- [ ] $\binom{6}{2}=15$
- [ ] $6!=720$
- [ ] $5!=120$
Explicación: Permutaciones de 2 elementos: $P(6,2)=6\cdot 5$.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Independencia 3 vectores"

    Determinante de columnas $|1\,1\,0;1\,0\,1;0\,1\,1|=-2\neq 0$; independientes.

???- details "Solución pregunta 2 — Dependencia en R2"

    Matriz con columnas $v_1=(1,2)$ y $v_2=(2,4)$:
    $$M=\begin{pmatrix}1&2\\2&4\end{pmatrix}$$
    Rango 1 porque la segunda columna es $2\times$ la primera. También se ve que $v_2=2v_1$. Sólo hay un vector independiente $\Rightarrow$ dependientes.

???- details "Solución pregunta 3 — Coordenadas en B'"

    Buscamos $\alpha,\beta$ tal que $(4,3)=\alpha(2,0)+\beta(0,1)$.
    Del sistema: $2\alpha=4 \Rightarrow \alpha=2$; $\beta=3$. Coordenadas en $B'$: $(2,3)$.

???- details "Solución pregunta 4 — Matriz de paso"

    De base $B=\{(1,1),(1,-1)\}$ a base canónica: la matriz de paso $P_{B\to \text{can}}$ se forma con las coordenadas de los vectores de $B$ como columnas:

    $$P=\begin{pmatrix}1&1\\1&-1\end{pmatrix}$$

    Cualquier vector con coords en $B$, digamos $(a,b)_B$, pasa a canónica como $P\,(a,b)^T$.

???- details "Solución pregunta 5 — Linealidad de T"

    $T(x,y)=(3x-y,\,x+2y)$ es lineal si:

    **1. Preserva el origen:** $T(0,0)=(0,0)$ ✓

    **2. Aditividad:** $T(u+v)=T(u)+T(v)$

    Sean $u=(x_1,y_1)$, $v=(x_2,y_2)$:
    $$T(u+v)=(3(x_1+x_2)-(y_1+y_2),\,(x_1+x_2)+2(y_1+y_2))$$
    $$= (3x_1-y_1,\,x_1+2y_1) + (3x_2-y_2,\,x_2+2y_2)=T(u)+T(v)$$

    **3. Homogeneidad:** $T(\alpha u)=\alpha T(u)$

    $$T(\alpha x_1,\alpha y_1)=(3\alpha x_1-\alpha y_1,\,\alpha x_1+2\alpha y_1)=\alpha(3x_1-y_1,\,x_1+2y_1)=\alpha T(u)$$

    Cumple las tres, así que es aplicación lineal con matriz $\begin{pmatrix}3&-1\\1&2\end{pmatrix}$.

???- details "Solución pregunta 6 — No linealidad de S"

    $S(2,0)=(4,0)\neq 2S(1,0)$; viola homogeneidad.

???- details "Solución pregunta 7 — Diagonalizar A"

    Sea $A=\begin{pmatrix}0&1\\1&0\end{pmatrix}$. Buscamos $P^{-1}AP=D$.

    **Paso 1: Polinomio característico**
    $$\det(A-\lambda I)=\det\begin{pmatrix}-\lambda&1\\1&-\lambda\end{pmatrix}=\lambda^2-1=0$$

    **Paso 2: Autovalores**
    $$\lambda_1=1, \quad \lambda_2=-1$$

    **Paso 3: Autovector para $\lambda_1=1$**
    $$A-I=\begin{pmatrix}-1&1\\1&-1\end{pmatrix}$$
    Ecuación $-x+y=0 \implies y=x$. Tomamos $v_1=(1,1)$.

    **Paso 4: Autovector para $\lambda_2=-1$**
    $$A+I=\begin{pmatrix}1&1\\1&1\end{pmatrix}$$
    Ecuación $x+y=0 \implies y=-x$. Tomamos $v_2=(1,-1)$.

    **Paso 5: Matriz de paso y diagonal**
    $$P=\begin{pmatrix}1&1\\1&-1\end{pmatrix},\quad D=\begin{pmatrix}1&0\\0&-1\end{pmatrix}$$

    **Paso 6: Verificación breve**
    Con $\det P=-2\neq 0$, $P$ es invertible y cumple $P^{-1}AP=D$.

    **Conclusión:** $A$ es diagonalizable con esos autovalores y autovectores.

???- details "Solución pregunta 8 — Diagonal trivial"

    Sea $C=\begin{pmatrix}2&0\\0&2\end{pmatrix}$. Es diagonal; cualquier base de autovectores sirve.

    **Paso 1: Autovalor**
    Polinomio: $(2-\lambda)^2=0 \implies \lambda=2$ (doble).

    **Paso 2: Espacio propio**
    $(C-2I)v=0 \Rightarrow \begin{pmatrix}0&0\\0&0\end{pmatrix}\begin{pmatrix}x\\y\end{pmatrix}=0$. Todo vector no nulo es autovector; tomamos $v_1=(1,0)$, $v_2=(0,1)$.

    **Paso 3: Matrices $P$ y $D$**
    $$P=I=\begin{pmatrix}1&0\\0&1\end{pmatrix},\quad D=\begin{pmatrix}2&0\\0&2\end{pmatrix}$$

    **Conclusión:** $C$ ya está diagonal; $P^{-1}CP=D$ es inmediato.

???- details "Solución pregunta 9 — Subconjuntos"

    Potencia de conjunto: cada uno de los 5 elementos puede estar o no. Es **combinación con repetición binaria (inclusión/exclusión)**, equivalente a $2^5=32$ subconjuntos.

???- details "Solución pregunta 10 — Presidente/vice"

    Elegir presidente y vicepresidente (distintos) es **permutación sin repetición** de 2 personas entre 6: importa el orden (presi vs vice) y no se repite persona.

    $$P(6,2)=6\cdot 5=30$$
