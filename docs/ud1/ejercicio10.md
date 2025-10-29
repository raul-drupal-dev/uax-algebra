---
title: "Ejercicio 10 — Vector posición y desplazamiento"
description: "Cálculo de vector desplazamiento, su norma y el vector unitario dirección (resolución didáctica)."
---

# Ejercicio 10 — Vector posición y desplazamiento

> **Enunciado**

Un punto $P$ se mueve desde $A(1,-1,0)$ hasta $B(3,2,4)$.

Pide:

- a) Determine el vector desplazamiento $\overrightarrow{AB}$.
- b) Calcule su longitud.
- c) Exprese el vector unitario de dirección del movimiento.

---

### a) Vector desplazamiento $\overrightarrow{AB}$

1. Recordatorio: para puntos $A(x_1,y_1,z_1)$ y $B(x_2,y_2,z_2)$,

    ???+ example "Formula"
    
        $$
        \overrightarrow{AB}=(x_2-x_1,\;y_2-y_1,\;z_2-z_1)
        $$

2. Sustituimos las coordenadas dadas:

    - $A(1,-1,0)$ y $B(3,2,4)$

    - Calculamos coordenada a coordenada:
     $$
     \overrightarrow{AB}=(3-1,\;2-(-1),\;4-0)=(2,\;3,\;4)
     $$

3. Resultado apartado (a):

   $$
   \boxed{\displaystyle \overrightarrow{AB}=(2,3,4)}
   $$

---

### b) Longitud del desplazamiento

1. Definición: la norma (longitud) de un vector $\mathbf{v}=(v_x,v_y,v_z)$ viene dada por

    ???+ example "Formula"
        $$
        \|\mathbf{v}\|=\sqrt{v_x^2+v_y^2+v_z^2}
        $$

2. Aplicamos esto a $\overrightarrow{AB}=(2,3,4)$:

    $$
    \|\overrightarrow{AB}\|=\sqrt{2^2+3^2+4^2}=\sqrt{4+9+16}=\sqrt{29}
    $$

3. Resultado apartado (b):

    $$
    \boxed{\displaystyle \|\overrightarrow{AB}\|=\sqrt{29}}
    $$

---

### c) Vector unitario en la dirección del movimiento

1. Definición: el vector unitario en la dirección de $\mathbf{v}$ es

    ???+ example Formula

        $$
        \hat{\mathbf{v}}=\frac{1}{\|\mathbf{v}\|}\mathbf{v}
        $$

2. Sustituimos $\mathbf{v}=\overrightarrow{AB}=(2,3,4)$ y su norma $\sqrt{29}$:

    $$
    \hat{u}=\frac{1}{\sqrt{29}}(2,3,4)=\left(\frac{2}{\sqrt{29}},\;\frac{3}{\sqrt{29}},\;\frac{4}{\sqrt{29}}\right)
    $$

3. Resultado apartado (c):
   
    $$
    \boxed{\displaystyle \hat{u}=\frac{1}{\sqrt{29}}(2,3,4)}
    $$

---

## Comprobaciones y notas

- Puedes comprobar que el vector unitario tiene norma 1: calcular la norma de $\hat{u}$ y verificar que da 1 (por la propiedad de normalización).

  $$
  \left\|\frac{1}{\sqrt{29}}(2,3,4)\right\|=\frac{1}{\sqrt{29}}\sqrt{2^2+3^2+4^2}=\frac{\sqrt{29}}{\sqrt{29}}=\boxed{1}
  $$

- Interpretación geométrica: $\overrightarrow{AB}$ indica cuánto se desplaza $P$ en cada eje; el unitario da únicamente la dirección, sin información de magnitud.

---

## Resumen (ficha rápida)

|              Apartado |           Resultado           | Forma utilizada                                                |
| --------------------: | :---------------------------: | :------------------------------------------------------------- |
| $\overrightarrow{AB}$ |           $(2,3,4)$           | Resta coordenada a coordenada: $(x_B-x_A,\;y_B-y_A,\;z_B-z_A)$ |
|              Longitud |          $\sqrt{29}$          | Norma: $\sqrt{v_x^2+v_y^2+v_z^2}$ (aquí $v=(2,3,4)$)           |
|       Vector unitario | $\dfrac{1}{\sqrt{29}}(2,3,4)$ | Normalización: $\hat v=\dfrac{1}{\|v\|}v$                      |
