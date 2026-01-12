---
title: "Coordenadas y Cambio de Base"
slug: "ud2-coordenadas-cambio-base"
date: "2025-12-26"
authors: ["Raul Jimenez"]
tags: ["ud2", "coordenadas", "cambio-base", "definicion"]
difficulty: "intermedio"
type: "definicion"
prerequisitos: ["ud2-espacios-vectoriales-bases"]
---

## Objetivo

Comprender cómo representar vectores mediante coordenadas respecto a una base y cómo cambiar entre bases diferentes. Esto nos permite trabajar en espacios abstractos como si fueran $\mathbb{R}^n$.

## Definiciones Clave

### :map: Coordenadas

Dado un vector $\mathbf{x}$ y una base $B = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$, las **coordenadas** son los únicos escalares $x_1, \dots, x_n$ tales que:

$$
\mathbf{x} = x_1 \mathbf{b}_1 + \dots + x_n \mathbf{b}_n
$$

Se representan como una matriz columna $\begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix}$.

### :arrows_counterclockwise: Matriz de Cambio de Base

La **matriz de cambio de base** $P$ transforma coordenadas de la base $B_2$ a $B_1$. Sus columnas son los vectores de $B_2$ expresados en $B_1$.

La relación es:

$$
\mathbf{x}_{B_1} = P \mathbf{x}_{B_2}
$$

## Ejemplos

???+ example "Ejemplo 1: Coordenadas en Bases Diferentes"

    Comparar coordenadas de $\mathbf{x} = (2,3,1)$ en $\mathbb{R}^3$ respecto a la base canónica y $B' = \{(1,0,1), (0,1,1), (1,1,0)\}$.

    **Base canónica:** $\mathbf{x} = 2\mathbf{e}_1 + 3\mathbf{e}_2 + 1\mathbf{e}_3$, coordenadas $\begin{pmatrix} 2 \\ 3 \\ 1 \end{pmatrix}$.

    **Base $B'$:** Resolver $\mathbf{x} = a(1,0,1) + b(0,1,1) + c(1,1,0)$:

    $$
    \begin{cases}
    a + c = 2 \\
    b + c = 3 \\
    a + b = 1
    \end{cases}
    $$

    Solución: $a=1$, $b=0$, $c=1$. Coordenadas $\begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}$.

???+ example "Ejemplo 2: Matriz de Cambio de Base"

    Calcular la matriz de paso entre $B_1 = \{\mathbf{e}_1, \mathbf{e}_2, \mathbf{e}_3\}$ y $B_2 = \{(1,1,0), (0,1,1), (1,0,1)\}$.

    Expresar vectores de $B_2$ en $B_1$: $(1,1,0) = \mathbf{e}_1 + \mathbf{e}_2$, etc. Matriz $P$ con columnas esas coordenadas.

???+ example "Ejemplo 3: Transformar Coordenadas"

    Expresar $\mathbf{v} = (4,2,3)$ en base $B = \{(1,0,1), (0,1,0), (0,0,1)\}$.

    Resolver $4 = a + c$, $2 = b$, $3 = a$. Solución: $a=3, b=2, c=1$.

## Ejercicios

**Ejercicio 1: Coordenadas en Base Canónica**

Encuentra las coordenadas de $\mathbf{u} = (5, -1, 2)$ en la base canónica de $\mathbb{R}^3$.

??? example "Solución Ejercicio 1"

    En la base canónica, las coordenadas son simplemente las componentes del vector: $\begin{pmatrix} 5 \\ -1 \\ 2 \end{pmatrix}$.

Dado $B = \{(1,1,0), (0,1,1)\}$, expresa $\mathbf{w} = (2,3,1)$ en $B$.

??? example "Solución Ejercicio 2"

    Resolver a(1,1,0) + b(0,1,1) = (2,3,1).

    Sistema: a = 2, a + b = 3 ⇒ b=1, b =1.

    Coordenadas: (2,1).

**Ejercicio 3: Matriz de Cambio**

Calcula la matriz $P$ de $B_1$ canónica a $B_2 = \{(1,0,0), (0,1,0), (0,0,1)\}$ (misma).

??? example "Solución Ejercicio 3"

    Si B2 es la base canónica, entonces P es la matriz identidad, ya que no hay cambio de base.

**Ejercicio 4: Transformación**

Si $\mathbf{x}_{B} = \begin{pmatrix} 1 \\ 2 \end{pmatrix}$, encuentra $\mathbf{x}$ en canónica para $B = \{(1,0), (0,1)\}$.

??? example "Solución Ejercicio 4"

    x = 1*(1,0) + 2*(0,1) = (1,2).

**Ejercicio 5: Coordenadas Complejas**

En $\mathbb{R}^2$, base $B = \{(1,1), (1,-1)\}$, coordenadas de $(3,1)$.

??? example "Solución Ejercicio 5"

    Sistema: a(1,1) + b(1,-1) = (3,1).

    Ecuaciones: a + b = 3, a - b = 1.

    Suma: 2a = 4 ⇒ a=2, resta: 2b=2 ⇒ b=1.

## Enlaces Relacionados

- [Espacios Vectoriales y Bases](espacios-vectoriales-y-bases.md)
- [Subespacios y Operaciones](subespacios-operaciones.md)</content>
