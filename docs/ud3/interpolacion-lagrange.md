# Polinomios de Interpolación de Lagrange

Aplicación práctica del espacio dual en el contexto de polinomios: las formas de evaluación y los polinomios de Lagrange.

## Idea principal

En $P_n(\mathbb{R})$ las formas de evaluación $E_{a}(p)=p(a)$ en $n+1$ puntos distintos forman una base del espacio dual. Los polinomios de Lagrange $\ell_j(x)$ satisfacen
$$\ell_j(a_k)=\delta_{jk}$$
y forman la base de polinomios dual a las formas de evaluación.



## Construcción básica (grado 1 y grado n)

Para $n=1$ con puntos $a_0,a_1$:
$$\ell_0(x)=\dfrac{x-a_1}{a_0-a_1},\quad \ell_1(x)=\dfrac{x-a_0}{a_1-a_0}.$$

La interpolación de Lagrange permite escribir el polinomio que toma valores $y_j$ en $a_j$ como
$$p(x)=\sum_{j=0}^n y_j\,\ell_j(x).$$

---

## Ejercicios

### Ejercicio 1

En $P_1[x]$ con evaluación en $1$ y $2$, encontrar los polinomios de Lagrange.

???- example "Solución"
    Se obtiene (ver resumen): $\ell_1(x)=2-x$ y $\ell_2(x)=x-1$ (con la notación del resumen). Con estas bases las formas de evaluación son duales a la base construida.

### Ejercicio 2

Interpolar los puntos $(0,1),(1,3),(2,2)$ con el polinomio de Lagrange de grado 2.

???- example "Solución"
    Construir $\ell_0,\ell_1,\ell_2$ para $a_0=0,a_1=1,a_2=2$:

    $$\ell_0(x)=\dfrac{(x-1)(x-2)}{(0-1)(0-2)}=\dfrac{(x-1)(x-2)}{2},$$

    $$\ell_1(x)=\dfrac{x(x-2)}{(1-0)(1-2)}=-x(x-2),$$

    $$\ell_2(x)=\dfrac{x(x-1)}{(2-0)(2-1)}=\dfrac{x(x-1)}{2}.$$

    Entonces

    $$p(x)=1\cdot\ell_0(x)+3\cdot\ell_1(x)+2\cdot\ell_2(x).$$

    Simplificar para obtener la forma explícita (se deja la simplificación como ejercicio de álgebra).

### Ejercicio 3

Probar que los polinomios de Lagrange forman una base de $P_n[x]$.

???- example "Solución"
    Son $n+1$ polinomios y son linealmente independientes porque su matriz de evaluación en los puntos $a_j$ es la identidad. Además generan cualquier polinomio de grado $\le n$ por la fórmula de interpolación.

### Ejercicio 4

Explicar cómo interpretar los polinomios de Lagrange en términos de base dual del espacio de polinomios.

???- example "Solución"
    Las formas de evaluación $E_{a_j}$ actúan como formas lineales en $P_n[x]$; 
    
    los polinomios $\ell_j$ verifican $E_{a_i}(\ell_j)=\ell_j(a_i)=\delta_{ij}$, 
    
    que es exactamente la condición de Kronecker para la base dual.

### Ejercicio 5

Interpolar los puntos $(1,2),(2,5)$ usando Lagrange y comprobar el resultado evaluando en $x=1.5$.

???- example "Solución"
    Para $n=1$: $\ell_0(x)=\dfrac{x-2}{1-2}=2-x$, $\ell_1(x)=\dfrac{x-1}{2-1}=x-1$. 
    
    Entonces el polinomio es $p(x)=2\cdot(2-x)+5\cdot(x-1)$. Simplificando:

    $$p(x)=4-2x+5x-5=3x-1.$$ Evaluando en $x=1.5$ se obtiene $p(1.5)=3(1.5)-1=4.5-1=3.5$.

---

## Reseumen 
| Término | Fórmula/Condición | Observación |
| --- | --- | --- |
| Polinomio de Lagrange | $\ell_j(x)=\prod_{k\neq j}\dfrac{x-a_k}{a_j-a_k}$ | $\ell_j(a_i)=\delta_{ij}$. |