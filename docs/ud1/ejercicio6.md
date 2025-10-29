# Ejercicio 6 — Ecuaciones vectoriales

Considere la recta $r$ definida por:
$\mathbf{x} = (1,2,0) + t(3,-1,2).$

a) Determine un punto perteneciente a $r$ para $t=2$.  
b) Calcule la dirección de la recta.  
c) Encuentre la intersección con el plano $z=4$.

## a) Punto en $r$ para $t=2$

Sustituimos $t=2$ en la expresión paramétrica:

$$
\mathbf{x}(2) = (1,2,0) + 2(3,-1,2) = (1+6,\;2-2,\;0+4) = (7,0,4).
$$

Por tanto un punto de la recta para $t=2$ es $\boxed{(7,0,4)}$.

## b) Dirección de la recta

El vector de dirección es el que multiplica al parámetro $t$ en la ecuación:

$$
\boxed{\mathbf{d} = (3,-1,2)}.
$$

Si se desea el vector unitario (normalizado):

$$
\|\mathbf{d}\| = \sqrt{3^2 + (-1)^2 + 2^2} = \sqrt{14},
$$

$$
\hat{\mathbf{d}} = \frac{1}{\sqrt{14}}(3,-1,2) \approx (0.8018,-0.2673,0.5345).
$$

## c) Intersección con el plano $z=4$

La intersección entre una recta y un plano es el conjunto de puntos que pertenecen a ambos simultáneamente; geométricamente es donde la recta «atraviesa» el plano.

En este ejercicio la recta está dada en forma paramétrica

???+ example Formula

$$
    \mathbf{x}(t)=\mathbf{p}+t\mathbf{d},
$$

donde

\(\mathbf{p}=(1,2,0)\) es un punto de la recta y \(\mathbf{d}=(3,-1,2)\) su vector de dirección. El plano que nos dan es el plano horizontal

$$
z=4.
$$

Fórmula general para encontrar la intersección (paso a paso):

1. Escribir la componente $z$ de la recta en función del parámetro $t$. Si \(\mathbf{p}=(p_x,p_y,p_z)\) y \(\mathbf{d}=(d_x,d_y,d_z)\), entonces

   $$
   z(t)=p_z+t\,d_z.
   $$

2. Igualar la componente $z(t)$ a la ecuación del plano (aquí $z=4$) y resolver para $t$:

   $$
   p_z+t\,d_z=4 \quad\Rightarrow\quad t=\frac{4-p_z}{d_z},
   $$

   siempre que \(d_z\neq 0\).

3. Sustituir el valor de $t$ obtenido en la expresión paramétrica \(\mathbf{x}(t)\) para hallar el punto de intersección \((x,y,4)\).

???+ warning "Importante!"

    Casos especiales a tener en cuenta:

    - Si \(d_z\neq 0\) hay una única solución para $t$ y por tanto la recta corta al plano en un único punto.
    - Si \(d_z=0\) y \(p_z\neq 4\), entonces la recta es paralela al plano y no lo corta (no hay intersección).
    - Si \(d_z=0\) y \(p_z=4\), entonces toda la recta está contenida en el plano (infinitos puntos de intersección).

Aplicando estos pasos al ejercicio:

- La componente $z$ de la recta es

- Los vectores que usamos (punto y dirección) son:

  - \(\mathbf{p}=(1,2,0)\). Aquí la componente $z$ es <span style="color:red"><strong>\(p_z=0\)</strong></span>.
  - \(\mathbf{d}=(3,-1,2)\). Aquí la componente $z$ es <span style="color:red"><strong>\(d_z=2\)</strong></span>.

Es importante fijarse en la componente vertical (z) del vector punto y del vector dirección porque el plano que estudiamos es horizontal (\(z=4\)). Ahora escribimos la componente $z$ de la recta y la sustituimos paso a paso en líneas separadas:

$$
z(t)=p_z+t\,d_z
$$

Sustituyendo las componentes por separado:

$$
z(t)=\underbrace{p_z}_{\mathrm{0}}+t\underbrace{d_z}_{\mathrm{2}}
$$

Ahora, haciendo explícita la sustitución numérica en dos líneas separadas:

$$
z(t)=0+t\cdot 2
$$

$$
z(t)=2t
$$

- Igualamos a 4 y resolvemos para $t$:

  $$
  2t=4\quad\Rightarrow\quad t=\frac{4}{2}\quad\Rightarrow\quad  t=2.
  $$

- Sustituimos $t=2$ en la expresión de la recta para obtener el punto de intersección:

  $$
  \mathbf{x}(2)=(1,2,0)+2(3,-1,2)=\boxed{(7,0,4)}.
  $$

Conclusión: la recta corta al plano $z=4$ en el punto $(7,0,4)$. Como la componente $d_z=2$ es distinta de cero, se trata del caso estándar de intersección única.

## Resumen (ficha rápida)

|                  Apartado |                            Resultado                            | Forma utilizada                                                                                                                                                  |
| ------------------------: | :-------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       a) Punto para $t=2$ |                     $\mathbf{x}(2)=(7,0,4)$                     | Sustitución paramétrica: $\mathbf{x}(t)=\mathbf{p}+t\mathbf{d}$; evaluación en $t=2$ (cálculo por componentes).                                                  |
|  b) Dirección de la recta | $\mathbf{d}=(3,-1,2)$ (unitario $\dfrac{1}{\sqrt{14}}(3,-1,2)$) | Extracción del vector dirección desde la forma paramétrica; normalización: $\hat{\mathbf{d}}=\dfrac{\mathbf{d}}{\|\mathbf{d}\|}$ con $\|\mathbf{d}\|=\sqrt{14}$. |
| c) Intersección con $z=4$ |                      $\mathbf{x}=(7,0,4)$                       | Igualar $z(t)=p_z+t\,d_z$ a $4$, resolver $t=\dfrac{4-p_z}{d_z}$ y sustituir en $\mathbf{x}(t)$ (resolución de la ecuación lineal en $t$).                       |
