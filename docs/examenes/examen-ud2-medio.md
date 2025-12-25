---
title: Examen UD2 — Espacios vectoriales (UD2) (medio)
---

# Examen UD2 — Espacios vectoriales

_Duración estimada: 45 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). Algunas preguntas pueden tener más de una respuesta válida._

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
Sea $W=\{(x,y,z)\in\mathbb{R}^3\mid x+2y-z=0\}$. ¿Cuál es una base de $W$?

- [ ] $\{(1,0,0),(0,1,0)\}$
- [x] $\{(-2,1,0),(1,0,1)\}$
- [ ] $\{(1,2,-1)\}$
- [ ] $\{(1,0,0),(0,0,1)\}$

Explicación breve: De $x=-2y+z$ se parametriza con dos parámetros.
</quiz>

---

<quiz>
En $\mathbb{R}^3$, sean $v_1=(1,1,0)$, $v_2=(2,2,0)$, $v_3=(0,1,1)$. ¿Cuál es $\dim\,\langle v_1,v_2,v_3\rangle$?

- [ ] 1
- [x] 2
- [ ] 3
- [ ] 0

Explicación breve: $v_2=2v_1$ y $v_3$ no es múltiplo de $v_1$.
</quiz>

---

<quiz>
En $P_2$ (polinomios reales de grado $\le 2$), sea $U=\{p(x)\in P_2\mid p(1)=0\}$. ¿Cuál(es) afirmación(es) son verdaderas?

- [x] $U$ es un subespacio de $P_2$
- [x] $\dim(U)=2$
- [ ] $\dim(U)=1$
- [x] $\{(x-1),\,x(x-1)\}$ es una base de $U$

Explicación breve: $p(1)=0$ equivale a que $(x-1)$ divide a $p$; en $P_2$ queda un factor lineal.
</quiz>

---

<quiz>
Sea $S=\{(x,y)\in\mathbb{R}^2\mid y=|x|\}$. ¿Qué ocurre con $S$?

- [ ] Es un subespacio de $\mathbb{R}^2$
- [x] No es subespacio porque no es cerrado para la suma
- [ ] No es subespacio porque no contiene al vector $0$
- [ ] Es subespacio pero no tiene base

Explicación breve: $(1,1)$ y $(-1,1)$ están en $S$, pero su suma $(0,2)$ no lo está.
</quiz>

---

<quiz>
El conjunto $V=\left\{\begin{pmatrix}a&b\\0&a\end{pmatrix}\,\middle|\,a,b\in\mathbb{R}\right\}$, con la suma y producto por escalar usuales, es un subespacio de $M_{2\times 2}$. ¿Cuál es una base de $V$?

- [x] $\left\{\begin{pmatrix}1&0\\0&1\end{pmatrix},\,\begin{pmatrix}0&1\\0&0\end{pmatrix}\right\}$
- [ ] $\left\{\begin{pmatrix}1&0\\0&0\end{pmatrix},\,\begin{pmatrix}0&0\\0&1\end{pmatrix}\right\}$
- [ ] $\left\{\begin{pmatrix}1&1\\0&1\end{pmatrix}\right\}$
- [ ] $\left\{\begin{pmatrix}0&1\\1&0\end{pmatrix},\,\begin{pmatrix}1&0\\0&-1\end{pmatrix}\right\}$

Explicación breve: Cualquier elemento es $aI + bE_{12}$.
</quiz>

---

<quiz>
Sea el sistema homogéneo en $\mathbb{R}^3$:

$$
\begin{cases}
x+y+z=0\\
2x+2y+2z=0\\
x+z=0
\end{cases}
$$

¿Cuál es una base del espacio solución?

- [ ] $\{(0,1,0)\}$
- [x] $\{(1,0,-1)\}$
- [ ] $\{(1,-1,0)\}$
- [ ] $\{(1,1,-2)\}$

Explicación breve: De $x+z=0$ sale $z=-x$ y luego $y=0$.
</quiz>

---

<quiz>
Sea $B=\{(1,1),(1,-1)\}$ una base de $\mathbb{R}^2$. ¿Cuáles son las coordenadas de $v=(2,0)$ en la base $B$?

- [x] $\begin{pmatrix}1\\1\end{pmatrix}$
- [ ] $\begin{pmatrix}2\\0\end{pmatrix}$
- [ ] $\begin{pmatrix}0\\2\end{pmatrix}$
- [ ] $\begin{pmatrix}-1\\1\end{pmatrix}$

Explicación breve: Resolver $a(1,1)+b(1,-1)=(2,0)$.
</quiz>

---

<quiz>
Sean $U$ y $W$ subespacios de $\mathbb{R}^3$ con $\dim(U)=2$, $\dim(W)=2$ y $\dim(U\cap W)=1$. ¿Cuál es $\dim(U+W)$?

- [ ] 1
- [ ] 2
- [x] 3
- [ ] 4

Explicación breve: Fórmula $\dim(U+W)=\dim U + \dim W - \dim(U\cap W)$.
</quiz>

---

<quiz>
En $\mathbb{R}^3$, sean $v_1=(1,0,1)$ y $v_2=(0,1,1)$. Considera $v_3=(1,1,2)$. ¿Cuál(es) afirmación(es) es/son verdadera(s)?

- [x] $v_3\in\langle v_1,v_2\rangle$
- [x] $\{v_1,v_2\}$ es linealmente independiente
- [ ] $\{v_1,v_2,v_3\}$ es linealmente independiente
- [ ] $v_3$ no se puede escribir como combinación lineal de $v_1$ y $v_2$

Explicación breve: $v_1+v_2=(1,1,2)=v_3$.
</quiz>

---

<quiz>
En $\mathbb{R}^2$, sea $B=\{(1,0),(1,1)\}$. Si $[v]_B=\begin{pmatrix}2\\-1\end{pmatrix}$, ¿cuál es $v$ en la base canónica?

- [x] $(1,-1)$
- [ ] $(1,1)$
- [ ] $(2,-1)$
- [ ] $(0,-1)$

Explicación breve: $v=2(1,0)+(-1)(1,1)$.
</quiz>

---

<quiz>
En $\mathbb{R}^4$, sean
$w_1=(1,0,1,0)$, $w_2=(0,1,0,1)$, $w_3=(1,1,1,1)$, $w_4=(2,1,2,1)$.
¿Cuál es $\dim\langle w_1,w_2,w_3,w_4\rangle$?

- [ ] 1
- [x] 2
- [ ] 3
- [ ] 4

Explicación breve: $w_3=w_1+w_2$ y $w_4=2w_1+w_2$.
</quiz>

---

<quiz>
Sea $E$ un espacio vectorial de dimensión 4. ¿Cuál(es) afirmación(es) es/son siempre verdadera(s)?

- [x] Cualquier conjunto de 5 vectores de $E$ es linealmente dependiente
- [x] Cualquier conjunto de 4 vectores linealmente independientes es una base de $E$
- [ ] Todo conjunto de 3 vectores de $E$ genera $E$
- [x] Existen conjuntos de 4 vectores en $E$ que no sean base

Explicación breve: En dimensión 4, 5 vectores ⇒ dependencia; 4 L.I. ⇒ base; y también existen 4-vectores dependientes.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Base de un subespacio en \u211d^3"
    $W$ está definido por una ecuación lineal homogénea, luego es un subespacio.

    De $x+2y-z=0$ se tiene $x=-2y+z$. Tomando $y=s$ y $z=t$:

    $$(x,y,z)=(-2s+t,\,s,\,t)=s(-2,1,0)+t(1,0,1).$$

    Por tanto, una base es $\{(-2,1,0),(1,0,1)\}$.

???- details "Solución pregunta 2 — Dimensión del subespacio generado"
    Como $v_2=(2,2,0)=2(1,1,0)=2v_1$, los vectores $v_1$ y $v_2$ no aportan dos direcciones distintas.

    Además, $v_3=(0,1,1)$ no es múltiplo de $v_1$ (por ejemplo, la primera coordenada sería 0 y no lo es en $v_1$), así que $\{v_1,v_3\}$ es L.I.

    Luego $\dim\langle v_1,v_2,v_3\rangle=\dim\langle v_1,v_3\rangle=2$.

???- details "Solución pregunta 3 — Subespacio en P2 con condición p(1)=0"
    La aplicación evaluación $\varphi:P_2\to\mathbb{R}$ dada por $\varphi(p)=p(1)$ es lineal, y

    $$U=\ker(\varphi).$$

    Por tanto $U$ es subespacio.

    En $P_2$ la condición $p(1)=0$ equivale a que $(x-1)$ divide a $p$. Entonces

    $$p(x)=(x-1)(ax+b)=a\,x(x-1)+b\,(x-1).$$

    Luego $U=\langle x(x-1),\,(x-1)\rangle$ y $\dim(U)=2$.

???- details "Solución pregunta 4 — Conjunto no subespacio"
    Se comprueba que no es cerrado para la suma:

    $$(1,1)\in S,\quad (-1,1)\in S,$$

    pero

    $$(1,1)+(-1,1)=(0,2)\notin S,$$

    porque $2\ne |0|$.

???- details "Solución pregunta 5 — Base en un subespacio de matrices"
    Cualquier elemento de $V$ es

    $$\begin{pmatrix}a&b\\0&a\end{pmatrix}=a\begin{pmatrix}1&0\\0&1\end{pmatrix}+b\begin{pmatrix}0&1\\0&0\end{pmatrix}.$$

    Los dos generadores son L.I., así que forman una base de $V$.

???- details "Solución pregunta 6 — Base del espacio solución"
    Del sistema:

    $$\begin{cases}
    x+y+z=0\\
    2x+2y+2z=0\\
    x+z=0
    \end{cases}$$

    La segunda ecuación es redundante (es $2\cdot$ la primera).

    De $x+z=0$ se obtiene $z=-x$. Sustituyendo en $x+y+z=0$:

    $$x+y-x=0\Rightarrow y=0.$$

    Entonces $(x,y,z)=(t,0,-t)=t(1,0,-1)$.

???- details "Solución pregunta 7 — Coordenadas en una base"
    Buscamos $a,b$ tales que

    $$a(1,1)+b(1,-1)=(2,0).$$

    Por componentes:

    $$\begin{cases}a+b=2\\a-b=0\end{cases}$$

    Sumando: $2a=2\Rightarrow a=1$ y entonces $b=1$.

    Por tanto $[v]_B=(1,1)^T$.

???- details "Solución pregunta 8 — Dimensión de suma de subespacios"
    Se aplica la fórmula:

    $$\dim(U+W)=\dim(U)+\dim(W)-\dim(U\cap W)=2+2-1=3.$$

???- details "Solución pregunta 9 — Pertenencia al subespacio generado"
    Se comprueba que

    $$v_1+v_2=(1,0,1)+(0,1,1)=(1,1,2)=v_3,$$

    luego $v_3\in\langle v_1,v_2\rangle$.

    Además, $v_1$ y $v_2$ son L.I. porque si $\alpha v_1+\beta v_2=0$, mirando la primera coordenada se obtiene $\alpha=0$ y mirando la segunda $\beta=0$.

???- details "Solución pregunta 10 — Reconstruir un vector desde sus coordenadas"
    Por definición de coordenadas en la base $B=\{(1,0),(1,1)\}$:

    $$v=2(1,0)+(-1)(1,1)=(2,0)-(1,1)=(1,-1).$$

???- details "Solución pregunta 11 — Dimensión del subespacio generado en \u211d^4"
    Observa que

    $$w_3=(1,1,1,1)=(1,0,1,0)+(0,1,0,1)=w_1+w_2,$$

    y

    $$w_4=(2,1,2,1)=2(1,0,1,0)+(0,1,0,1)=2w_1+w_2.$$

    Así, todos están en $\langle w_1,w_2\rangle$.

    Además $w_1$ y $w_2$ son L.I. (tienen soportes en coordenadas distintas), luego

    $$\dim\langle w_1,w_2,w_3,w_4\rangle=2.$$

???- details "Solución pregunta 12 — Propiedades generales en dimensión 4"
    En un espacio de dimensión 4:

    - Cualquier conjunto de 5 vectores es dependiente (no pueden existir 5 L.I.).
    - Un conjunto de 4 vectores L.I. necesariamente es base.
    - Existen conjuntos de 4 vectores que no son base (por ejemplo, repitiendo un vector o tomando un conjunto dependiente).

    La afirmación “todo conjunto de 3 vectores genera $E$” no es siempre cierta.
