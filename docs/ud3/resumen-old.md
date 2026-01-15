## Tabla Resumen de Conceptos Clave

| Término | Fórmula/Condición | Descripción Breve | Referencia al Ejemplo |
| :--- | :--- | :--- | :--- |
| **Aplicación Lineal** | $f(a\mathbf{u} + b\mathbf{v}) = a f(\mathbf{u}) + b f(\mathbf{v})$ | Función que conserva las combinaciones lineales entre espacios vectoriales. | **Ejemplo I.2:** Recordemos que $f(x, y) = (x+1, y)$ no es lineal porque $f(\mathbf{0}) \neq \mathbf{0}$. |
| **Núcleo (Ker($f$))** | $\text{Ker}(f) = \{\mathbf{x} \in V \vert f(\mathbf{x}) = \mathbf{0}\}$ | Subespacio del dominio $V$ cuyos vectores son mapeados al vector nulo. | **Ejemplo II.1:** Recordemos que el núcleo de $f(x, y, z) = (x+ y, y − z)$ tiene dimensión 1 y está generado por $(-1, 1, 1)$. |
| **Imagen (Im($f$))** | $\text{Im}(f) = \{f(\mathbf{x}) \vert \mathbf{x} \in V\}$ | Subespacio del codominio $V'$ formado por los vectores alcanzados por $f$. | **Ejemplo II.1:** Recordemos que la imagen de $f(x, y, z) = (x+ y, y − z)$ era $\mathbb{R}^2$. |
| **Teorema de la Dimensión** | $\text{dim}(V) = \text{dim}(\text{Ker}(f)) + \text{dim}(\text{Im}(f))$ | La dimensión del dominio es la suma de la nulidad y el rango de la aplicación. | **Ejemplo II.1:** Recordemos que $3 = 1 + 2$. |
| **Isomorfismo** | $A$ es cuadrada y $\text{Det}(A) \neq 0$ | Aplicación inyectiva y sobreyectiva. Preserva la estructura y dimensión. | **Ejemplo III.1:** Recordemos el caso donde $\text{Det}(A) = 1 \neq 0$, garantizando el isomorfismo. |
| **Matriz Asociada ($A$)** | $\mathbf{Y} = A \mathbf{X}$ | Matriz cuyas columnas son las imágenes de los vectores base del dominio, escritas en coordenadas del codominio. | **Ejemplo IV.1:** Recordemos la matriz $M(f)_{B_U, B_V}$ cuyas columnas eran $f(1, 0)$ y $f(1, 1)$. |
| **Espacio Dual** ($V^*$)| $V^* = \text{Hom}_K(V, K)$ | Conjunto de todas las formas lineales (aplicaciones $V \to K$) de $V$. | |
| **Base Dual** ($B^*$)| $f_i(\mathbf{v}_j) = \delta_{ij}$ | Base de $V^*$ definida por anular a todos los vectores de la base original $B$ excepto al suyo propio. | **Ejemplo V.1:** Recordemos el cálculo de $f_1(x, y) = -2x + \frac{3}{2}y$. |
| **Anulador ($W^0$)** | $W^0 = \{f \in V^* \vert f(\mathbf{w}) = 0, \forall \mathbf{w} \in W\}$ | Subespacio de $V^*$ que consiste en todas las formas lineales que anulan a un subespacio dado $W$. | **Ejemplo VI.1:** Recordemos el anulador generado por la forma $-x_1 - x_2 + x_3$ en $\mathbb{R}^3$. |

---

## I. Aplicaciones Lineales

### Definición y Concepto
Una **aplicación lineal** (o transformación lineal) es una función $f: V \to V'$ entre dos espacios vectoriales $V$ y $V'$ (sobre un mismo cuerpo $K$) que **conserva las operaciones de suma de vectores y multiplicación por escalares**. En términos sencillos, si $f$ es lineal, el orden en que se aplican las operaciones no importa: puedes sumar y multiplicar por escalares *antes* o *después* de aplicar la función.

Se dice que $f$ es lineal si se cumplen estas dos condiciones (o su equivalente combinada):

**Fórmula de Linealidad:**
Para todo $a, b \in K$ y para todo $\mathbf{u}, \mathbf{v} \in V$ se cumple:
$$f(a\mathbf{u} + b\mathbf{v}) = a f(\mathbf{u}) + b f(\mathbf{v})$$

**Propiedad Clave:**
Si $f$ es una aplicación lineal, siempre debe mapear el vector nulo del dominio al vector nulo del codominio: $f(\mathbf{0}_V) = \mathbf{0}_{V'}$. Esta es una verificación rápida para descartar la linealidad.

### Ejemplo I.1: Verificación de Aplicación Lineal (Caso Positivo)
Sea la aplicación $f: \mathbb{R}^3 \to \mathbb{R}^2$ definida por $f(x, y, z) = (x+ y, y − z)$.

**Pasos:** Tomamos dos vectores $\mathbf{u}_1 = (x_1, y_1, z_1)$, $\mathbf{u}_2 = (x_2, y_2, z_2)$ y dos escalares $\alpha, \beta \in \mathbb{R}$.

1.  **Calculamos la combinación lineal en el dominio:**
    $$\alpha \mathbf{u}_1 + \beta \mathbf{u}_2 = (\alpha x_1 + \beta x_2, \alpha y_1 + \beta y_2, \alpha z_1 + \beta z_2)$$

2.  **Aplicamos $f$ a esta combinación lineal:**
    $$f(\alpha \mathbf{u}_1 + \beta \mathbf{u}_2) = ((\alpha x_1 + \beta x_2) + (\alpha y_1 + \beta y_2), (\alpha y_1 + \beta y_2) - (\alpha z_1 + \beta z_2))$$

3.  **Reorganizamos términos para separar $\alpha$ y $\beta$:**
    $$f(\alpha \mathbf{u}_1 + \beta \mathbf{u}_2) = (\alpha(x_1 + y_1) + \beta(x_2 + y_2), \alpha(y_1 - z_1) + \beta(y_2 - z_2))$$
    $$f(\alpha \mathbf{u}_1 + \beta \mathbf{u}_2) = \alpha(x_1 + y_1, y_1 - z_1) + \beta(x_2 + y_2, y_2 - z_2)$$

4.  **Verificamos que se cumple la linealidad:**
    $$f(\alpha \mathbf{u}_1 + \beta \mathbf{u}_2) = \alpha f(\mathbf{u}_1) + \beta f(\mathbf{u}_2)$$
    **Conclusión:** $f$ es lineal.

### Ejemplo I.2: Aplicación No Lineal (Caso Alternativo)
Sea la aplicación $f: K^2 \to K^2$ definida por $f(x, y) = (x + 1, y)$.

**Pasos:** Usamos la propiedad básica de que $f(\mathbf{0})$ debe ser $\mathbf{0}$ para una aplicación lineal.

1.  **Evaluamos el vector nulo (0, 0):**
    $$f(0, 0) = (0 + 1, 0) = (1, 0)$$

2.  **Comparamos con el vector nulo del codominio:**
    $$(1, 0) \neq (0, 0)$$

**Conclusión:** Dado que $f(\mathbf{0}) \neq \mathbf{0}$, la aplicación $f$ **no es lineal**.

---

## II. Núcleo e Imagen de una Aplicación Lineal

Dada una aplicación lineal $f: V \to V'$, se definen dos subespacios vectoriales cruciales: el Núcleo y la Imagen.

### 1. Núcleo (Ker(f) o Nulidad)
El **núcleo** es el conjunto de vectores del **espacio de partida** ($V$) que son "anulados" por la aplicación, es decir, son mapeados al vector nulo del espacio de llegada ($V'$). El núcleo es siempre un subespacio vectorial de $V$.

**Fórmula del Núcleo:**
$$\text{Ker}(f) = \{\mathbf{x} \in V | f(\mathbf{x}) = \mathbf{0}_{V'}\}$$

### 2. Imagen (Im(f) o Rango)
La **imagen** es el conjunto de vectores del **espacio de llegada** ($V'$) que son efectivamente alcanzados por la aplicación. La imagen es siempre un subespacio vectorial de $V'$.

**Fórmula de la Imagen:**
$$\text{Im}(f) = \{f(\mathbf{x}) | \mathbf{x} \in V\}$$

Para calcular la imagen, usamos una propiedad fundamental: si tienes un sistema de generadores $\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ para $V$, entonces $\{\mathbf{f}(\mathbf{v}_1), \dots, \mathbf{f}(\mathbf{v}_n)\}$ es un sistema de generadores para $\text{Im}(f)$.

### 3. Teorema de la Dimensión
Este teorema relaciona las dimensiones de estos subespacios con la dimensión del dominio:
$$\text{dim}(V) = \text{dim}(\text{Ker}(f)) + \text{dim}(\text{Im}(f))$$
Donde $\text{dim}(\text{Im}(f))$ es también conocido como el **rango** de la aplicación, y $\text{dim}(\text{Ker}(f))$ es la **nulidad** de la aplicación.

### Ejemplo II.1: Cálculo de Núcleo e Imagen
Retomamos la aplicación $f: \mathbb{R}^3 \to \mathbb{R}^2$ definida por $f(x, y, z) = (x+ y, y − z)$.

**A. Cálculo del Núcleo:**
Buscamos los vectores $(x, y, z)$ tales que $f(x, y, z) = (0, 0)$.

$$\begin{cases} x+y = 0 \quad (1) \\ y-z = 0 \quad (2) \end{cases}$$

1.  De la ecuación (2): $y = z$.
2.  Sustituyendo en la ecuación (1): $x + y = 0 \implies x = -y$.
3.  Como $y = z$, entonces $x = -z$.
4.  Los vectores $(x, y, z)$ del núcleo son de la forma $(-z, z, z)$.
5.  Factorizamos $z$: $(-z, z, z) = z(-1, 1, 1)$.

**Base y Dimensión del Núcleo:**
La $\text{Base}(\text{Ker}(f)) = \{(-1, 1, 1)\}$ [Basado en, el ejemplo original usó $x$ como parámetro, resultando en $(1, -1, -1)$].
$$\text{dim}(\text{Ker}(f)) = 1$$

**B. Cálculo de la Imagen:**
Usamos el Teorema de la Dimensión, sabiendo que $\text{dim}(\mathbb{R}^3) = 3$:
$$\text{dim}(\text{Im}(f)) = \text{dim}(\mathbb{R}^3) - \text{dim}(\text{Ker}(f))$$
$$\text{dim}(\text{Im}(f)) = 3 - 1 = 2$$

Dado que la imagen es un subespacio de $\mathbb{R}^2$ y su dimensión es 2, esto significa que la imagen abarca todo el codominio: $\text{Im}(f) = \mathbb{R}^2$.
**Base de la Imagen:** Podemos usar la base canónica de $\mathbb{R}^2$, $B_{\text{Im}} = \{(1, 0), (0, 1)\}$.

---

## III. Aplicaciones Inyectivas, Sobreyectivas e Isomorfismos

Estos términos describen el comportamiento de $f$ y se determinan fácilmente observando su núcleo e imagen.

| Tipo de Aplicación | Condición de Núcleo/Imagen | Condición de Matriz $A$ ($m \times n$, $r = \text{rg}(A)$) | Terminología Específica |
| :--- | :--- | :--- | :--- |
| **Inyectiva** | $\text{Ker}(f) = \{\mathbf{0}\}$ (solo el vector nulo se anula). | $r = n$ (Rango igual a la dimensión del dominio/número de columnas). | Monomorfismo. |
| **Sobreyectiva** | $\text{Im}(f) = V'$ (la imagen llena el codominio). | $r = m$ (Rango igual a la dimensión del codominio/número de filas). | Epimorfismo. |
| **Isomorfismo** | Es inyectiva **y** sobreyectiva. | $A$ es cuadrada ($n=m$) y $\text{Det}(A) \neq 0$. | Isomorfismo. |

### Ejemplo III.1: Isomorfismo (Determinante $\neq 0$)
Consideremos $f: K^3 \to K^3$ con matriz asociada $A = \begin{pmatrix} 1 & 1 & 1 \\ 1 & 1 & 0 \\ -1 & 0 & 1 \end{pmatrix}$ respecto a la base canónica.

**Análisis de Isomorfismo:**
1.  **La matriz es cuadrada** ($3 \times 3$).
2.  **Calculamos el determinante:**
    $$\det(A) = 1 \cdot \det\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} - 1 \cdot \det\begin{pmatrix} 1 & 0 \\ -1 & 1 \end{pmatrix} + 1 \cdot \det\begin{pmatrix} 1 & 1 \\ -1 & 0 \end{pmatrix}$$
    $$\det(A) = 1(1\cdot 1 - 0\cdot 0) - 1(1\cdot 1 - 0\cdot (-1)) + 1(1\cdot 0 - 1\cdot (-1))$$
    $$\det(A) = 1(1) - 1(1) + 1(1) = 1$$

3.  **Resultado:** Como $\det(A) = 1 \neq 0$, la aplicación $f$ es un **isomorfismo**. Esto significa que es inyectiva ($\text{Ker}(f) = \mathbf{0}$) y sobreyectiva ($\text{Im}(f) = K^3$).

### Ejemplo III.2: Endomorfismo NO Isomorfismo (Alternativa: Determinante = 0)
Consideremos el endomorfismo $f: K^4 \to K^4$. Para que sea automorfismo (isomorfismo de un espacio en sí mismo), necesita ser inyectivo.

El núcleo de $f$ se calcula resolviendo el sistema homogéneo:
$$\begin{cases} x_1 + x_2 + x_3 + x_4 = 0 \\ 2x_1 - x_3 - x_4 = 0 \\ x_1 - x_2 - x_3 = 0 \\ x_1 + x_2 - x_4 = 0 \end{cases}$$

**Análisis de No-Isomorfismo:**
1.  **Determinante de la matriz asociada:** Se afirma que la matriz asociada a este sistema tiene **determinante nulo**.

2.  **Resultado:** Si el determinante es nulo, el sistema homogéneo tiene soluciones no triviales (infinitas) [Principio de álgebra lineal]. Esto implica que $\text{Ker}(f) \neq \mathbf{0}$.
**Conclusión:** Dado que el núcleo no es solo el vector nulo, $f$ **no es inyectiva** y, por lo tanto, **no es un automorfismo/isomorfismo**.

---

## IV. Matriz Asociada a una Aplicación Lineal

La matriz asociada ($A$) es la representación de una aplicación lineal $f: V \to U$ una vez que se han fijado bases $B$ en $V$ y $B'$ en $U$.

**Regla Clave:**
La matriz $A$ tiene por columnas las coordenadas de las imágenes de los vectores de la base del dominio ($B$) expresadas en la base del codominio ($B'$).

**Ecuación Matricial:**
Si $\mathbf{X}$ son las coordenadas de un vector $\mathbf{x} \in V$ en la base $B$, e $\mathbf{Y}$ son las coordenadas de $f(\mathbf{x}) \in U$ en la base $B'$, la relación es:
$$\mathbf{Y} = A \mathbf{X}$$

### Ejemplo IV.1: Construcción de la Matriz Asociada
Sea $f: \mathbb{R}^2 \to \mathbb{R}^3$ definida por $f(x, y) = (x+ y, 2x− y, y)$.
Base del dominio $B_U = \{(1, 0), (1, 1)\}$. Base del codominio $B_V = \{(1, 0, 0), (0, 1, 0), (0, 0, 1)\}$ (canónica).

**Pasos:**
1.  **Calculamos $f$ en los vectores de $B_U$:**
    $$f(\mathbf{u}_1) = f(1, 0) = (1+0, 2(1)-0, 0) = (1, 2, 0)$$
    $$f(\mathbf{u}_2) = f(1, 1) = (1+1, 2(1)-1, 1) = (2, 1, 1)$$

2.  **Encontramos las coordenadas en $B_V$ (canónica):**
    Como $B_V$ es la base canónica, las coordenadas son los propios vectores:
    $$f(\mathbf{u}_1)_{B_V} = \begin{pmatrix} 1 \\ 2 \\ 0 \end{pmatrix}$$
    $$f(\mathbf{u}_2)_{B_V} = \begin{pmatrix} 2 \\ 1 \\ 1 \end{pmatrix}$$

3.  **Construimos la matriz $A$ (usando las coordenadas como columnas):**
    $$A = M(f)_{B_U, B_V} = \begin{pmatrix} 1 & 2 \\ 2 & 1 \\ 0 & 1 \end{pmatrix}$$

---

## V. Espacio Dual y Base Dual

### 1. Espacio Dual ($V^*$)
Dado un espacio vectorial $V$ sobre un cuerpo $K$, una **forma lineal** es una aplicación lineal $f: V \to K$ (una aplicación que devuelve un escalar).

El **Espacio Dual ($V^*$)** es el conjunto de todas las posibles formas lineales de $V$. $V^*$ es a su vez un espacio vectorial. Si $\text{dim}(V)=n$, entonces $\text{dim}(V^*)=n$.

### 2. Base Dual ($B^*$)
Si $B = \{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ es una base de $V$, existe una base única para $V^*$, llamada **base dual** $B^* = \{f_1, \dots, f_n\}$.

**Propiedad de la Base Dual:**
La base dual se define por la condición de Kronecker $\delta_{ij}$:
$$f_i(\mathbf{v}_j) = \delta_{ij} = \begin{cases} 1 & \text{si } i = j \\ 0 & \text{si } i \neq j \end{cases}$$

### Ejemplo V.1: Cálculo de la Base Dual (De Base a Formas)
En $\mathbb{R}^2$, sea la base $B = \{\mathbf{v}_1, \mathbf{v}_2\} = \{(1, 2), (3, 4)\}$. Queremos encontrar $B^* = \{f_1, f_2\}$, donde cada $f_i$ tiene la forma $f(x, y) = ax+by$.

**A. Cálculo de $f_1(x, y) = a_1x + b_1y$:**
Debe cumplir $f_1(\mathbf{v}_1) = 1$ y $f_1(\mathbf{v}_2) = 0$.
$$\begin{cases} 1a_1 + 2b_1 = 1 \quad (\text{de } \mathbf{v}_1) \\ 3a_1 + 4b_1 = 0 \quad (\text{de } \mathbf{v}_2) \end{cases}$$
Multiplicamos la primera ecuación por $-2$:
$$\begin{cases} -2a_1 - 4b_1 = -2 \\ 3a_1 + 4b_1 = 0 \end{cases}$$
Sumando: $a_1 = -2$. Sustituyendo en $3a_1 + 4b_1 = 0$: $3(-2) + 4b_1 = 0 \implies 4b_1 = 6 \implies b_1 = 3/2$.
$$f_1(x, y) = -2x + \frac{3}{2}y$$

**B. Cálculo de $f_2(x, y) = a_2x + b_2y$:**
Debe cumplir $f_2(\mathbf{v}_1) = 0$ y $f_2(\mathbf{v}_2) = 1$.
$$\begin{cases} 1a_2 + 2b_2 = 0 \quad (\text{de } \mathbf{v}_1) \\ 3a_2 + 4b_2 = 1 \quad (\text{de } \mathbf{v}_2) \end{cases}$$
De la primera: $a_2 = -2b_2$. Sustituimos en la segunda:
$3(-2b_2) + 4b_2 = 1 \implies -6b_2 + 4b_2 = 1 \implies -2b_2 = 1 \implies b_2 = -1/2$.
Sustituyendo $b_2$: $a_2 = -2(-1/2) = 1$.
$$f_2(x, y) = x - \frac{1}{2}y$$

### Ejemplo V.2: Cálculo de la Base Original (Alternativa: De Formas a Base)
Dada la base dual $B^*_1 = \{f_1, f_2\}$ en $\mathbb{R}^2$ con $f_1(x_1, x_2) = x_1 + 2x_2$ y $f_2(x_1, x_2) = 3x_1 + 5x_2$. Queremos encontrar la base $B_1 = \{\mathbf{v}_1, \mathbf{v}_2\}$ de la cual $B^*_1$ es dual.

**Regla Clave (Matriz de Paso):** Si $P$ es la matriz de cambio de base de $B_1$ a la canónica $B$, entonces la matriz $P^{-1}$ tiene como filas los coeficientes de las formas de $B^*_1$.

1.  **Construir $P^{-1}$ (Matriz de Coeficientes Duales):**
    $$P^{-1} = \begin{pmatrix} 1 & 2 \\ 3 & 5 \end{pmatrix}$$ (Los coeficientes de $f_1$ forman la primera fila, los de $f_2$ la segunda).

2.  **Calcular la inversa $P$:**
    $\det(P^{-1}) = (1)(5) - (2)(3) = 5 - 6 = -1$.
    $$P = (P^{-1})^{-1} = \frac{1}{-1} \begin{pmatrix} 5 & -2 \\ -3 & 1 \end{pmatrix} = \begin{pmatrix} -5 & 2 \\ 3 & -1 \end{pmatrix}$$

3.  **Determinar la Base $B_1$:**
    Las columnas de $P$ son los vectores de $B_1$ escritos en la base canónica.
    $$B_1 = \{(-5, 3), (2, -1)\}$$

---

## VI. Anulador de un Subespacio

### Definición y Dimensión
El **anulador de un subespacio** $W$ (denotado $W^0$ o $a_V(W)$) es un subespacio del espacio dual $V^*$. Está compuesto por todas las formas lineales $f \in V^*$ que hacen cero a *todos* los vectores $\mathbf{w} \in W$.

**Fórmula del Anulador:**
$$W^0 = \{f \in V^* | f(\mathbf{w}) = 0, \forall \mathbf{w} \in W\}$$

**Teorema de la Dimensión para el Anulador:**
La dimensión de un subespacio $W$ y la dimensión de su anulador $W^0$ suman la dimensión del espacio total $V$:
$$\text{dim}(W) + \text{dim}(W^0) = \text{dim}(V)$$

### Ejemplo VI.1: Cálculo del Anulador
En $\mathbb{R}^3$, sea $W = \text{span}\{\mathbf{u}_1, \mathbf{u}_2\}$, donde $\mathbf{u}_1 = (1, 0, 1)$ y $\mathbf{u}_2 = (0, 1, 1)$.
Una forma lineal genérica es $f(x_1, x_2, x_3) = ax_1 + bx_2 + cx_3$.

**Pasos:** Imponemos que la forma lineal anule a los generadores de $W$:

1.  **Anulamos $\mathbf{u}_1$:**
    $$f(1, 0, 1) = a(1) + b(0) + c(1) = a + c = 0$$

2.  **Anulamos $\mathbf{u}_2$:**
    $$f(0, 1, 1) = a(0) + b(1) + c(1) = b + c = 0$$

3.  **Resolvemos el sistema de ecuaciones:**
    De (1): $a = -c$.
    De (2): $b = -c$.
    Los coeficientes de la forma lineal son de la forma $(a, b, c) = (-c, -c, c) = c(-1, -1, 1)$.

4.  **Expresión del Anulador:**
    El anulador $W^0$ está generado por la forma lineal correspondiente a los coeficientes $(-1, -1, 1)$:
    $$W^0 = \text{span}\{-x_1 - x_2 + x_3\}$$

**Verificación de Dimensión:**
$\text{dim}(\mathbb{R}^3) = 3$. Los vectores de $W$ son linealmente independientes, así que $\text{dim}(W) = 2$. Como $W^0$ es generado por una única forma lineal linealmente independiente, $\text{dim}(W^0) = 1$.
$$2 + 1 = 3$$. Se cumple el Teorema de la Dimensión.

---

## VII. Polinomios de Interpolación de Lagrange (Base Dual en $P_n[x]$)

La **Interpolación de Lagrange** es una aplicación práctica del espacio dual en el contexto de polinomios.

**Concepto Clave:**
En el espacio de polinomios $P_n(\mathbb{R})$, las formas lineales de **evaluación** en $n+1$ puntos distintos $a_0, \dots, a_n$ (definidas como $E_a(q) = q(a)$) forman una base del espacio dual $P_n(\mathbb{R})^*$.

La base $B = \{p_0(x), \dots, p_n(x)\}$ de $P_n(\mathbb{R})$ de la cual estas formas de evaluación son la base dual $B^*$ son los **polinomios de interpolación de Lagrange**. Estos polinomios $p_j(x)$ están construidos de tal manera que $p_j(a_j) = 1$ y $p_j(a_k) = 0$ para $k \neq j$.

### Ejemplo VII.1: Polinomios de Interpolación de Lagrange (Cálculo de Base)
En el espacio $V = P_1[x]$ (polinomios de grado $\le 1$), se dan las formas de evaluación $f_1(p) = p(1)$ y $f_2(p) = p(2)$. Queremos encontrar la base $B = \{p_1(x), p_2(x)\}$ tal que $\{f_1, f_2\}$ sea su dual.

**A. Cálculo de $p_1(x) = a_1 + b_1x$:**
Debe cumplir $f_1(p_1) = p_1(1) = 1$ y $f_2(p_1) = p_1(2) = 0$.
$$\begin{cases} a_1 + b_1(1) = 1 \\ a_1 + b_1(2) = 0 \end{cases}$$
Restando la primera de la segunda: $(a_1 + 2b_1) - (a_1 + b_1) = 0 - 1 \implies b_1 = -1$.
Sustituyendo $b_1 = -1$ en la primera: $a_1 + (-1) = 1 \implies a_1 = 2$.
$$p_1(x) = 2 - x$$

**B. Cálculo de $p_2(x) = a_2 + b_2x$:**
Debe cumplir $f_1(p_2) = p_2(1) = 0$ y $f_2(p_2) = p_2(2) = 1$.
$$\begin{cases} a_2 + b_2(1) = 0 \\ a_2 + b_2(2) = 1 \end{cases}$$
Restando la primera de la segunda: $b_2 = 1$.
Sustituyendo $b_2 = 1$ en la primera: $a_2 + 1 = 0 \implies a_2 = -1$.
$$p_2(x) = x - 1$$

La base de Polinomios de Lagrange es $B = \{2 - x, x - 1\}$.

---

