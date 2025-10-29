# Ejercicio 9 — Aplicación geométrica

Tres vértices de un triángulo son $A(1,0,0)$, $B(2,1,1)$ y $C(0,2,1)$.

a) Determine los vectores $\overrightarrow{AB}$ y $\overrightarrow{AC}$.  
b) Calcule el área del triángulo $ABC$.  
c) Halle un vector perpendicular al plano del triángulo.

## a) Vectores $\overrightarrow{AB}$ y $\overrightarrow{AC}$

**Regla**: si $P(x_1,y_1,z_1)$ y $Q(x_2,y_2,z_2)$, entonces

???+ example "Formula"

    $$
    \overrightarrow{PQ}=(x_2-x_1,\;y_2-y_1,\;z_2-z_1).
    $$

Aplicando esto a los puntos dados:

- $A(1,0,0),\;B(2,1,1)$

  $$
  \overrightarrow{AB}=(2-1,\;1-0,\;1-0)=(1,1,1).
  $$

- $A(1,0,0),\;C(0,2,1)$

  $$
  \overrightarrow{AC}=(0-1,\;2-0,\;1-0)=(-1,2,1).
  $$

$$
\boxed{\overrightarrow{AB}=(1,1,1),\qquad \overrightarrow{AC}=(-1,2,1)}
$$

---

## b) Área del triángulo $ABC$

**Idea geométrica** (admitida): el área del triángulo formado por dos vectores que parten del mismo vértice es la mitad del módulo del producto vectorial de dichos vectores. Es decir,

???+ example "Formula"

    $$\text{Área}(\triangle)=\tfrac{1}{2}\,\|\overrightarrow{AB}\times\overrightarrow{AC}\|.$$

### Cálculo del producto vectorial

Usamos la expresión en determinante con la base canónica $\mathbf{i},\mathbf{j},\mathbf{k}$:

$$
\overrightarrow{AB}\times\overrightarrow{AC}=\begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
1 & 1 & 1 \\
-1 & 2 & 1
\end{vmatrix}.
$$

Calculamos componente a componente (explicando por qué se restan los productos cruzados):

- Componente en $\mathbf{i}$: $(1)(1)-(1)(2)=1-2=-1$.
- Componente en $\mathbf{j}$: $(1)(1)-(1)(-1)=1-(-1)=2$, y recordando la alternancia de signos en la expansión por cofactores, la componente en $\mathbf{j}$ queda con signo negativo: $-2$.
- Componente en $\mathbf{k}$: $(1)(2)-(1)(-1)=2-(-1)=3$

Por tanto:

$$\overrightarrow{AB}\times\overrightarrow{AC}=(-1,-2,3).$$

## Comprobación de perpendicularidad

Comprobamos que el vector obtenido es ortogonal a ambos vectores (producto escalar = 0):

- $(-1,-2,3)\cdot(1,1,1)=-1-2+3=0$.
- $(-1,-2,3)\cdot(-1,2,1)=1-4+3=0$.

Ambos cero ⇒ perpendicularidad verificada.

### Norma y área

Norma del vector:

$$\|(-1,-2,3)\|=\sqrt{(-1)^2+(-2)^2+3^2}=\sqrt{14}.$$

Área del triángulo:

$$\boxed{\text{Área}(ABC)=\dfrac{\sqrt{14}}{2}}.$$

---

## c) Vector perpendicular al plano del triángulo

El vector normal al plano lo obtenemos directamente con el producto vectorial anterior. Por tanto:

$$\boxed{\mathbf{n}=(-1,-2,3)}$$

Si se quiere normalizar (vector unitario):

$$\displaystyle \hat{\mathbf{n}}=\frac{1}{\sqrt{14}}(-1,-2,3).$$

!!! caution "Nota de estudio" 

    - El signo del vector normal depende del orden de los vectores en el producto cruzado: $\overrightarrow{AB}\times\overrightarrow{AC}$ y $\overrightarrow{AC}\times\overrightarrow{AB}$ son opuestos.

---

## Resumen (ficha rápida)

|              Cantidad |       Resultado        | Forma utilizada                                                                       |
| --------------------: | :--------------------: | :------------------------------------------------------------------------------------ |
| $\overrightarrow{AB}$ |       $(1,1,1)$        | $(x_B-x_A,\;y_B-y_A,\;z_B-z_A)$                        |
| $\overrightarrow{AC}$ |       $(-1,2,1)$       | $(x_B-x_A,\;y_B-y_A,\;z_B-z_A)$                                                             |
|  Área $\triangle ABC$ | $\dfrac{\sqrt{14}}{2}$ | $\tfrac{1}{2}\,\|\overrightarrow{AB}\times\overrightarrow{AC}\|$ (producto vectorial) |
|         Vector normal |      $(-1,-2,3)$       | Producto vectorial $\overrightarrow{AB}\times\overrightarrow{AC}$ (normal al plano)   |
