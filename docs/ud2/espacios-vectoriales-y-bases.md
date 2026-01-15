---
title: "Espacios Vectoriales y Bases"
slug: "ud2-espacios-vectoriales-bases"
date: "2025-12-26"
authors: ["Raul Jimenez"]
tags: ["ud2", "espacios-vectoriales", "bases", "definicion"]
difficulty: "intro"
type: "definicion"
prerequisitos: ["ud1-introduccion-a-vectores"]
---

## Objetivo

Entender los fundamentos de los espacios vectoriales, incluyendo conceptos como dependencia e independencia lineal, sistemas de generadores, bases y dimensión. Vamos a explorar estos conceptos con ejemplos prácticos para consolidar el aprendizaje.

## Definiciones Clave

### :bulb: Espacio Vectorial

Un **espacio vectorial** $V$ sobre un cuerpo $K$ (como $\mathbb{R}$ o $\mathbb{C}$) es un conjunto no vacío que cumple con dos operaciones:

- **Operación interna (suma):** Forma un grupo abeliano.
- **Operación externa (producto por escalar):** Compatible con la suma y el producto en $K$.

Los elementos de $V$ se llaman **vectores** y los de $K$, **escalares**.

!!! note "Nota"

    El **espacio trivial** es aquel que contiene solo el vector neutro (vector cero).

### :link: Combinación Lineal

Una **combinación lineal** de vectores $v_1, \dots, v_n$ es cualquier vector de la forma:

$$
v = a_1 v_1 + \dots + a_n v_n
$$

donde $a_i \in K$.

### :scales: Dependencia e Independencia Lineal

- **Dependencia Lineal (L.D.):** Un conjunto de vectores es linealmente dependiente si existe una combinación lineal no trivial (no todos $a_i = 0$) que da el vector cero. Equivale a que al menos uno se expresa como combinación de los demás.

- **Independencia Lineal (L.I.):** Un conjunto es linealmente independiente si la única combinación lineal que da cero es la trivial (todos $a_i = 0$).

### :construction: Sistema de Generadores

Un conjunto $S$ es un **sistema de generadores** si cualquier vector de $V$ se puede escribir como combinación lineal de elementos de $S$.

### :star: Base

Una **base** $B$ es un conjunto que es simultáneamente linealmente independiente y sistema de generadores.

### :ruler: Dimensión

La **dimensión** $\dim(V)$ es el número de vectores en cualquier base de $V$. Todas las bases tienen el mismo tamaño.

!!! tip "✨ Base Canónica"
    
    En $K^n$, la base canónica es $\{e_1 = (1,0,\dots,0), e_2 = (0,1,\dots,0), \dots\}$.

## Ejemplos

???+ example "Ejemplo 1: Espacio de Polinomios $P_2$"

    **Ejercicio 1.1:** Comprobar que $P_2$ (polinomios de grado $\leq 2$) es un espacio vectorial sobre $\mathbb{R}$, indicando su base canónica y dimensión.

    **Solución:**

    - **Suma:** $(a + bx + cx^2) + (d + ex + fx^2) = (a+d) + (b+e)x + (c+f)x^2 \in P_2$.
    - **Producto por escalar:** $\lambda (a + bx + cx^2) = \lambda a + (\lambda b)x + (\lambda c)x^2 \in P_2$.
    - Cumple propiedades de grupo abeliano y compatibilidad.

    **Base canónica:** $\{1, x, x^2\}$, dimensión 3.

???+ example "Ejemplo 2: Independencia Lineal en $\mathbb{R}^3$"

    Consideremos los vectores $\mathbf{u} = (1,2,3)$, $\mathbf{v} = (4,5,6)$, $\mathbf{w} = (7,8,9)$.

    Para comprobar L.I., resolvemos $a\mathbf{u} + b\mathbf{v} + c\mathbf{w} = \mathbf{0}$:

    $$
    \begin{cases}
    a + 4b + 7c = 0 \\
    2a + 5b + 8c = 0 \\
    3a + 6b + 9c = 0
    \end{cases}
    $$

    El determinante de la matriz es 0 (vectores L.D.), así que son dependientes.

???+ example "Ejemplo 3: Análisis de Dependencia"

    Plantear $A\mathbf{x} = \mathbf{0}$ y estudiar el rango. Si rango < número de vectores, L.D.

## Ejercicios

Practica con estos ejercicios para afianzar los conceptos.

**Ejercicio 1: Verificar Espacio Vectorial**

Comprueba si el conjunto de matrices $2\times2$ simétricas sobre $\mathbb{R}$ es un espacio vectorial. Indica su dimensión y una base.

??? example "Solución Ejercicio 1"

    Para que un conjunto sea un espacio vectorial, debe satisfacer las propiedades de grupo abeliano para la suma, distributividad, etc.

    **Cerrado bajo suma:** Si $A, B$ simétricas, $A + B$ tiene $(a+b)_{ij} = a_{ij} + b_{ij}$, y por simetría, $(A+B)_{ji} = (A+B)_{ij}$.

    **Cerrado bajo escalar:** $\lambda A$ mantiene simetría.

    **Elemento neutro:** Matriz cero.

    **Inverso:** $-A$.

    Dimensión: 3 parámetros independientes (a11, a12, a22).

    Base: Matrices con un 1 en posiciones simétricas y 0 en otras.

Expresa $\mathbf{v} = (1,1,2)$ como combinación lineal de $\mathbf{u}_1 = (1,0,1)$, $\mathbf{u}_2 = (0,1,1)$.

??? example "Solución Ejercicio 2"

    Sistema: $a \cdot 1 + b \cdot 0 = 1 \implies a = 1$

    $a \cdot 0 + b \cdot 1 = 1 \implies b = 1$

    $a \cdot 1 + b \cdot 1 = 2 \implies 1 + 1 = 2$, consistente.

    Coeficientes: $a=1, b=1$.

    Verificación: $1 \cdot (1,0,1) + 1 \cdot (0,1,1) = (1,1,2)$.

**Ejercicio 3: Independencia Lineal**

Determina si $\{(1,1,0), (0,1,1), (1,0,1)\}$ es L.I. en $\mathbb{R}^3$.

??? example "Solución Ejercicio 3"

    Formamos la matriz $A$ con columnas los vectores:

    $$
    A = \begin{pmatrix}
    1 & 0 & 1 \\
    1 & 1 & 0 \\
    0 & 1 & 1
    \end{pmatrix}
    $$

    Calculamos det(A) = 1*(1*1 - 0*1) - 0*(1*1 - 0*0) + 1*(1*1 - 1*0) = 1 + 1 = 2 ≠ 0.

    Por el teorema: si det ≠ 0, los vectores son L.I.

**Ejercicio 4: Base y Dimensión**

Encuentra una base para el subespacio generado por $\{(1,2,3), (4,5,6)\}$.

??? example "Solución Ejercicio 4"

    L(S) es generado por v1=(1,2,3), v2=(4,5,6).

    Verificamos L.I.: matriz [v1 v2], rango 2 (filas no proporcionales).

    Base: {v1, v2}, dimensión 2.

**Ejercicio 5: Base Canónica**

¿Cuál es la base canónica de $\mathbb{R}^4$? ¿Su dimensión?

??? example "Solución Ejercicio 5"

    La base canónica de $\mathbb{R}^n$ es el conjunto estándar {e1, ..., en}, donde ei = (0,...,1,...,0) con 1 en posición i.

    Para n=4: dimensión 4, base de 4 vectores.

## Enlaces Relacionados

- [UD1: Introducción a Vectores](../ud1/temario.md)
- [Coordenadas y Cambio de Base](coordenadas-cambio-de-base.md)</content>
