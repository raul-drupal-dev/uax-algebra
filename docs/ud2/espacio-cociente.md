---
title: "Espacio Cociente"
slug: "ud2-espacio-cociente"
date: "2025-12-26"
authors: ["Raul Jimenez"]
tags: ["ud2", "espacio-cociente", "definicion"]
difficulty: "avanzado"
type: "definicion"
prerequisitos: ["ud2-subespacios-operaciones"]
---

## Objetivo

Introducir el concepto de espacio cociente, que surge de dividir un espacio vectorial por un subespacio. Es útil en álgebra lineal avanzada y teoría de módulos.

## Definiciones Clave

### :balance_scale: Relación de Equivalencia

En $V$ con subespacio $U$, definimos $\mathbf{v} \sim \mathbf{w} \iff \mathbf{v} - \mathbf{w} \in U$.

### :package: Clase de Equivalencia

La **clase** de $\mathbf{v}$ es $\mathbf{v} + U = \{\mathbf{v} + \mathbf{u} \mid \mathbf{u} \in U\}$.

### :division: Espacio Cociente

El **espacio cociente** $V/U$ es el conjunto de clases de equivalencia. Tiene estructura de espacio vectorial con dimensión $\dim(V) - \dim(U)$.

!!! note "Nota"

    La base de $V/U$ se puede obtener de una base del complemento de $U$.

## Ejemplos

???+ example "Ejemplo 1: Base y Dimensión"

    Para $U = \{ (x,y,z) \mid z=0 \} \subseteq \mathbb{R}^3$, base de $\mathbb{R}^3 / U$.

    $U$ dimensión 2, $\dim(\mathbb{R}^3 / U) = 1$.

    Base: clase de $(0,0,1)$.

???+ example "Ejemplo 2: Identificación"

    La base es la clase del vector del complemento.

## Ejercicios

**Ejercicio 1: Relación de Equivalencia**

En $\mathbb{R}^2$ con $U = \{(x,0)\}$, ¿son equivalentes $(1,1)$ y $(1,2)$?

??? example "Solución Ejercicio 1"

    $(1,1) - (1,2) = (0,-1) \notin U$, no.

**Ejercicio 2: Clase de Equivalencia**

Clase de $(2,3,1)$ en $U: x=0$.

??? example "Solución Ejercicio 2"

    La clase de v es v + U = {v + u | u ∈ U}.

    U: x=0, u=(0,y,z).

    Clase: (2+x, 3+y, 1+z), representada como (2,3,1) + (x,0,0).

$\dim(\mathbb{R}^4 / U)$ si $\dim(U)=2$.

??? example "Solución Ejercicio 3"

    $\dim(\mathbb{R}^4 / U) = \dim(\mathbb{R}^4) - \dim(U) = 4 - 2 = 2$.

**Ejercicio 4: Base del Cociente**

Base para $\mathbb{R}^3 / \{(0,0,z)\}$.

??? example "Solución Ejercicio 4"

    U = {(0,0,z) | z ∈ ℝ}, dim(U)=1.

    Base del cociente: clases de (1,0,0) y (0,1,0), ya que generan el complemento.

**Ejercicio 5: Operaciones en Cociente**

Suma de clases en $\mathbb{R}^2 / \{(x,0)\}$.

??? example "Solución Ejercicio 5"

    La suma de clases es $(a,b) + U + (c,d) + U = (a+c, b+d) + U$, ya que U es subespacio.

## Enlaces Relacionados

- [Subespacios y Operaciones](subespacios-operaciones.md)
- [UD3: Aplicaciones Lineales](../ud3/index.md)</content>
