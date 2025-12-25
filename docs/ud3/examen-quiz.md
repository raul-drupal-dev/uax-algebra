# UD3 — Examen tipo test (Quiz)

_Estimación: 55–60 minutos. Material: ninguno. Justifica mentalmente, pero responde marcando la opción correcta._

**Instrucciones**

- Lee con calma cada pregunta.
- En preguntas de cálculo, elige el resultado correcto (no hace falta escribir el desarrollo).
- Cada pregunta vale lo mismo (salvo que tu profesor indique otra cosa).

---

## Parte A — Conceptos y linealidad

<quiz>
¿Cuál de las siguientes condiciones caracteriza a una aplicación lineal $T:V\to W$?

- [ ] $T(u\cdot v)=T(u)\cdot T(v)$
- [x] $T(u+v)=T(u)+T(v)$ y $T(\alpha u)=\alpha T(u)$
- [ ] $T(u+v)=T(u)\,T(v)$
- [ ] $T(u)=u$ para todo $u$

La linealidad se define por **aditividad** y **homogeneidad**. Los “productos” no forman parte de la definición.
</quiz>

<quiz>
Sea $S:\mathbb{R}^2\to\mathbb{R}^2$ dada por $S(x,y)=(x+1,y)$. ¿Es lineal?

- [ ] Sí, porque es de la forma $Ax$
- [x] No, porque $S(0,0)\neq (0,0)$
- [ ] Sí, porque preserva sumas
- [ ] Depende de la base

Si fuera lineal debería cumplirse $S(0)=0$. Pero $S(0,0)=(1,0)$.
</quiz>

<quiz>
Sea $T:\mathbb{R}^3\to\mathbb{R}^2$ dada por $T(x,y,z)=(x+2y-z,\,3x+y+z)$. ¿Cuál es el tamaño de la matriz asociada en bases canónicas?

- [ ] $3\times 3$
- [x] $2\times 3$
- [ ] $3\times 2$
- [ ] $2\times 2$

De $\mathbb{R}^3$ a $\mathbb{R}^2$ la matriz es $2\times 3$ (filas = dimensión del codominio, columnas = dimensión del dominio).
</quiz>

<quiz>
Si $T$ y $S$ son lineales $V\to W$, ¿cuál de las siguientes aplicaciones es siempre lineal?

- [ ] $U(v)=\|T(v)\|$
- [ ] $U(v)=T(v)\cdot S(v)$
- [x] $U(v)=T(v)+S(v)$
- [ ] $U(v)=T(v)+w_0$ con $w_0\neq 0$ fijo

La suma de lineales es lineal. Norma, producto y traslación por vector fijo no lo son en general.
</quiz>

---

## Parte B — Núcleo, imagen y rango–nulidad

<quiz>
Sea $T:\mathbb{R}^4\to\mathbb{R}^3$ lineal con $\dim(\ker T)=2$. Entonces $\dim(\operatorname{Im}T)$ es:

- [ ] 1
- [x] 2
- [ ] 3
- [ ] 4

Por rango–nulidad: $4 = \dim(\ker T)+\dim(\operatorname{Im}T)=2+\dim(\operatorname{Im}T)$.
</quiz>

<quiz>
Sea $A=\begin{pmatrix}1&0&2\\0&1&-1\\2&0&4\end{pmatrix}$ y $T(x)=Ax$ en $\mathbb{R}^3\to\mathbb{R}^3$. ¿Qué afirmación es correcta?

- [ ] Es isomorfismo porque $\det(A)\neq 0$
- [x] No es inyectiva ni sobreyectiva porque $\operatorname{rg}(A)<3$
- [ ] Es inyectiva pero no sobreyectiva
- [ ] Es sobreyectiva pero no inyectiva

La tercera fila es $2$ veces la primera, así que el rango es menor que 3. En $\mathbb{R}^3\to\mathbb{R}^3$, rango menor que 3 implica no inyectiva y no sobreyectiva.
</quiz>

<quiz>
Sea $A=\begin{pmatrix}1&1&0\\2&2&0\\0&1&1\end{pmatrix}$ y $T(x)=Ax$ en $\mathbb{R}^3\to\mathbb{R}^3$. ¿Cuál es una base de $\ker(T)$?

- [ ] $\{(1,0,0)\}$
- [ ] $\{(0,1,0)\}$
- [x] $\{(1,-1,1)\}$
- [ ] $\{(1,1,-1)\}$

Resolver $Ax=0$ da $x+y=0$ y $y+z=0$ (la segunda ecuación es redundante), luego $(x,y,z)=t(1,-1,1)$.
</quiz>

<quiz>
Para la matriz del ejercicio anterior, ¿cuál es una base de $\operatorname{Im}(T)$?

- [x] $\{(1,2,0),(0,0,1)\}$
- [ ] $\{(1,1,1)\}$
- [ ] $\{(1,0,0),(0,1,0),(0,0,1)\}$
- [ ] $\{(1,2,1)\}$

Las columnas son $c_1=(1,2,0),\ c_2=(1,2,1),\ c_3=(0,0,1)$ y se cumple $c_2=c_1+c_3$, así que una base es $\{c_1,c_3\}$.
</quiz>

<quiz>
En $\mathbb{R}^3$, sea $T(x,y,z)=(x+y,\,y+z,\,x+z)$. ¿Cuál es $\ker(T)$?

- [ ] $\operatorname{span}\{(1,-1,0)\}$
- [ ] $\operatorname{span}\{(1,1,1)\}$
- [x] $\{0\}$
- [ ] $\operatorname{span}\{(1,0,-1)\}$

El sistema $x+y=0$, $y+z=0$, $x+z=0$ tiene la única solución $(0,0,0)$. Paso a paso:

- Imponemos $T(x,y,z)=(0,0,0)$, es decir el sistema
  
  \[
  \begin{cases}
  x+y=0\\
  y+z=0\\
  x+z=0
  \end{cases}
  \]
  
- De $x+y=0$ sigue $x=-y$.
- De $y+z=0$ sigue $z=-y$.
- Sustituimos en $x+z=0$: $(-y)+(-y)=0\Rightarrow -2y=0\Rightarrow y=0$.
- Entonces $x=-y=0$ y $z=-y=0$, por tanto la única solución es $(0,0,0)$.
  </quiz>

---

## Parte C — Matriz asociada y cambios de base

<quiz>
Sea $T:\mathbb{R}^2\to\mathbb{R}^2$ dada por $T(x,y)=(x+2y,\,3x-y)$. ¿Cuál es su matriz en la base canónica?

- [ ] $\begin{pmatrix}1&3\\2&-1\end{pmatrix}$
- [x] $\begin{pmatrix}1&2\\3&-1\end{pmatrix}$
- [ ] $\begin{pmatrix}1&2\\-3&1\end{pmatrix}$
- [ ] $\begin{pmatrix}2&1\\-1&3\end{pmatrix}$

Las columnas son $T(e_1)=(1,3)$ y $T(e_2)=(2,-1)$.
</quiz>

<quiz>
Sea $T:\mathbb{R}^3\to\mathbb{R}^2$ lineal con $T(1,0,0)=(2,1)$, $T(0,1,0)=(-1,0)$, $T(0,0,1)=(3,-2)$. Entonces $T(4,-1,2)$ vale:

- [ ] $(9,1)$
- [x] $(15,0)$
- [ ] $(15,-1)$
- [ ] $(0,15)$

Usa linealidad: $T(4,-1,2)=4T(e_1)-T(e_2)+2T(e_3)=4(2,1)-(-1,0)+2(3,-2)=(15,0)$.
</quiz>

<quiz>
Para $T:\mathbb{R}^n\to\mathbb{R}^n$ con matriz $A$ (en bases canónicas), ¿qué condición equivale a que $T$ sea un isomorfismo?

- [ ] $\operatorname{rg}(A)=0$
- [ ] $\det(A)=0$
- [ ] $\ker(T)\neq\{0\}$
- [x] $\det(A)\neq 0$

En dimensión finita, $T$ es isomorfismo si y sólo si $A$ es invertible, si y sólo si $\det(A)\neq 0$.
</quiz>

---

## Parte D — Dual, anulador e interpolación

<quiz>
En una base $B=\{b_1,b_2,b_3\}$ y su base dual $B^*=\{\varphi^1,\varphi^2,\varphi^3\}$, ¿cuánto vale $\varphi^2(b_2)$?

- [ ] 0
- [x] 1
- [ ] 2
- [ ] Depende de la base

Por definición de base dual: $\varphi^i(b_j)=\delta_{ij}$.
</quiz>

<quiz>
En $\mathbb{R}^3$, sea $U=\operatorname{span}\{(1,0,1),(0,1,1)\}$. ¿Cuál es una base de $U^0$?

- [ ] $\{x+y+z\}$
- [ ] $\{x-y\}$
- [x] $\{-x-y+z\}$
- [ ] $\{x+z\}$

Un funcional genérico es $\varphi(x,y,z)=ax+by+cz$. Exigir $\varphi(1,0,1)=0$ y $\varphi(0,1,1)=0$ da $a+c=0$ y $b+c=0$; tomando $c=1$ resulta $\varphi=-x-y+z$.
</quiz>

<quiz>
Con 4 puntos con abscisas distintas, el polinomio interpolador único tiene grado como máximo:

- [ ] 1
- [ ] 2
- [x] 3
- [ ] 4

Con $n+1$ puntos (abscisas distintas) hay interpolación única de grado $\le n$. Aquí $n+1=4 \Rightarrow n=3$.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->
