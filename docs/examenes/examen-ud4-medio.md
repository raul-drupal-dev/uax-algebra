---
title: Examen UD4 — Diagonalización (UD4) (medio)
---

# Examen UD4 — Diagonalización

_Duración estimada: 40 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). Algunas preguntas pueden tener más de una respuesta válida._

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
Sea $A=\begin{pmatrix}2&0\\0&5\end{pmatrix}$. ¿Cuál(es) afirmación(es) es/son verdadera(s)?

- [x] Los autovalores son 2 y 5
- [x] $A$ es diagonalizable
- [ ] El único autovalor es 2
- [ ] $A$ no es diagonalizable

Explicación breve: Matriz diagonal ⇒ autovalores en la diagonal; siempre diagonalizable.
</quiz>

---

<quiz>
Sea $B=\begin{pmatrix}1&1\\0&1\end{pmatrix}$. Respecto al autovalor $\lambda=1$, ¿cuál(es) afirmación(es) son verdaderas?

- [x] La multiplicidad algebraica es 2
- [x] La multiplicidad geométrica es 1
- [ ] $B$ es diagonalizable
- [ ] El subespacio propio asociado tiene dimensión 2

Explicación breve: $p(x)=(1-x)^2$ y $\dim\ker(B-I)=1$, luego no diagonaliza.
</quiz>

---

<quiz>
Sea $C=\begin{pmatrix}3&1&0\\0&3&0\\0&0&2\end{pmatrix}$. ¿Cuál es el polinomio característico?

- [ ] $(x-3)(x-2)$
- [ ] $(x-3)^3$
- [x] $(x-3)^2(x-2)$
- [ ] $(x-2)^2(x-3)$

Explicación breve: Matriz triangular ⇒ autovalores son los elementos diagonales con sus multiplicidades.
</quiz>

---

<quiz>
Sea $D=\begin{pmatrix}2&1\\1&2\end{pmatrix}$. ¿Cuál es una diagonal posible $\operatorname{diag}(\lambda_1,\lambda_2)$ al diagonalizarla?

- [ ] $\operatorname{diag}(2,2)$
- [x] $\operatorname{diag}(1,3)$
- [ ] $\operatorname{diag}(-1,5)$
- [ ] $\operatorname{diag}(0,4)$

Explicación breve: Autovalores de $\begin{pmatrix}a&b\\b&a\end{pmatrix}$ son $a-b$ y $a+b$; aquí 1 y 3.
</quiz>

---

<quiz>
Sea $E=\begin{pmatrix}4&0&0\\0&4&0\\0&0&1\end{pmatrix}$. ¿Cuál(es) afirmación(es) son correctas?

- [x] La multiplicidad algebraica de $\lambda=4$ es 2
- [x] La dimensión del subespacio propio de $\lambda=4$ es 2
- [ ] La multiplicidad geométrica de $\lambda=4$ es 1
- [x] $E$ es diagonalizable

Explicación breve: Es diagonal, el subespacio propio de 4 está generado por $e_1,e_2$ (dim 2).
</quiz>

---

<quiz>
Sea $F=\begin{pmatrix}0&1\\-2&-3\end{pmatrix}$. ¿Cuál es el polinomio característico $p(\lambda)=\det(F-\lambda I)$?

- [ ] $\lambda^2+3\lambda-2$
- [x] $\lambda^2+3\lambda+2$
- [ ] $\lambda^2-3\lambda+2$
- [ ] $\lambda^2+2\lambda+3$

Explicación breve: $\det\begin{pmatrix}-\lambda&1\\-2&-3-\lambda\end{pmatrix}=\lambda(3+\lambda)+2=\lambda^2+3\lambda+2$.
</quiz>

---

<quiz>
Para la matriz $F=\begin{pmatrix}0&1\\-2&-3\end{pmatrix}$, ¿cuáles son sus autovalores?

- [x] $\lambda=-1$ y $\lambda=-2$
- [ ] $\lambda=1$ y $\lambda=2$
- [ ] $\lambda=-1$ (doble)
- [ ] $\lambda=0$ y $\lambda=-3$

Explicación breve: Del polinomio $\lambda^2+3\lambda+2=(\lambda+1)(\lambda+2)$.
</quiz>

---

<quiz>
¿Cuál(es) afirmación(es) sobre diagonalización es/son verdadera(s)?

- [x] Si una matriz $n\times n$ tiene $n$ autovectores L.I., es diagonalizable
- [x] Si una matriz es diagonalizable, la suma de las dimensiones de sus subespacios propios es $n$
- [ ] Si una matriz tiene un autovalor repetido entonces nunca es diagonalizable
- [ ] Si una matriz es diagonalizable entonces necesariamente es simétrica

Explicación breve: Diagonalización ⇔ base de autovectores; autovalor repetido puede diagonalizarse si hay suficientes autovectores.
</quiz>

---

<quiz>
Sea $G=\begin{pmatrix}2&0&0\\0&2&1\\0&0&2\end{pmatrix}$. Respecto al autovalor $\lambda=2$:
¿cuál(es) afirmación(es) son verdaderas?

- [x] La multiplicidad algebraica es 3
- [x] La multiplicidad geométrica es 2
- [x] $G$ no es diagonalizable
- [ ] $G$ es diagonalizable

Explicación breve: $p(x)=(2-x)^3$ y $\dim\ker(G-2I)=2$, así $d=2<3$ y no diagonaliza.
</quiz>

---

<quiz>
Sea $H=\begin{pmatrix}2&1&0\\0&2&1\\0&0&2\end{pmatrix}$. Respecto a $\lambda=2$, ¿cuál(es) afirmación(es) son verdaderas?

- [x] La multiplicidad algebraica es 3
- [x] La multiplicidad geométrica es 1
- [ ] $H$ es diagonalizable
- [ ] El subespacio propio asociado tiene dimensión 3

Explicación breve: Es un bloque de Jordan de tamaño 3, así $d=1<a=3$.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Matriz diagonal"
    Para una matriz diagonal, los autovalores son sus entradas diagonales. Así $\lambda_1=2$ y $\lambda_2=5$.

    Además, ya está diagonalizada, luego es diagonalizable.

???- details "Solución pregunta 2 — No diagonalizable (Jordan 2x2)"
    
    $$B=\begin{pmatrix}1&1\\0&1\end{pmatrix}$$

    Es triangular, por tanto el autovalor es $\lambda=1$ con multiplicidad algebraica 2.

    $$B-I=\begin{pmatrix}0&1\\0&0\end{pmatrix}$$

    Resolver $(B-I)v=0$ da $y=0$ y $x$ libre ⇒ $\dim\ker(B-I)=1$.

    Como $d=1<a=2$, no es diagonalizable.

???- details "Solución pregunta 3 — Polinomio característico en triangular"
    Para matrices triangulares, el polinomio característico es

    $$p(x)=\prod_i (x-a_{ii}).$$

    Aquí la diagonal es $(3,3,2)$, luego

    $$p(x)=(x-3)^2(x-2).$$

???- details "Solución pregunta 4 — Autovalores de matriz simétrica 2x2"
    Para $D=\begin{pmatrix}2&1\\1&2\end{pmatrix}$:

    $$\det(D-\lambda I)=\det\begin{pmatrix}2-\lambda&1\\1&2-\lambda\end{pmatrix}=(2-\lambda)^2-1.$$

    Igualando a 0:

    $$(2-\lambda)^2=1\Rightarrow 2-\lambda=\pm 1\Rightarrow \lambda=1,3.$$

    Diagonal posible: $\operatorname{diag}(1,3)$.

???- details "Solución pregunta 5 — Multiplicidades en diagonal"
    $E$ es diagonal con diagonal $(4,4,1)$.

    - Multiplicidad algebraica de $4$ es 2.
    - El subespacio propio asociado a $4$ está generado por $e_1,e_2$ ⇒ dimensión 2.
    - Toda matriz diagonal es diagonalizable.

???- details "Solución pregunta 6 — Polinomio característico de F"
    
    $$F-\lambda I=\begin{pmatrix}-\lambda&1\\-2&-3-\lambda\end{pmatrix}.$$

    $$p(\lambda)=\det(F-\lambda I)=(-\lambda)(-3-\lambda)-1\cdot(-2)=\lambda(3+\lambda)+2=\lambda^2+3\lambda+2.$$

???- details "Solución pregunta 7 — Autovalores de F"
    Factorizamos:

    $$\lambda^2+3\lambda+2=(\lambda+1)(\lambda+2).$$

    Por tanto, $\lambda=-1$ y $\lambda=-2$.

???- details "Solución pregunta 8 — Criterio de diagonalización"
    Una matriz es diagonalizable si y sólo si existe una base de autovectores (equivalentemente, si tiene $n$ autovectores L.I.).

    Si es diagonalizable, la suma de las dimensiones de los subespacios propios es $n$ (forman una descomposición directa).

    Un autovalor repetido no impide diagonalizar: lo impide que falten autovectores.

???- details "Solución pregunta 9 — Matriz con dos bloques"
    
    $$G=\begin{pmatrix}2&0&0\\0&2&1\\0&0&2\end{pmatrix}$$

    Es triangular con diagonal $(2,2,2)$ ⇒ multiplicidad algebraica $a=3$.

    $$G-2I=\begin{pmatrix}0&0&0\\0&0&1\\0&0&0\end{pmatrix}.$$

    Resolver $(G-2I)(x,y,z)^T=0$ impone $z=0$ y deja $x,y$ libres ⇒ $\dim\ker(G-2I)=2$.

    Como $d=2<3$, **no** es diagonalizable.

???- details "Solución pregunta 10 — Bloque de Jordan 3x3"
    
    $$H=\begin{pmatrix}2&1&0\\0&2&1\\0&0&2\end{pmatrix}$$

    Es triangular con diagonal $(2,2,2)$ ⇒ $a=3$.

    $$H-2I=\begin{pmatrix}0&1&0\\0&0&1\\0&0&0\end{pmatrix}.$$

    Resolver $(H-2I)(x,y,z)^T=0$ impone $y=0$ y $z=0$, quedando $x$ libre ⇒ $d=1$.

    Como $d<a$, no es diagonalizable.
