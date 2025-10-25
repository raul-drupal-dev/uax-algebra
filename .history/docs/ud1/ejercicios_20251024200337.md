---
title: "Ejercicios — UD1: Introducción a Vectores"
slug: "ud1-ejercicios"
date: "2025-10-24"
authors: ["Carlos Lastras"]
tags: ["ud1", "ejercicios", "vectores"]
difficulty: "intro"
type: "ejercicio"
prerequisitos: ["ud1-introduccion-a-vectores"]
---

## ✏️ Ejercicios — UD1: Introducción a Vectores

Profesor: **Carlos Lastras**  
Grado en Computación e Inteligencia Artificial

Objetivo: Resolver ejercicios básicos sobre vectores (módulo, suma, producto escalar y vectorial, proyecciones y aplicaciones geométricas). Cada ejercicio incluye un bloque de solución colapsable.

---

### Ejercicio 1 — Conceptos básicos

Dado el vector $\mathbf{v} = (3, -2, 4).$

a) Calcule su módulo $\|\mathbf{v}\|$.

b) Determine el vector unitario $\hat{\mathbf{v}}$.

c) Encuentre el vector opuesto $-\mathbf{v}$.

<details>
<summary>Ver solución (clic)</summary>

Solución (esbozo): 


1. $$\|\mathbf{v}\| = \sqrt{3^2 + (-2)^2 + 4^2} = \sqrt{29}.$$

2. $$\hat{\mathbf{v}} = \dfrac{\mathbf{v}}{\|\mathbf{v}\|} = \left(\dfrac{3}{\sqrt{29}},\;\dfrac{-2}{\sqrt{29}},\;\dfrac{4}{\sqrt{29}}\right).$$

3. $$-\mathbf{v} = (-3,2,-4).$$

</details>

### Ejercicio 2 — Operaciones entre vectores

Sean $$\mathbf{a}=(2,5,-3),\qquad \mathbf{b}=(-1,4,2).$$

a) Calcule $\mathbf{a}+\mathbf{b}$ y $\mathbf{a}-\mathbf{b}$.  
b) Calcule el producto escalar $\mathbf{a}\cdot\mathbf{b}$.  
c) Determine el ángulo entre ambos vectores.

<details>
<summary>Ver solución (clic)</summary>

Esbozo de solución: operamos componente a componente, luego usamos
$$\cos\theta = \dfrac{\mathbf{a}\cdot\mathbf{b}}{\|\mathbf{a}\|\,\|\mathbf{b}\|}.$$

</details>

### Ejercicio 3 — Producto vectorial

Con los mismos vectores del ejercicio anterior:

a) Calcule el producto vectorial $\mathbf{a}\times\mathbf{b}$.  
b) Verifique que el resultado es perpendicular a ambos vectores.  
c) Determine el área del paralelogramo definido por $\mathbf{a}$ y $\mathbf{b}$ (módulo del producto vectorial).

<details>
<summary>Ver solución (clic)</summary>

Recordar: $\|\mathbf{a}\times\mathbf{b}\|$ es el área del paralelogramo.

</details>

### Ejercicio 4 — Combinaciones lineales

Dado $$\mathbf{u}_1=(1,2,0),\;\mathbf{u}_2=(-1,1,1),\;\mathbf{w}=(3,5,1).$$

a) Compruebe si $\mathbf{w}$ se puede expresar como combinación lineal de $\mathbf{u}_1$ y $\mathbf{u}_2$.  
b) Si es posible, determine los escalares $\alpha,\beta$ tales que $\mathbf{w}=\alpha\mathbf{u}_1+\beta\mathbf{u}_2$.

<details>
<summary>Ver solución (clic)</summary>

Plantear el sistema y resolver (matriz 3×2 ampliada o resolver por componentes).

</details>

### Ejercicio 5 — Dependencia lineal

Considere $$\mathbf{v}_1=(1,0,2),\;\mathbf{v}_2=(2,1,3),\;\mathbf{v}_3=(3,1,5).$$

a) Determine si el conjunto $\{\mathbf{v}_1,\mathbf{v}_2,\mathbf{v}_3\}$ es linealmente dependiente o independiente.  
b) Justifique su respuesta usando determinantes o reducción por filas.

<details>
<summary>Ver solución (clic)</summary>

Comprobar si el determinante de la matriz formada por las columnas (o filas) es cero.

</details>

### Ejercicio 6 — Ecuaciones vectoriales

Considere la recta $r$ definida por:
$$\mathbf{x} = (1,2,0) + t(3,-1,2).$$

a) Determine un punto perteneciente a $r$ para $t=2$.  
b) Calcule la dirección de la recta.  
c) Encuentre la intersección con el plano $z=4$.

<details>
<summary>Ver solución (clic)</summary>

Evaluar $t=2$ en la ecuación, etc.

</details>

### Ejercicio 7 — Proyecciones

Sean $$\mathbf{a}=(4,2,-1),\;\mathbf{b}=(1,0,1).$$

a) Calcule la proyección de $\mathbf{a}$ sobre $\mathbf{b}$.  
b) Determine la componente de $\mathbf{a}$ perpendicular a $\mathbf{b}$.

<details>
<summary>Ver solución (clic)</summary>

Usar
$$\operatorname{proj}_{\mathbf{b}}(\mathbf{a})=\frac{\mathbf{a}\cdot\mathbf{b}}{\mathbf{b}\cdot\mathbf{b}}\,\mathbf{b}$$

</details>

### Ejercicio 8 — Planos en el espacio

El plano $\pi$ está definido por la ecuación:
$$2x-y+3z=6.$$

a) Determine un vector normal al plano.  
b) Compruebe si el punto $P(3,0,0)$ pertenece al plano.  
c) Calcule la distancia del punto $Q(1,2,1)$ al plano $\pi$.

<details>
<summary>Ver solución (clic)</summary>

Vector normal $\mathbf{n}=(2,-1,3)$. Sustituir coordenadas para comprobar pertenencia. Fórmula de distancia desde un punto a un plano.

</details>

### Ejercicio 9 — Aplicación geométrica

Tres vértices de un triángulo son $A(1,0,0)$, $B(2,1,1)$ y $C(0,2,1)$.

a) Determine los vectores $\overrightarrow{AB}$ y $\overrightarrow{AC}$.  
b) Calcule el área del triángulo $ABC$.  
c) Halle un vector perpendicular al plano del triángulo.

<details>
<summary>Ver solución (clic)</summary>

Usar diferencias de coordenadas y producto vectorial para área y normal.

</details>

### Ejercicio 10 — Vector posición y desplazamiento

Un punto $P$ se mueve desde $A(1,-1,0)$ hasta $B(3,2,4)$.

a) Determine el vector desplazamiento $\overrightarrow{AB}$.  
b) Calcule su longitud.  
c) Exprese el vector unitario de dirección del movimiento.

<details>
<summary>Ver solución (clic)</summary>

Desplazamiento $\overrightarrow{AB}=B-A$, longitud $\|\overrightarrow{AB}\|$ y vector unitario dividiendo por la norma.

</details>
