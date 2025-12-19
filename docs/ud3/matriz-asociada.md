# Matriz Asociada a una Aplicación Lineal

Explicamos cómo construir la matriz de una aplicación lineal una vez que se han fijado bases en el dominio y codominio. Mostramos ejemplos con cambios de base y cómo usar la matriz para calcular imágenes y núcleos.

## Regla clave

Si $B=\{v_1,\dots,v_n\}$ es una base de $V$ y $B'=\{w_1,\dots,w_m\}$ es una base de $W$, la matriz $A=M(f)_{B,B'}$ tiene por columnas las coordenadas de $f(v_j)$ respecto a $B'$.

Ecuación matricial:

$$[f(x)]_{B'} = A\,[x]_B$$

## Construcción práctica

1. Evaluar $f$ en cada vector de la base del dominio.
2. Expresar cada $f(v_j)$ en coordenadas de la base del codominio.
3. Colocar esas coordenadas como columnas de $A$.

---

## Ejercicios

### Ejercicio 1

Sea 

$$f:\mathbb{R}^2\to\mathbb{R}^3,\; f(x,y)=(x+y,\;2x-y,\;y).$$ 

Con $B_U=\{(1,0),(1,1)\}$ en el dominio y base canónica en el codominio, calcular $A=M(f)_{B_U,B_V}$.

???- example "Solución"
    Ya en el resumen: $f(1,0)=(1,2,0)$ y $f(1,1)=(2,1,1)$. Colocando como columnas:  
    
    $$A=\begin{pmatrix}1 & 2\\2 & 1\\0 & 1\end{pmatrix}.$$

### Ejercicio 2

Dada la matriz $A$ en bases canónicas, ¿cómo calculas la imagen de $(x,y,z)$?

???- example "Solución"
    Multiplica $A$ por el vector columna $\begin{pmatrix}x\\y\\z\end{pmatrix}$: $A\begin{pmatrix}x\\y\\z\end{pmatrix}$ y obtendrás las coordenadas de $f(x,y,z)$ en la base canónica del codominio.

### Ejercicio 3

Si $P$ es la matriz de paso de la base $B$ a la base canónica, ¿qué relación existe entre la matriz cuyas filas son las formas de la base dual y $P$?

???- example "Solución"
    Si las formas duales tienen coeficientes que forman las filas de una matriz $M$, entonces $M=P^{-1}$. Es decir, $P^{-1}$ tiene como filas los coeficientes de las formas duales respecto a la base canónica.

### Ejercicio 4

Dado $f$ con matriz $A_{B,B'}$, encontrar la matriz $[f]_{\tilde B,\tilde B'}$ si se hacen cambios de base con matrices $P$ y $Q$.

???- example "Solución"
    Fórmula de cambio de base:

    $$[f]_{\tilde B,\tilde B'} = Q^{-1} A P$$

    donde $P$ transforma coordenadas de $\tilde B$ a $B$ y $Q$ transforma de $\tilde B'$ a $B'$.

### Ejercicio 5

Construir una matriz $A$ cuya imagen sea el subespacio generado por $(1,0,0)$ y $(0,1,0)$ en $\mathbb{R}^3$.

???- example "Solución"
    Una matriz con rango 2 y cuyas columnas estén en el plano $z=0$, por ejemplo:

    $$A=\begin{pmatrix}1 & 0\\0 & 1\\0 & 0\end{pmatrix}$$

    (completa con columnas adicionales si la dimensión del dominio es mayor).

---

## Resumen

| Término | Fórmula | Observación |
| --- | --- | --- |
| Matriz asociada | $[f(x)]_{B'} = A\,[x]_B$ | Columnas = $[f(v_j)]_{B'}$. |