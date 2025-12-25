---
title: Examen UD3 — Aplicaciones lineales (UD3) (medio)
---

# Examen UD3 — Aplicaciones lineales

_Duración estimada: 40 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). Algunas preguntas pueden tener más de una respuesta válida._

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
Sea $f:\mathbb{R}^3\to\mathbb{R}^2$ definida por

$$f(x,y,z)=(x+y,\;y+z).$$

¿Cuál es una base de $\operatorname{Ker}(f)$?

- [ ] $\{(1,0,0)\}$
- [x] $\{(1,-1,1)\}$
- [ ] $\{(1,1,1)\}$
- [ ] $\{(0,1,0)\}$

Explicación breve: Resolver $x+y=0$ y $y+z=0$ da $(x,y,z)=t(1,-1,1)$.
</quiz>

---

<quiz>
Sea $A=\begin{pmatrix}1&2&0\\2&4&0\end{pmatrix}$ la matriz de $f:\mathbb{R}^3\to\mathbb{R}^2$ (bases canónicas). ¿Cuál(es) afirmación(es) son verdaderas?

- [x] $\dim(\mathrm{Im}(f))=1$
- [x] $\dim(\ker(f))=2$
- [ ] $\dim(\mathrm{Im}(f))=2$
- [ ] $\ker(f)=\{0\}$

Explicación breve: El rango de $A$ es 1 (filas proporcionales), luego nulidad $=3-1=2$.
</quiz>

---

<quiz>
Sea $f:\mathbb{R}^3\to\mathbb{R}^3$ lineal. ¿Cuál(es) afirmación(es) es/son siempre cierta(s)?

- [x] $f$ es inyectiva $\Leftrightarrow \ker(f)=\{0\}$
- [x] Si $f$ es inyectiva entonces $f$ es sobreyectiva
- [ ] Si $f$ es sobreyectiva entonces $\ker(f)$ tiene dimensión 1
- [ ] Si $\ker(f)$ tiene dimensión 1 entonces $f$ no puede ser sobreyectiva

Explicación breve: En dimensión finita con mismo dominio/codominio ($\mathbb{R}^3\to\mathbb{R}^3$), inyectiva ⇔ sobreyectiva.
</quiz>

---

<quiz>
Sea $f:\mathbb{R}^2\to\mathbb{R}^2$ dada por $f(x,y)=(y,-x)$. ¿Cuál es la matriz de $f$ en la base canónica?

- [ ] $\begin{pmatrix}1&0\\0&-1\end{pmatrix}$
- [ ] $\begin{pmatrix}0&-1\\1&0\end{pmatrix}$
- [x] $\begin{pmatrix}0&1\\-1&0\end{pmatrix}$
- [ ] $\begin{pmatrix}1&1\\0&1\end{pmatrix}$

Explicación breve: Columnas $f(e_1)=f(1,0)=(0,-1)$ y $f(e_2)=f(0,1)=(1,0)$.
</quiz>

---

<quiz>
Sea $f:\mathbb{R}^3\to\mathbb{R}^3$ con matriz

$$A=\begin{pmatrix}1&0&0\\0&2&0\\0&0&0\end{pmatrix}.$$

¿Cuál(es) afirmación(es) son correctas?

- [x] $\dim(\mathrm{Im}(f))=2$
- [x] $\dim(\ker(f))=1$
- [ ] $\ker(f)=\{0\}$
- [ ] $f$ es un isomorfismo

Explicación breve: Rango 2 (dos pivotes), nulidad 1; no es invertible porque hay un 0 en la diagonal.
</quiz>

---

<quiz>
En $\mathbb{R}^3$, sea la base $B=\{(1,0,0),(1,1,0),(1,1,1)\}$. ¿Cuáles son las coordenadas de $v=(1,2,3)$ en la base $B$?

- [ ] $\begin{pmatrix}1\\2\\3\end{pmatrix}$
- [x] $\begin{pmatrix}-1\\-1\\3\end{pmatrix}$
- [ ] $\begin{pmatrix}0\\1\\2\end{pmatrix}$
- [ ] $\begin{pmatrix}2\\0\\1\end{pmatrix}$

Explicación breve: Resolver $a(1,0,0)+b(1,1,0)+c(1,1,1)=(1,2,3)$ da $c=3$, $b=-1$, $a=-1$.
</quiz>

---

<quiz>
Sea $f:\mathbb{R}^2\to\mathbb{R}^2$ dada por $f(x,y)=(x+y,y)$ y $g(x,y)=(x, -y)$. ¿Cuál es $g\circ f$?

- [ ] $(g\circ f)(x,y)=(x+y,y)$
- [x] $(g\circ f)(x,y)=(x+y,-y)$
- [ ] $(g\circ f)(x,y)=(x,-y)$
- [ ] $(g\circ f)(x,y)=(x-y,-y)$

Explicación breve: Primero $f(x,y)=(x+y,y)$ y luego $g(u,v)=(u,-v)$.
</quiz>

---

<quiz>
Sea $A$ la matriz de un endomorfismo en la base canónica y sea $P$ la matriz cuyas columnas son los vectores de la nueva base expresados en la base canónica. ¿Cuál es la relación correcta entre $A$ y la matriz $A'$ en la nueva base?

- [ ] $A' = P A P^{-1}$
- [x] $A' = P^{-1} A P$
- [ ] $A' = A P P^{-1}$
- [ ] $A' = P^{-1} A P^{-1}$

Explicación breve: La representación cambia por semejanza: $A' = P^{-1}AP$.
</quiz>

---

<quiz>
Sea $f:\mathbb{R}^3\to\mathbb{R}^3$ lineal con $\dim(\ker(f))=2$. ¿Cuál(es) afirmación(es) son correctas?

- [x] $\dim(\mathrm{Im}(f))=1$
- [ ] $\dim(\mathrm{Im}(f))=2$
- [ ] $f$ es inyectiva
- [x] $f$ no puede ser isomorfismo

Explicación breve: Rango-nulidad: $\dim(\mathrm{Im})=3-2=1$; no es invertible.
</quiz>

---

<quiz>
Sea $f:\mathbb{R}^2\to\mathbb{R}^2$ dada por $f(x,y)=(2x,2y)$. ¿Cuál(es) afirmación(es) son verdaderas?

- [x] $f$ es lineal
- [x] $f$ es un isomorfismo
- [ ] $\ker(f)$ tiene dimensión 1
- [ ] $f$ no es sobreyectiva

Explicación breve: Es multiplicación por 2 (matriz $2I$), invertible; núcleo trivial.
</quiz>

---

<quiz>
¿Cuál es la definición correcta de la base dual $B^*$ asociada a una base $B=\{v_1,\dots,v_n\}$ de un espacio vectorial $V$?

- [ ] El conjunto de vectores de $V$ que son ortogonales a todos los $v_i$.
- [x] El conjunto de funcionales lineales $\{\varphi_1,\dots,\varphi_n\}\subset V^*$ tales que $\varphi_i(v_j)=\delta_{ij}$.
- [ ] El conjunto de transformaciones lineales de $V$ en $V$ que diagonalizan la matriz de la base.
- [ ] La inversa de la matriz de cambio de base entre dos bases cualesquiera.

Explicación breve: La base dual está formada por los funcionales que evalúan a 1 en el vector correspondiente y a 0 en los demás.
</quiz>

---

<quiz>
Sea $B=\{(1,0),(1,1)\}$ base de $\mathbb{R}^2$. ¿Cuál(es) función(es) lineal(es) forman la base dual $B^*$ (es decir, qué funcionales $\varphi_1,\varphi_2\in(\mathbb{R}^2)^*$ cumplen $\varphi_i(v_j)=\delta_{ij}$)?

- [ ] $\varphi_1(x,y)=x,\quad \varphi_2(x,y)=y$
- [x] $\varphi_1(x,y)=x-y,\quad \varphi_2(x,y)=y$
- [ ] $\varphi_1(x,y)=x+y,\quad \varphi_2(x,y)=x-y$
- [ ] $\varphi_1(x,y)=2x-y,\quad \varphi_2(x,y)=x+y$

Explicación breve: Resolver $\varphi_1(1,0)=1,\;\varphi_1(1,1)=0$ da $\varphi_1(x,y)=x-y$. Para $\varphi_2$ se obtiene $\varphi_2(x,y)=y$.
</quiz>

---

<quiz>
Sea $S=\langle(1,1,0)\rangle\subset\mathbb{R}^3$. ¿Cuál(es) afirmación(es) describen correctamente el anulador $S^0\subset(\mathbb{R}^3)^*$?

- [ ] $S^0$ es el conjunto de vectores de $\mathbb{R}^3$ ortogonales a $(1,1,0)$.
- [x] $S^0=\{\varphi\in(\mathbb{R}^3)^*:\;\varphi(1,1,0)=0\}$ (los funcionales que se anulan en $(1,1,0)$).
- [x] En coordenadas, $S^0$ está generado por las formas $\{x-y,\;z\}$ (tiene dimensión 2).
- [ ] $S^0$ tiene dimensión 1 porque $S$ es de dimensión 1.

Explicación breve: Un funcional $\varphi(x,y,z)=ax+by+cz$ anula a $(1,1,0)$ si $a+b=0$, por tanto $b=-a$ y $c$ libre.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Núcleo de f"
    Resolver $f(x,y,z)=(0,0)$:

    $$\begin{cases}x+y=0\\y+z=0\end{cases}$$

    De la primera $x=-y$. De la segunda $z=-y$. Tomando $y=-t$ queda $(x,y,z)=(t,-t,t)=t(1,-1,1)$.

???- details "Solución pregunta 2 — Rango-nulidad"
    Las filas (y columnas 1 y 2) son proporcionales: segunda fila $=2\cdot$ primera. Por tanto $\mathrm{rg}(A)=1$.

    $$\dim(\mathrm{Im})=\mathrm{rg}(A)=1,\qquad \dim(\ker)=3-\mathrm{rg}(A)=2.$$

???- details "Solución pregunta 3 — Inyectiva y sobreyectiva"
    En general, $f$ es inyectiva si y sólo si $\ker(f)=\{0\}$.

    Si $f:\mathbb{R}^3\to\mathbb{R}^3$ es lineal, entonces por rango-nulidad:

    $$\dim(\mathrm{Im})=3-\dim(\ker).$$

    - Si $f$ es inyectiva, $\dim(\ker)=0$ y $\dim(\mathrm{Im})=3$, luego es sobreyectiva.

???- details "Solución pregunta 4 — Matriz asociada"
    Con $e_1=(1,0)$ y $e_2=(0,1)$:

    $$f(e_1)=f(1,0)=(0,-1),\qquad f(e_2)=f(0,1)=(1,0).$$

    La matriz en la base canónica tiene esas imágenes como columnas:

    $$[f]=\begin{pmatrix}0&1\\-1&0\end{pmatrix}.$$

???- details "Solución pregunta 5 — Imagen y núcleo"
    La matriz $A=\mathrm{diag}(1,2,0)$ tiene dos pivotes (en columnas 1 y 2) y una fila/columna asociada al 0.

    - Rango $=2$ ⇒ $\dim(\mathrm{Im})=2$.
    - Nulidad $=3-2=1$ ⇒ $\dim(\ker)=1$.
    No es isomorfismo porque $\det(A)=0$.

???- details "Solución pregunta 6 — Coordenadas en base triangular"
    Queremos $a(1,0,0)+b(1,1,0)+c(1,1,1)=(1,2,3)$.

    Por componentes:

    $$\begin{cases}a+b+c=1\\b+c=2\\c=3\end{cases}$$

    De $c=3$. Luego $b+3=2\Rightarrow b=-1$. Finalmente $a-1+3=1\Rightarrow a=-1$.

    Así $[v]_B=(-1,-1,3)^T$.

???- details "Solución pregunta 7 — Composición"
    $f(x,y)=(x+y,y)$. Aplicamos $g(u,v)=(u,-v)$:

    $$(g\circ f)(x,y)=g(x+y,y)=(x+y,-y).$$

???- details "Solución pregunta 8 — Cambio de base"
    La relación entre matrices de la misma aplicación en dos bases es la semejanza:

    $$A'=P^{-1}AP.$$

???- details "Solución pregunta 9 — Rango-nulidad"
    Si $\dim(\ker(f))=2$ y el dominio es $\mathbb{R}^3$, entonces

    $$\dim(\mathrm{Im}(f))=3-2=1.$$

    No puede ser isomorfismo porque para serlo necesitaría núcleo trivial.

???- details "Solución pregunta 10 — Homotecia"
    $f(x,y)=(2x,2y)$ es lineal y su matriz es $2I$.

    $$\det(2I)=2^2=4\neq 0,$$

    por tanto es invertible (isomorfismo), con núcleo trivial.

???- details "Solución pregunta 11 — Base dual (definición)"
    Sea $B=\{v_1,\dots,v_n\}$ una base de $V$. La base dual $B^*=\{\varphi_1,\dots,\varphi_n\}\subset V^*$ está definida por

    $$\varphi_i(v_j)=\delta_{ij},\quad 1\le i,j\le n.$$

    Es decir, cada funcional lineal $\varphi_i$ toma valor $1$ en $v_i$ y $0$ en los demás vectores de la base.

???- details "Solución pregunta 12 — Base dual (ejemplo)"
    Para $B=\{(1,0),(1,1)\}$ buscamos funcionales $\varphi(x,y)=ax+by$ que cumplan

    $$\varphi_1(1,0)=1,\quad \varphi_1(1,1)=0;$$
    de donde $a=1$ y $a+b=0\Rightarrow b=-1$. Luego

    $$\varphi_1(x,y)=x-y.$$

    Para $\varphi_2$:

    $$\varphi_2(1,0)=0,\quad \varphi_2(1,1)=1;$$
    esto da $c=0$ y $c+d=1\Rightarrow d=1$, es decir

    $$\varphi_2(x,y)=y.$$

    Por tanto $B^*=\{x-y,\;y\}$.

???- details "Solución pregunta 13 — Anulador"
    Si $S=\langle(1,1,0)\rangle\subset\mathbb{R}^3$, el anulador

    $$S^0=\{\varphi\in(\mathbb{R}^3)^*:\;\varphi(1,1,0)=0\}$$

    puede describirse en coordenadas: tomando $\varphi(x,y,z)=ax+by+cz$, la condición

    $$\varphi(1,1,0)=a+b=0$$

    implica $b=-a$ y $c$ libre. Entonces

    $$\varphi(x,y,z)=a(x-y)+c z,$$

    y una base para $S^0$ es por ejemplo $\{x-y,\;z\}$ (dimensión 2).
