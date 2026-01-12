---
title: "Subespacios y Operaciones"
slug: "ud2-subespacios-operaciones"
date: "2025-12-26"
authors: ["Raul Jimenez"]
tags: ["ud2", "subespacios", "operaciones", "definicion"]
difficulty: "intermedio"
type: "definicion"
prerequisitos: ["ud2-coordenadas-cambio-base"]
---

## Objetivo

Explorar subespacios vectoriales, sus representaciones (paramétricas y cartesianas) y operaciones como intersección, suma y suma directa. Estos conceptos son esenciales para entender estructuras dentro de espacios vectoriales.

## Definiciones Clave

### :house: Subespacio Vectorial

Un subconjunto $U \subseteq V$ es un **subespacio vectorial** si es cerrado bajo suma y producto por escalar. Es un espacio vectorial en sí mismo.

### :seedling: Subespacio Generado

El **subespacio generado** por $S$, denotado $L(S)$, es el conjunto de todas las combinaciones lineales de $S$. Es el subespacio más pequeño que contiene $S$.

### :straight_ruler: Ecuaciones Paramétricas

Expresan vectores de un subespacio como:

$$
\mathbf{x} = \mathbf{v}_0 + t_1 \mathbf{v}_1 + \dots + t_k \mathbf{v}_k
$$

donde $t_i$ son parámetros.

### :triangular_ruler: Ecuaciones Cartesianas

Un sistema homogéneo $A\mathbf{x} = \mathbf{0}$. El número de ecuaciones independientes es $\dim(V) - \dim(U)$.

### ∩ Intersección

La **intersección** de dos subespacios $U$ y $W$, denotada $U \cap W$, es el conjunto de todos los vectores que pertenecen a ambos subespacios simultáneamente:

$$U \cap W = \{\mathbf{v} \in V \mid \mathbf{v} \in U \land \mathbf{v} \in W\}$$

**Cómo calcularla:**

- Si ambos subespacios están dados por ecuaciones cartesianas, resuelve el sistema formado por la unión de las ecuaciones de ambos.
- Si están en forma paramétrica, encuentra vectores que satisfagan ambas parametrizaciones.
- La intersección siempre existe y es un subespacio vectorial.
- Si $U \cap W = \{\mathbf{0}\}$, decimos que son subespacios disjuntos (excepto en el origen).

**Ejemplo rápido:** 

En $\mathbb{R}^3$, $U: x+y=0$, $W: y+z=0$. 

Sistema: $x+y=0$, $y+z=0$. De la segunda, $z=-y$, primera $x-y=0 \Rightarrow x=y$. 

Así, $U \cap W = \{(y,y,-y) \mid y \in \mathbb{R}\}$, generado por $(1,1,-1)$.

### :heavy_plus_sign: Suma

La **suma** de dos subespacios $U$ y $W$, denotada $U + W$, es el conjunto de todas las sumas posibles de un vector de $U$ y uno de $W$:

$$U + W = \{\mathbf{u} + \mathbf{w} \mid \mathbf{u} \in U, \mathbf{w} \in W\}$$

**Cómo calcularla:**

- Es el subespacio generado por la unión de una base de $U$ y una base de $W$.
- Para ecuaciones cartesianas, resuelve el sistema sin ecuaciones (solo variables libres).
- Siempre contiene a $U$ y $W$, y es el subespacio más pequeño que los contiene ambos.

**Ejemplo rápido:** 

$U = L\{(1,0,0)\}$, $W = L\{(0,1,0)\}$ en $\mathbb{R}^3$. 

$U + W = L\{(1,0,0), (0,1,0)\} = \mathbb{R}^2 \times \{0\}$.

### ⊕ Suma Directa

La **suma directa** $U \oplus W$ se define cuando $U \cap W = \{\mathbf{0}\}$. En este caso, cada vector en $U + W$ se puede escribir de manera única como $\mathbf{u} + \mathbf{w}$ con $\mathbf{u} \in U$, $\mathbf{w} \in W$.

**Cómo verificar:**

- Calcula $U \cap W$ y comprueba si es solo el vector cero.
- Alternativamente, verifica que $\dim(U + W) = \dim(U) + \dim(W)$.

**Propiedad:** Si $U \oplus W$, entonces $\dim(U + W) = \dim(U) + \dim(W)$.

**Ejemplo rápido:** $U = L\{(1,0)\}$, $W = L\{(0,1)\}$ en $\mathbb{R}^2$. $U \cap W = \{0\}$, sí suma directa.

### ∁ Espacio Complementario

Un **complementario** de $U$ en $V$ es un subespacio $W \subseteq V$ tal que $U \oplus W = V$, es decir, $U + W = V$ y $U \cap W = \{\mathbf{0}\}$.

**Cómo encontrar uno:**

- Extiende una base de $U$ a una base de $V$.
- El complementario está generado por los vectores añadidos.
- Siempre existe un complementario, y su dimensión es $\dim(V) - \dim(U)$.

**Ejemplo rápido:** En $\mathbb{R}^3$, $U: z=0$ (plano xy). Complementario: $W = L\{(0,0,1)\}$ (eje z).

!!! tip "✨ Fórmula de las Dimensiones"

    $\dim(U) + \dim(W) = \dim(U \cap W) + \dim(U + W)$

## Ejemplos

???+ example "Ejemplo 1: Verificar Subespacio"

    ¿Es una recta que no pasa por el origen un subespacio de $\mathbb{R}^3$?

    No, porque no contiene el cero (no cerrado bajo suma).

???+ example "Ejemplo 2: Ecuaciones Cartesianas"

    Obtener cartesianas de $\mathbf{x} = (1,0,1,0) + t(0,1,0,1) + s(0,0,1,1)$ en $\mathbb{R}^4$.

    Sistema: $x_1=1$, $x_2=t$, $x_3=1+s$, $x_4=t+s$.

    Variables libres $t,s$, ecuaciones $x_1-1=0$, $x_3-x_4 +1=0$.

???+ example "Ejemplo 3: Intersección Detallada"

    Calcula $U \cap W$ donde $U: x + y + z = 0$, $W: x - y = 0$ en $\mathbb{R}^3$.

    **Paso 1:** Sistema conjunto: $x + y + z = 0$, $x - y = 0$.

    **Paso 2:** De segunda ecuación: $x = y$.

    **Paso 3:** Sustituir: $y + y + z = 0 \Rightarrow 2y + z = 0 \Rightarrow z = -2y$.

    **Paso 4:** Vectores: $(y, y, -2y) = y(1,1,-2)$.

    **Resultado:** $U \cap W = L\{(1,1,-2)\}$, dimensión 1.

???+ example "Ejemplo 4: Suma de Subespacios"

    $U = L\{(1,0,1)\}$, $W = L\{(0,1,1)\}$ en $\mathbb{R}^3$.

    **Paso 1:** Base de $U + W$: $(1,0,1)$, $(0,1,1)$.

    **Paso 2:** Verificar independencia: determinante de $\begin{pmatrix} 1 & 0 \\ 0 & 1 \\ 1 & 1 \end{pmatrix} = 1 \neq 0$, sí independiente.

    **Resultado:** $\dim(U + W) = 2$.

???+ example "Ejemplo 5: Suma Directa"

    Verifica si $U \oplus W$ para $U: x=0$, $W: y=0$ en $\mathbb{R}^3$.

    **Paso 1:** $U \cap W$: $x=0$, $y=0$, así $(0,y,z)$ con $y=0$, $(0,0,z)$ con $z=0$, intersección $\{0\}$.

    **Paso 2:** $\dim(U)=2$, $\dim(W)=2$, $\dim(U+W)=3$, $\dim(U)+\dim(W)=4 > 3$, no suma directa.

???+ example "Ejemplo 6: Espacio Complementario"

    Encuentra complementario de $U: x + y = 0$ en $\mathbb{R}^3$.

    **Paso 1:** Base de $U$: $(1,-1,0)$, $(0,0,1)$.

    **Paso 2:** Extender a base de $\mathbb{R}^3$: añadir $(1,0,0)$.

    **Paso 3:** Complementario $W = L\{(1,0,0)\}$.

    **Verificación:** $U + W = \mathbb{R}^3$, $U \cap W = \{0\}$.

???+ example "Ejemplo 7: Fórmula de Dimensiones"

    $\dim(U)=2$, $\dim(W)=3$, $\dim(U \cap W)=1$.

    $\dim(U + W) = 2 + 3 - 1 = 4$.

## Ejercicios

**Ejercicio 1: Subespacio Generado**

Encuentra el subespacio generado por $\{(1,0,1), (0,1,1)\}$ en $\mathbb{R}^3$.

??? example "Solución Ejercicio 1"

    L(S) = {a(1,0,1) + b(0,1,1)} = (a, b, a+b).

    Ecuaciones: x = a, y = b, z = a + b ⇒ z - x = b - b = 0 ⇒ z = x.

    Dimensión 2.

**Ejercicio 2: Intersección**

Intersección de $U: x+y=0$ y $W: y+z=0$ en $\mathbb{R}^3$.

??? example "Solución Ejercicio 2"

    U ∩ W: resolver x+y=0, y+z=0.

    De primera x=-y, segunda -y + z =0 ⇒ z=y.

    x=-y, y=y, z=y. Generado por (-1,1,1), dim 1.

**Ejercicio 3: Suma Directa**

¿Es $U \oplus W$ si $\dim(U)=1$, $\dim(W)=2$, $\dim(V)=3$, $\dim(U \cap W)=0$?

??? example "Solución Ejercicio 3"

    Suma directa si U ∩ W = {0}. Aquí dim(U+W) = dim(U) + dim(W) = 3 = dim(V), y dim(U∩W)=0, sí.

**Ejercicio 4: Ecuaciones Paramétricas**

Ecuaciones paramétricas para $x+2y-z=0$, $y+z=0$.

??? example "Solución Ejercicio 4"

    Sistema: x + 2y - z = 0, y + z = 0.

    De segunda: z = -y.

    Primera: x + 2y - (-y) = 0 ⇒ x + 3y = 0 ⇒ x = -3y.

    Parámetros: y=t, x=-3t, z=-t. Base: (-3,1,-1).

**Ejercicio 5: Complementario**

Encuentra un complementario para $U: z=0$ en $\mathbb{R}^3$.

??? example "Solución Ejercicio 5"

    U: z=0, dim 2. Complementario W con dim 1, U ∩ W = {0}.

    Ejemplo: W generado por (1,0,0), ecuaciones x=0.

## Enlaces Relacionados

- [Coordenadas y Cambio de Base](coordenadas-cambio-de-base.md)
- [Espacio Cociente](espacio-cociente.md)</content>
