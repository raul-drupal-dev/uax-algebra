---
title: Examen práctica — Álgebra Lineal (independencia, cambio de base, aplicaciones, ecuaciones cartesianas/paramétricas, diagonalización, combinatoria) (medio)
---

Duración estimada: 55 minutos.

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
Sea $v_1=(1,0,1)$, $v_2=(0,1,1)$, $v_3=(1,1,2)$ en $\mathbb{R}^3$. ¿Son linealmente independientes?
- [x] No, porque $v_3=v_1+v_2$.
- [ ] Sí, forman una base de $\mathbb{R}^3$.
- [ ] Son dependientes pero generan un subespacio de dimensión 3.
- [ ] Son independientes solo si se cambia de base.
Explicación: $v_3$ es combinación lineal de $v_1$ y $v_2$, luego el conjunto es dependiente.
</quiz>

<quiz>
En la base canónica de $\mathbb{R}^2$, $B=\{(1,0),(0,1)\}$, y otra base $B'=\{(1,1),(1,-1)\}$. El vector $x=(2,0)$ tiene coordenadas en $B'$:
- [x] $(1,1)$
- [ ] $(2,0)$
- [ ] $(1,0)$
- [ ] $(0,2)$
Explicación: Resolver $x=\alpha(1,1)+\beta(1,-1)$ da $\alpha=1,\beta=1$.
</quiz>

<quiz>
Sea $T:\mathbb{R}^2\to\mathbb{R}^2$, $T(x,y)=(x+2y,\,2x+4y)$. ¿Es aplicación lineal?
- [x] Sí, es lineal.
- [ ] No, porque no preserva la suma.
- [ ] No, porque no preserva el origen.
- [ ] Solo es lineal en el eje $x$.
Explicación: Es matriz $A=\begin{pmatrix}1&2\\2&4\end{pmatrix}$; cumple aditividad y homogeneidad.
</quiz>

<quiz>
Ecuación cartesiana del plano generado por $(1,0,1)$ y $(0,1,1)$ en $\mathbb{R}^3$ que pasa por el origen:
- [x] $x+y- z=0$
- [ ] $x-y+z=0$
- [ ] $x+y+z=0$
- [ ] $x-y-z=0$
Explicación: Normal $n=(1,1,-1)$ perpendicular a ambos generadores; su ecuación es $n\cdot (x,y,z)=0$.
</quiz>

<quiz>
Parametriza la recta que pasa por $(1,2,0)$ con dirección $(1,-1,2)$:
- [x] $(x,y,z)=(1,2,0)+t(1,-1,2)$
- [ ] $(x,y,z)=(1,2,0)+t(1,1,2)$
- [ ] $(x,y,z)=(1,2,0)+t(-1,1,-2)$
- [ ] $(x,y,z)=(1,2,0)+t(0,1,2)$
Explicación: Forma punto-dirección estándar con el vector dado.
</quiz>

<quiz>
Matriz $A=\begin{pmatrix}2&0\\0&3\end{pmatrix}$. ¿Es diagonalizable?
- [x] Sí, ya es diagonal con autovalores 2 y 3.
- [ ] No, porque tiene autovalores distintos.
- [ ] Sí, pero requiere base compleja.
- [ ] Solo si se permutan filas.
Explicación: Matriz diagonal con base canónica de autovectores.
</quiz>

<quiz>
Matriz $B=\begin{pmatrix}4&1\\0&4\end{pmatrix}$. Sobre su diagonalización:
- [ ] Es diagonalizable porque tiene autovalores distintos.
- [ ] Es diagonalizable con una única base de autovectores.
- [x] No es diagonalizable; solo hay un autovector (bloque de Jordan).
- [ ] Es diagonalizable si se escala por 4.
Explicación: Autovalor 4 de multiplicidad algebraica 2 y geométrica 1; falta base completa de autovectores.
</quiz>

<quiz>
Para $A=\begin{pmatrix}1&1\\0&2\end{pmatrix}$, la matriz diagonal $D$ y la matriz de paso $P$ (con columnas autovectores) pueden ser:
- [x] $D=\begin{pmatrix}1&0\\0&2\end{pmatrix}$, $P=\begin{pmatrix}1&1\\0&1\end{pmatrix}$
- [ ] $D=\begin{pmatrix}2&0\\0&1\end{pmatrix}$, $P=\begin{pmatrix}1&0\\1&1\end{pmatrix}$
- [ ] $D=\begin{pmatrix}1&0\\0&1\end{pmatrix}$, $P=\begin{pmatrix}1&0\\0&1\end{pmatrix}$
- [ ] No es diagonalizable.
Explicación: Autovalores 1 y 2 con autovectores $(1,0)$ y $(1,1)$; $P^{-1}AP=D$.
</quiz>

<quiz>
Combinatoria: ¿Número de maneras de elegir 3 elementos de un conjunto de 6 sin orden?
- [x] $\binom{6}{3}=20$
- [ ] $\binom{6}{3}=15$
- [ ] $6^3=216$
- [ ] $3!=6$
Explicación: Combinaciones sin repetición: $\binom{6}{3}=20$.
</quiz>

<quiz>
De cuántas formas se pueden ordenar 4 libros distintos en una estantería:
- [x] $4!=24$
- [ ] $4^4=256$
- [ ] $\binom{4}{2}=6$
- [ ] $3!=6$
Explicación: Permutaciones de 4 elementos: $4!=24$.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Dependencia de tres vectores"

    $v_3=v_1+v_2$, así que el rango es 2 y el conjunto es dependiente.

???- details "Solución pregunta 2 — Coordenadas en base B'"

    Resolver $(2,0)=\alpha(1,1)+\beta(1,-1)$ da $\alpha=1,\beta=1$.

???- details "Solución pregunta 3 — Linealidad"

    Para que $T:\mathbb{R}^2\to\mathbb{R}^2$ sea aplicación lineal debe cumplir tres propiedades:

    **1. Preserva el vector nulo:** $T(0,0)=(0,0)$

    $$T(0,0)=(0+2\cdot 0,\,2\cdot 0+4\cdot 0)=(0,0)\quad \checkmark$$

    **2. Preserva la suma (aditividad):** $T(u+v)=T(u)+T(v)$

    Sean $u=(x_1,y_1)$ y $v=(x_2,y_2)$:

    $$T(u+v)=T(x_1+x_2,y_1+y_2)=((x_1+x_2)+2(y_1+y_2),\,2(x_1+x_2)+4(y_1+y_2))$$

    $$=(x_1+2y_1+x_2+2y_2,\,2x_1+4y_1+2x_2+4y_2)$$

    $$T(u)+T(v)=(x_1+2y_1,2x_1+4y_1)+(x_2+2y_2,2x_2+4y_2)$$

    $$=(x_1+2y_1+x_2+2y_2,\,2x_1+4y_1+2x_2+4y_2)$$

    $$T(u+v)=T(u)+T(v)\quad \checkmark$$

    **3. Preserva el producto por escalar (homogeneidad):** $T(\alpha u)=\alpha T(u)$

    Sea $u=(x,y)$ y $\alpha\in\mathbb{R}$:

    $$T(\alpha u)=T(\alpha x,\alpha y)=(\alpha x+2\alpha y,\,2\alpha x+4\alpha y)=\alpha(x+2y,2x+4y)=\alpha T(u)\quad \checkmark$$

    Como cumple las tres propiedades, $T$ **es lineal**.

???- details "Solución pregunta 4 — Plano cartesiano"

    Un plano en $\mathbb{R}^3$ se puede representar de dos formas:

    - **Forma paramétrica:** punto + dos vectores directores
    - **Forma cartesiana:** ecuación lineal $ax+by+cz=d$

    El vector normal $\vec{n}$ es perpendicular a todos los vectores del plano. Lo hallamos con el **producto cruz**:

    $$\vec{n} = (1,0,1) \times (0,1,1)$$

    Calculamos:

    $$\vec{n} = \begin{vmatrix} \vec{i} & \vec{j} & \vec{k} \\ 1 & 0 & 1 \\ 0 & 1 & 1 \end{vmatrix}$$

    $$= \vec{i}(0\cdot 1 - 1\cdot 1) - \vec{j}(1\cdot 1 - 1\cdot 0) + \vec{k}(1\cdot 1 - 0\cdot 0)$$

    $$= \vec{i}(-1) - \vec{j}(1) + \vec{k}(1) = (-1, -1, 1)$$

    Podemos usar $\vec{n} = (1, 1, -1)$ (mismo plano, normal opuesta).

    Como el plano pasa por el origen $(0,0,0)$, la ecuación es:

    $$\vec{n} \cdot (x,y,z) = 0$$

    $$(1,1,-1) \cdot (x,y,z) = 0$$

    $$x + y - z = 0$$

    **Verificación:** Los generadores deben satisfacer la ecuación:
    - $(1,0,1)$: $1+0-1=0$ ✓
    - $(0,1,1)$: $0+1-1=0$ ✓

???- details "Solución pregunta 5 — Recta paramétrica"

    Forma punto-dirección: $(x,y,z)=(1,2,0)+t(1,-1,2)$.

???- details "Solución pregunta 6 — Diagonalizable trivial"

    Dada $A=\begin{pmatrix}2&0\\0&3\end{pmatrix}$, diagonalizarla significa encontrar $P$ y $D$ tales que $P^{-1}AP=D$.

    **Paso 1: Polinomio característico**

    $$\det(A-\lambda I)=\det\begin{pmatrix}2-\lambda&0\\0&3-\lambda\end{pmatrix}$$

    $$=(2-\lambda)(3-\lambda)=0$$

    **Paso 2: Autovalores**

    $$\lambda_1=2, \quad \lambda_2=3$$

    **Paso 3: Espacio propio para $\lambda_1=2$**

    Resolver $(A-2I)v=0$:

    $$\begin{pmatrix}0&0\\0&1\end{pmatrix}\begin{pmatrix}x\\y\end{pmatrix}=\begin{pmatrix}0\\0\end{pmatrix}$$

    Obtenemos $y=0$, $x$ libre. **Autovector:** $v_1=(1,0)$

    **Paso 4: Espacio propio para $\lambda_2=3$**

    Resolver $(A-3I)v=0$:

    $$\begin{pmatrix}-1&0\\0&0\end{pmatrix}\begin{pmatrix}x\\y\end{pmatrix}=\begin{pmatrix}0\\0\end{pmatrix}$$

    Obtenemos $x=0$, $y$ libre. **Autovector:** $v_2=(0,1)$

    **Paso 5: Matriz de paso $P$**

    Columnas = autovectores ordenados por autovalores:

    $$P=\begin{pmatrix}1&0\\0&1\end{pmatrix}=I$$

    **Paso 6: Matriz diagonal $D$**

    Diagonal = autovalores en el mismo orden:

    $$D=\begin{pmatrix}2&0\\0&3\end{pmatrix}$$

    **Paso 7: Verificación**

    $$P^{-1}AP = I^{-1}AI = A = \begin{pmatrix}2&0\\0&3\end{pmatrix}=D\quad \checkmark$$

    **Conclusión:** $A$ ya era diagonal, así que es **trivialmente diagonalizable**.

???- details "Solución pregunta 7 — No diagonalizable"

    Dada $B=\begin{pmatrix}4&1\\0&4\end{pmatrix}$, queremos $P^{-1}BP=D$.

    **Paso 1: Polinomio característico**

    $$\det(B-\lambda I)=\det\begin{pmatrix}4-\lambda&1\\0&4-\lambda\end{pmatrix}=(4-\lambda)^2=0$$

    **Paso 2: Autovalor**

    $$\lambda=4 \quad (\text{multiplicidad algebraica } 2)$$

    **Paso 3: Espacio propio**

    Resolver $(B-4I)v=0$:

    $$\begin{pmatrix}0&1\\0&0\end{pmatrix}\begin{pmatrix}x\\y\end{pmatrix}=\begin{pmatrix}0\\0\end{pmatrix} \implies y=0,\ x\ \text{libre}$$

    Un autovector es $v_1=(1,0)$. El **espacio propio es 1-dimensional** (multiplicidad geométrica 1).

    **Paso 4: Conclusión**

    La multiplicidad geométrica (1) es menor que la algebraica (2), así que **no hay una base completa de autovectores**. La matriz no es diagonalizable (tendría un bloque de Jordan de tamaño 2).

???- details "Solución pregunta 8 — Diagonalización de A"

    Sea $A=\begin{pmatrix}1&1\\0&2\end{pmatrix}$. Buscamos $P^{-1}AP=D$.

    **Paso 1: Polinomio característico**

    $$\det(A-\lambda I)=\det\begin{pmatrix}1-\lambda&1\\0&2-\lambda\end{pmatrix}=(1-\lambda)(2-\lambda)=0$$

    Autovalores simples: $\lambda_1=1$, $\lambda_2=2$ (al ser distintos, ya sabemos que es diagonalizable).

    **Paso 2: Autovector para $\lambda_1=1$**

    $$A-I=\begin{pmatrix}0&1\\0&1\end{pmatrix}$$
    Ecuaciones: $y=0$ (la segunda es igual). Tomamos $v_1=(1,0)$.

    **Paso 3: Autovector para $\lambda_2=2$**

    $$A-2I=\begin{pmatrix}-1&1\\0&0\end{pmatrix}$$
    Ecuación: $-x+y=0 \implies y=x$. Tomamos $v_2=(1,1)$.

    **Paso 4: Matriz de paso y diagonal**

    $$P=\begin{pmatrix}1&1\\0&1\end{pmatrix}, \quad D=\begin{pmatrix}1&0\\0&2\end{pmatrix}$$

    **Paso 5: Verificación rápida**

    \(P^{-1}=\begin{pmatrix}1&-1\\0&1\end{pmatrix}\) (determinante 1). Comprueba:
    $$P^{-1}AP = \begin{pmatrix}1&-1\\0&1\end{pmatrix}\begin{pmatrix}1&1\\0&2\end{pmatrix}\begin{pmatrix}1&1\\0&1\end{pmatrix}=\begin{pmatrix}1&0\\0&2\end{pmatrix}=D$$

    **Conclusión:** $A$ es diagonalizable con esos autovalores y autovectores.

???- details "Solución pregunta 9 — Combinaciones"

    Elegir 3 de 6 **sin orden y sin repetición** es una combinación: primero eliges el subconjunto, no importa el orden interno. Fórmula:

    $$\binom{6}{3}=\frac{6!}{3!\,3!}=20$$

    No es variación ni permutación porque el orden no importa y no se repiten elementos.

???- details "Solución pregunta 10 — Permutaciones"

    Ordenar 4 libros distintos en fila es **permutación sin repetición**: importa el orden y cada libro se usa una vez. Fórmula:

    $$P_4=4!=24$$

    No es combinación porque el orden sí importa; no es con repetición porque cada libro es único y se coloca solo una vez.
