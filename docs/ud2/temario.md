---
title: "Resumen de Términos UD2"
slug: "ud2-resumen-terminos"
date: "2025-12-26"
authors: ["Raul Jimenez"]
tags: ["ud2", "resumen", "terminos", "espacios-vectoriales"]
difficulty: "intro"
type: "resumen"
prerequisitos: ["ud2-index"]
---

## Resumen de Términos Clave

Esta tabla resume los conceptos principales de la Unidad 2, con fórmulas clave y enlaces a explicaciones detalladas.

### 1. Espacios Vectoriales y Bases

| Término                | Fórmula                         | Descripción                                              | Enlace                                                                            |
| ---------------------- | ------------------------------- | -------------------------------------------------------- | --------------------------------------------------------------------------------- |
| Espacio Vectorial      | -                               | Conjunto con operaciones de suma y producto por escalar. | [Ver detalle](espacios-vectoriales-y-bases.md#espacio-vectorial)                  |
| Espacio Trivial        | -                               | Contiene solo el vector cero.                            | [Ver detalle](espacios-vectoriales-y-bases.md#espacio-vectorial)                  |
| Combinación Lineal     | $v = a_1 v_1 + \dots + a_n v_n$ | Suma ponderada de vectores.                              | [Ver detalle](espacios-vectoriales-y-bases.md#combinacion-lineal)                 |
| Dependencia Lineal     | -                               | Vector cero como combinación no trivial.                 | [Ver detalle](espacios-vectoriales-y-bases.md#dependencia-e-independencia-lineal) |
| Independencia Lineal   | -                               | Solo combinación trivial da cero.                        | [Ver detalle](espacios-vectoriales-y-bases.md#dependencia-e-independencia-lineal) |
| Sistema de Generadores | -                               | Genera todo el espacio.                                  | [Ver detalle](espacios-vectoriales-y-bases.md#sistema-de-generadores)             |
| Base                   | -                               | L.I. y generador.                                        | [Ver detalle](espacios-vectoriales-y-bases.md#base)                               |
| Dimensión              | $\dim(V)$                       | Número de vectores en base.                              | [Ver detalle](espacios-vectoriales-y-bases.md#dimension)                          |
| Base Canónica          | $e_1 = (1,0,\dots,0)$           | Base estándar en $K^n$.                                  | [Ver detalle](espacios-vectoriales-y-bases.md#base)                               |

### 2. Coordenadas y Cambio de Base

| Término                  | Fórmula                                              | Descripción                         | Enlace                                                                |
| ------------------------ | ---------------------------------------------------- | ----------------------------------- | --------------------------------------------------------------------- |
| Coordenadas              | $\begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix}$ | Escalares únicos en una base.       | [Ver detalle](coordenadas-cambio-de-base.md#coordenadas)              |
| Matriz de Cambio de Base | $X = P Y$                                            | Transforma coordenadas entre bases. | [Ver detalle](coordenadas-cambio-de-base.md#matriz-de-cambio-de-base) |

### 3. Subespacios y Operaciones

| Término                 | Fórmula                                                | Descripción                  | Enlace                                                            |
| ----------------------- | ------------------------------------------------------ | ---------------------------- | ----------------------------------------------------------------- |
| Subespacio Vectorial    | -                                                      | Cerrado bajo suma y escalar. | [Ver detalle](subespacios-operaciones.md#subespacio-vectorial)    |
| Subespacio Generado     | $L(S)$                                                 | Más pequeño conteniendo $S$. | [Ver detalle](subespacios-operaciones.md#subespacio-generado)     |
| Ecuaciones Paramétricas | $\mathbf{x} = \mathbf{v}_0 + t_1 \mathbf{v}_1 + \dots$ | Con parámetros.              | [Ver detalle](subespacios-operaciones.md#ecuaciones-parametricas) |
| Ecuaciones Cartesianas  | $A\mathbf{x} = 0$                                      | Sistema homogéneo.           | [Ver detalle](subespacios-operaciones.md#ecuaciones-cartesianas)  |
| Intersección            | $U \cap W$                                             | Vectores en ambos.           | [Ver detalle](subespacios-operaciones.md#interseccion)            |
| Suma                    | $U + W$                                                | $u + w$.                     | [Ver detalle](subespacios-operaciones.md#suma)                    |
| Suma Directa            | $U \oplus W$                                           | Intersección trivial.        | [Ver detalle](subespacios-operaciones.md#suma-directa)            |
| Espacio Complementario  | -                                                      | $U \oplus W = V$.            | [Ver detalle](subespacios-operaciones.md#espacio-complementario)  |
| Fórmula Dimensiones     | $\dim(U+W) = \dim(U) + \dim(W) - \dim(U\cap W)$        | Relación entre dimensiones.  | [Ver detalle](subespacios-operaciones.md#subespacio-vectorial)    |

### 4. Espacio Cociente

| Término                  | Fórmula                     | Descripción                        | Enlace                                                      |
| ------------------------ | --------------------------- | ---------------------------------- | ----------------------------------------------------------- |
| Relación de Equivalencia | $v \sim w \iff v - w \in U$ | Define clases.                     | [Ver detalle](espacio-cociente.md#relacion-de-equivalencia) |
| Clase de Equivalencia    | $v + U$                     | Conjunto $\{v + u \mid u \in U\}$. | [Ver detalle](espacio-cociente.md#clase-de-equivalencia)    |
| Espacio Cociente         | $V/U$                       | Clases como espacio vectorial.     | [Ver detalle](espacio-cociente.md#espacio-cociente)         |

## Enlaces Relacionados

- [Índice UD2](index.md)
- [Ejercicios Prácticos](ejercicios.md)
