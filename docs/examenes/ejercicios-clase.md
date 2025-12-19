 # Ejercicios de clase — Resumen de ejercicios resueltos

 _Las soluciones largas están colapsadas por defecto para mejorar la lectura; pulsa en "Solución paso a paso" cuando quieras desplegarlas._

## UNIDAD DE INDUCCIÓN: INTRODUCCIÓN A VECTORES

### Tema: Operaciones Básicas y Propiedades

!!! tip "Concepto clave"
    Un vector $\mathbf{v} \in \mathbb{R}^n$ es una lista ordenada de $n$ números reales. La suma y el producto por un escalar se realizan componente a componente.

#### Ejemplo I.1: Suma y Producto por Escalar

##### Enunciado

Calcular operaciones básicas.

???+ details "Solución paso a paso"
    * $(0, 1) + (2, 3) = (0 + 2, 1 + 3) = (2, 4)$.
    * $(-1, 3, 4) + (1, -2, -3.5) = (-1 + 1, 3 + (-2), 4 + (-3.5)) = (0, 1, 0.5)$.
    * $4 \cdot (3, -1, 2) = (4 \cdot 3, -1 \cdot 4, 2 \cdot 4) = (12, -4, 8)$.

#### Ejercicio I.2: Resta de Vectores (Combinación Lineal)

##### Enunciado

Expresar la resta $\mathbf{v} - \mathbf{w}$ en función únicamente de la suma y el producto por un escalar.

!!! info "Explicación teórica"
    La resta $\mathbf{v} - \mathbf{w}$ es equivalente a sumar $\mathbf{v}$ con el opuesto de $\mathbf{w}$. El vector opuesto $-\mathbf{w}$ se obtiene multiplicando $\mathbf{w}$ por el escalar $-1$.

???+ details "Solución paso a paso"
    1. **Definir la resta componente a componente:** $\mathbf{v} - \mathbf{w} = (v_1 - w_1, v_2 - w_2, \dots, v_n - w_n)$.
    2. **Reescribir la resta como suma de opuestos:** $\mathbf{v} - \mathbf{w} = (v_1 + (-w_1), v_2 + (-w_2), \dots, v_n + (-w_n))$.
    3. **Expresar como suma y producto por escalar:** $\mathbf{v} - \mathbf{w} = \mathbf{v} + (-1) \cdot \mathbf{w}$.

#### Ejemplo I.3: Producto Escalar

##### Enunciado

Sean $\mathbf{v} = (2, -1, 0)$ y $\mathbf{w} = (-3, -2, 1) \in \mathbb{R}^3$. Calcule $\mathbf{v} \cdot \mathbf{w}$.

!!! info "Explicación teórica"
    El producto escalar $\mathbf{v} \cdot \mathbf{w}$ es la suma de los productos de sus componentes correspondientes: $\sum_{i=1}^{n} v_i w_i$.

???+ details "Solución paso a paso"
    $$\mathbf{v} \cdot \mathbf{w} = (2)(-3) + (-1)(-2) + (0)(1) = -6 + 2 + 0 = -4$$
    
    **Alternativa (Ortogonalidad):** Si el resultado hubiera sido $\mathbf{v} \cdot \mathbf{w} = 0$, diríamos que los vectores son **ortogonales**.

## UNIDAD DIDÁCTICA 2: ESPACIOS VECTORIALES Y BASES

### Tema 1: Espacios Vectoriales, Bases y Dependencia Lineal

#### Ejercicio 1.1: Comprobación de Espacio Vectorial (Polinomios)

##### Enunciado

Compruebe que $P_2$ (polinomios de grado $\le 2$) con la suma y producto por escalar usuales es un espacio vectorial sobre $\mathbb{R}$. Indique una base canónica y su dimensión.

!!! info "Explicación teórica"
    Para ser un espacio vectorial, el conjunto debe cumplir las 8 propiedades del producto externo y las 4 propiedades de grupo abeliano para la suma.

???+ details "Solución paso a paso"
    1. **Propiedades de Espacio Vectorial:** Se verifican las propiedades de la suma y del producto por escalar.
    2. **Base Canónica:** La base estándar para polinomios de grado a lo sumo 2 es $B = \{1, x, x^2\}$.
    3. **Dimensión:** $\dim(P_2) = 3$.

#### Ejemplo 1.3/1.4: Dependencia e Independencia Lineal en $\mathbb{R}^n$

##### Enunciado

Considere el conjunto $S = \{(1,0,1), (1,1,0), (1,1,1), (1,2,1)\}$ en $\mathbb{R}^3$ y determine si es L.D. o L.I.. Considere el subconjunto $S' = \{(1,0,1), (1,1,0), (1,1,1)\}$.

!!! info "Explicación teórica"
    Un conjunto de vectores es L.D. si la ecuación $\mathbf{0} = a_1 \mathbf{v}_1 + \dots + a_n \mathbf{v}_n$ tiene soluciones no triviales (con algún $a_i \neq 0$). Esto equivale a que un vector sea combinación lineal de los demás.

???+ details "Solución paso a paso"
    1. **Plantear el sistema homogéneo:**
       
    $$(0, 0, 0) = x(1, 0, 1) + y(1, 1, 0) + z(1, 1, 1) + t(1, 2, 1)$$

    2. **Matriz asociada (columnas = vectores):**

    $$A = \begin{pmatrix} 1 & 1 & 1 & 1 \\ 0 & 1 & 1 & 2 \\ 1 & 0 & 1 & 1 \end{pmatrix}$$

    3. **Determinar el rango y la solución:** La matriz $A$ es $3 \times 4$ y su **rango es 3**.
    4. **Conclusión (Alternativa 1: L.D.):** Como el rango (3) es menor que el número de incógnitas (4), el sistema es compatible indeterminado y tiene soluciones no nulas. Por lo tanto, los vectores son **linealmente dependientes** (L.D.).

???+ details "Solución (subconjunto $S'$)"
    1. **Matriz asociada (columnas = vectores):**

    $$A' = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 1 & 0 & 1 \end{pmatrix}$$

    2. **Determinante:** Si el determinante es no nulo la única solución del homogéneo es la trivial ($x=y=z=0$).
    3. **Conclusión:** Los vectores son **linealmente independientes** (L.I.).

#### Ejemplo 2.6: Base y Dimensión de un Subespacio Generado

##### Enunciado

Sea $S = \{(1, 3, 4, 1), (2, 6, 8, 2), (2, 5, 7, 2)\} \subset \mathbb{R}^4$. Calcule una base del subespacio generado $U = L(S)$.

!!! info "Explicación teórica"
    La base de $\text{span}(S)$ se obtiene eligiendo el máximo número de vectores L.I. dentro de $S$, o transformando la matriz de filas/columnas en su forma de Hermite (eliminando vectores nulos resultantes).

???+ details "Solución paso a paso"
    1. **Construir la matriz A con los vectores como filas o columnas:**

    $$A = \begin{pmatrix} 1 & 3 & 4 & 1 \\ 2 & 6 & 8 & 2 \\ 2 & 5 & 7 & 2 \end{pmatrix}$$

    2. **Reducir A a su forma escalonada (Forma de Hermite):** (El proceso de escalonamiento no se muestra, solo el resultado).
    3. **Base y Dimensión:** La base obtenida mediante la forma de Hermite es $B_U = \{(1, 0, 1, 1), (0, 1, 1, 0)\}$.
    4. **Dimensión:** $\dim(U) = 2$.

### Tema 2: Coordenadas y Cambio de Base

#### Ejemplo 2.1: Cálculo de Coordenadas de un Vector

##### Enunciado

En $\mathbb{R}^3$, sea la base $B' = \{\mathbf{u}_1 = (1,1,1), \mathbf{u}_2 = (0,1,1), \mathbf{u}_3 = (0,0,1)\}$. Exprese el vector $\mathbf{x} = (2, 3, 1)$ en coordenadas respecto a $B'$.

!!! info "Explicación teórica"
    Las coordenadas de un vector $\mathbf{x}$ en una base $B'$ son los escalares únicos $(x_1, x_2, x_3)$ tales que $\mathbf{x} = x_1 \mathbf{u}_1 + x_2 \mathbf{u}_2 + x_3 \mathbf{u}_3$.

???+ details "Solución paso a paso"
    1. **Plantear la ecuación:**

    $$(2, 3, 1) = x_1 (1, 1, 1) + x_2 (0, 1, 1) + x_3 (0, 0, 1)$$

    2. **Resolver el sistema:**
       * Componente 1: $2 = x_1$.
       * Componente 2: $3 = x_1 + x_2 \implies 3 = 2 + x_2 \implies x_2 = 1$.
       * Componente 3: $1 = x_1 + x_2 + x_3 \implies 1 = 2 + 1 + x_3 \implies x_3 = -2$.
    3. **Verificación:** Se comprueba que $\mathbf{x} = 2\mathbf{u}_1 + 1\mathbf{u}_2 - 2\mathbf{u}_3$.
    4. **Coordenadas:** $[\mathbf{x}]_{B'} = \begin{pmatrix} 2 \\ 1 \\ -2 \end{pmatrix}$.

#### Ejemplo 2.3: Cambio de Base

##### Enunciado

En $\mathbb{R}^3$, se dan las bases $B_1 = \{(1,0,1), (−1,1,1), (1,−1,0)\}$ y $B_2 = \{(2,1,1), (1,1,1), (1,−1,1)\}$. Calcule la matriz de paso $P$ de $B_2$ a $B_1$. Transforme las coordenadas de $\mathbf{v} = (1, 1, 1)$ de la base canónica a $B_1$ y a $B_2$.

!!! info "Explicación teórica"
    Si $P$ es la matriz de cambio de base de $B_2$ a $B_1$, y $X, Y$ son las coordenadas de un vector en $B_1$ y $B_2$ respectivamente, entonces $X = P Y$. $P$ se construye con las coordenadas de los vectores de $B_2$ expresados en $B_1$.

???+ details "Solución paso a paso"
    1. **Matriz de cambio $B_1 \to C$:** La matriz $P_{B1 \to C}$ está formada por los vectores de $B_1$ como columnas: $\begin{pmatrix} 1 & -1 & 1 \\ 0 & 1 & -1 \\ 1 & 1 & 0 \end{pmatrix}$.
    2. **Matriz de cambio $C \to B_1$:** Se calcula $P_{C \to B1} = P_{B1 \to C}^{-1}$.
    3. **Coordenadas de $\mathbf{v}=(1, 1, 1)$ en $B_1$:**

    $$[\mathbf{v}]_{B1} = P_{C \to B1} \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 1 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 2 \\ 2 \\ 1 \end{pmatrix}$$

    4. **Coordenadas en $B_2$ (observación sobre la fuente):** El cálculo matricial debe realizarse con cuidado para evitar confusiones entre coordenadas y vectores en la base canónica.
    5. **Matriz de paso $P_{B2 \to B1}$:**. 
    
    $$P_{B2 \to B1} = P_{C \to B1} P_{B2 \to C}$$

### Tema 3: Subespacios y Operaciones

#### Ejemplo 2.4/3.1: Verificación de Subespacios

##### Enunciado

Determine si $U = \{(a, 0, 0) | a \in \mathbb{R}\}$ en $\mathbb{R}^3$ es un subespacio vectorial.

!!! info "Explicación teórica"
    Un subconjunto $U \subseteq V$ es un subespacio si es cerrado bajo la suma y cerrado bajo el producto escalar, o de forma equivalente, si es cerrado para combinaciones lineales.

???+ details "Solución paso a paso"
    1. **Cerrado bajo la suma:** Sean $\mathbf{u}_1 = (a, 0, 0)$ y $\mathbf{u}_2 = (b, 0, 0) \in U$.  
       $\mathbf{u}_1 + \mathbf{u}_2 = (a+b, 0, 0) \in U$ (Se cumple).
    2. **Cerrado bajo el producto escalar:** Sea $\mathbf{u} = (a, 0, 0) \in U$ y $k \in \mathbb{R}$.  
       $k \mathbf{u} = (ka, 0, 0) \in U$ (Se cumple).

!!! note "Conclusión"
    $U$ es un subespacio vectorial.

**Alternativa (No Subespacio):** Si tuviéramos $W = \{(x, y, z) : x + y + z = 1\}$, este NO sería un subespacio, ya que no contiene al vector nulo $(0, 0, 0)$, o fallaría la cerradura bajo suma (e.g., $(1, 0, 0) + (0, 1, 0) = (1, 1, 0)$, que cumple $x+y+z=2 \neq 1$).

#### Ejemplo 3.2: Paramétricas a Cartesianas

##### Enunciado

Dado $U \subset \mathbb{R}^4$ por $B_U = \{(1, 0, 1, 0), (2, 2, 1, 0), (1, 1, 0, 1)\}$ con ecuaciones paramétricas $X=AP$. Obtenga las ecuaciones cartesianas de $U$.

!!! info "Explicación teórica"
    Un vector $\mathbf{x}$ pertenece a $U$ si la matriz formada por $[\mathbf{x}, \mathbf{u}_1, \dots, \mathbf{u}_r]$ no tiene rango máximo ($r+1$), lo que se traduce en que el determinante de las submatrices de orden $r+1$ debe ser nulo. $\text{Nº Ecuaciones} = \dim(V) - \dim(U)$.

???+ details "Solución paso a paso"
    1.  **Matriz ampliada:** Se construye la matriz con el vector $\mathbf{x}=(x_1, x_2, x_3, x_4)$ y los vectores de la base.
    2.  **Restricción de Rango:** Se fuerza que el determinante de la matriz ampliada $4 \times 4$ sea cero (asumiendo que los vectores de la base $3 \times 4$ son L.I.).
    3.  **Resultado:** Después de operar el determinante, se obtiene el sistema de ecuaciones cartesianas. En este ejemplo, se obtiene una única ecuación independiente:

    $$-x_1 + x_2 - x_3 + 2x_4 = 0$$

#### Ejemplo 3.3: Cartesianas a partir de la Dimensión

##### Enunciado

En $\mathbb{R}^3$, $U = \text{span}\{(1,1,0), (1,-1,0)\}$. Obtenga las ecuaciones cartesianas.

!!! info "Explicación teórica"
    $\dim(V)=3$. Se comprueba que $\dim(U)=2$ (los generadores son L.I.). El número de ecuaciones cartesianas independientes es $\dim(V) - \dim(U) = 3 - 2 = 1$.

???+ details "Solución paso a paso"
    1.  **Identificar el subespacio:** $U$ está contenido en el plano $xy$, donde la coordenada $z$ es siempre cero.
    2.  **Ecuación cartesiana:** La única ecuación lineal que describe esto es $z = 0$.

#### Ejemplo 3.6/3.7: Suma e Intersección de Subespacios (Fórmula de las Dimensiones)

##### Enunciado

En $\mathbb{R}^3$, sean $U = \text{span}\{(1, 0, −1), (0, 1, −1)\}$ y $W = \text{span}\{(1, 1, 0), (0, 0, 1)\}$. Calcule $\dim(U)$, $\dim(W)$, $\dim(U \cap W)$ y $\dim(U + W)$.

!!! info "Explicación teórica"
    Para calcular la dimensión del espacio suma, se utiliza la Fórmula de las Dimensiones: $\dim(U) + \dim(W) = \dim(U \cap W) + \dim(U + W)$.

???+ details "Solución paso a paso"
    1.  **Dimensiones de U y W:** $\dim(U)=2$ y $\dim(W)=2$ (Sus bases son L.I.).
    2.  **Base de $U + W$ (Método directo):** El conjunto de generadores de $U+W$ es $\{(1, 0, −1), (0, 1, −1), (1, 1, 0), (0, 0, 1)\}$. Se reduce a la base canónica de $\mathbb{R}^3$, por lo tanto, $\dim(U + W) = 3$.
    3.  **Dimensión de $U \cap W$ (Método directo):** Se utilizan las bases de $U$ y $W$ y se comprueba que el rango de la matriz que junta las 4 bases es 3, por lo que uno es C.L. del resto. El cálculo implica que $\dim(U \cap W) = 1$.
    4.  **Verificación con la Fórmula de las Dimensiones (Ej. 3.7):**

    $$\dim(U + W) = \dim(U) + \dim(W) - \dim(U \cap W) = 2 + 2 - 1 = 3$$

    5.  **Conclusión:** $\dim(U) = 2$, $\dim(W) = 2$, $\dim(U \cap W) = 1$, $\dim(U + W) = 3$.

#### Ejemplo 3.9: Espacio Cociente

##### Enunciado

En $\mathbb{R}^3$, sea $U$ el subespacio generado por la ecuación $z = 0$. Describa una base de $\mathbb{R}^3/U$.

!!! info "Explicación teórica"
    El espacio cociente $V/U$ tiene la misma dimensión que el subespacio complementario $W$ (tal que $V = U \oplus W$). Si $B_W = \{\mathbf{w}_1, \dots, \mathbf{w}_r\}$ es una base de $W$, entonces $\{\mathbf{w}_1 + U, \dots, \mathbf{w}_r + U\}$ es una base de $V/U$.

???+ details "Solución paso a paso"
    1.  **Identificar U:** $U$ es el plano $xy$ (donde $z=0$). $\dim(U)=2$.
    2.  **Identificar el Espacio Complementario W:** Necesitamos un subespacio $W$ tal que $U \oplus W = \mathbb{R}^3$. $W$ debe tener $\dim(W) = 3 - 2 = 1$. $W$ puede ser la recta generada por el eje $z$. Un vector base es $\mathbf{v} = (0, 0, 1)$.
    3.  **Base del Espacio Cociente:** La base de $\mathbb{R}^3/U$ es el conjunto de la clase de equivalencia del vector base de $W$: $B_{\text{cociente}} = \{\mathbf{v} + U\} = \{(0, 0, 1) + U\}$.

## UNIDAD DIDÁCTICA 3: APLICACIONES LINEALES

### Tema 1: Definiciones Básicas, Núcleo e Imagen

#### Ejemplo 1.4: Verificación de No Linealidad (Caso Alternativo)

##### Enunciado

Demuestre que $f: \mathbb{K}^2 \to \mathbb{K}^2$ definida por $f(x, y) = (x + 1, y)$ no es una aplicación lineal.

!!! info "Explicación teórica"
    Una propiedad básica de las aplicaciones lineales es que deben mapear el vector nulo del dominio al vector nulo del codominio: $f(\mathbf{0}) = \mathbf{0}$.

???+ details "Solución paso a paso"
    1.  **Evaluar el vector nulo:** $\mathbf{0} = (0, 0)$.
    2.  **Calcular la imagen del nulo:** $f(0, 0) = (0 + 1, 0) = (1, 0)$.
    3.  **Conclusión:** Como $(1, 0) \neq (0, 0)$, $f$ **no es lineal**.

#### Ejemplo 1.5: Cálculo de Núcleo e Imagen

##### Enunciado

Calcule $\text{Ker}(f)$ e $\text{Im}(f)$ de $f: \mathbb{K}^3 \to \mathbb{K}^3$ definida por $f(x, y, z) = (x + z, y, x + 2y + z)$.

!!! info "Explicación teórica"
    El núcleo es la solución del sistema homogéneo $f(\mathbf{x}) = \mathbf{0}$. La imagen está generada por las imágenes de los vectores de la base del dominio.

???+ details "Solución paso a paso"
    1.  **Cálculo del Núcleo:** Plantear el sistema $f(x, y, z) = (0, 0, 0)$:

    $$\begin{cases} x + z = 0 \\ y = 0 \\ x + 2y + z = 0 \end{cases}$$

    2.  **Resolución del Sistema:** De la segunda ecuación, $y=0$. Sustituyendo en la tercera, $x+z=0$. Sea $z=\lambda$, entonces $x=-\lambda$.
    3.  **Base del Núcleo:** Los vectores son de la forma $(-\lambda, 0, \lambda) = \lambda (-1, 0, 1)$.

    $$\text{Base}(\text{Ker}(f)) = \{(-1, 0, 1)\}$$. $\dim(\text{Ker}(f)) = 1$$

    4.  **Cálculo de la Imagen (usando base canónica $\mathbf{e}_i$):**
    *   $f(1, 0, 0) = (1, 0, 1)$
    *   $f(0, 1, 0) = (0, 1, 2)$
    *   $f(0, 0, 1) = (1, 0, 1)$
    5.  **Base de la Imagen:** El conjunto de generadores es $\{(1, 0, 1), (0, 1, 2), (1, 0, 1)\}$. Los vectores son L.D. Se elige el máximo L.I. (e.g., eliminando el vector repetido).

    $$\text{Base}(\text{Im}(f)) = \{(1, 0, 1), (0, 1, 2)\}$$. $\dim(\text{Im}(f)) = 2$

    6.  **Verificación Rango-Nulidad:** $\dim(\mathbb{K}^3) = 3$. $1 (\text{Nulidad}) + 2 (\text{Rango}) = 3$.

#### Ejemplo 1.6: Monomorfismo/Isomorfismo (Determinante $\neq 0$)

##### Enunciado

Analizar si $f: \mathbb{K}^3 \to \mathbb{K}^3$ definida por $f(x, y, z) = (2x + y + 4z, x + y + 2z, x + y + 3z)$ es un monomorfismo o un isomorfismo.

!!! info "Explicación teórica"
    $f$ es monomorfismo (inyectiva) si $\text{Ker}(f) = \mathbf{0}$. Si es inyectiva y $\dim(V) = \dim(V')$, es un isomorfismo.

???+ details "Solución paso a paso"
    1.  **Núcleo (Inyectividad):** Se plantea el sistema homogéneo para $\text{Ker}(f)$.
    2.  **Análisis de la Matriz:** La matriz asociada tiene **determinante no nulo**.
    3.  **Conclusión de Inyectividad:** El sistema homogéneo solo tiene la solución trivial, por lo tanto, $\text{Ker}(f) = \mathbf{0}$. $f$ es un **monomorfismo**.
    4.  **Análisis de Isomorfismo (Sobreyectividad):** Dado que $f$ es inyectiva y mapea $\mathbb{K}^3 \to \mathbb{K}^3$, la imagen de una base (que son vectores L.I.) es una base. Por lo tanto, $\dim(\text{Im}(f)) = 3$, lo que implica $\text{Im}(f) = \mathbb{K}^3$.
    5.  **Conclusión Final:** $f$ es inyectiva y sobreyectiva, es un **isomorfismo** (o automorfismo, al ser $V=V'$).

#### Ejemplo 1.8: No Automorfismo (Alternativa: Determinante = 0)

##### Enunciado

$f: \mathbb{K}^4 \to \mathbb{K}^4$ dada por un sistema. Determine si es un automorfismo.

!!! info "Explicación teórica"
    Un endomorfismo es un automorfismo si es un isomorfismo, lo cual requiere que la matriz asociada sea cuadrada y tenga $\det(A) \neq 0$.

???+ details "Solución paso a paso"
    1.  **Sistema para $\text{Ker}(f)$:**

    $$\begin{cases} x_1 + x_2 + x_3 + x_4 = 0 \\ 2x_1 - x_3 - x_4 = 0 \\ x_1 - x_2 - x_3 = 0 \\ x_1 + x_2 - x_4 = 0 \end{cases}$$

    2.  **Análisis de la Matriz:** Se afirma que la matriz asociada tiene **determinante nulo**.
    3.  **Conclusión:** Si $\det(A) = 0$, el sistema homogéneo tiene soluciones no triviales, lo que significa que $\text{Ker}(f) \neq \mathbf{0}$. Por lo tanto, $f$ **no es inyectiva** y **no es un automorfismo**.

#### Ejemplo 1.7: Operaciones con Aplicaciones Lineales

##### Enunciado

Dadas $f, g: \mathbb{K}^2 \to \mathbb{K}^2$ con $f(x, y) = (y, -x)$ y $g(x, y) = (x, -y)$. Calcule $f + g$, $f \circ g$ y $g \circ f$.

!!! info "Explicación teórica"
    La suma $(f+g)(\mathbf{v}) = f(\mathbf{v}) + g(\mathbf{v})$. La composición $(f \circ g)(\mathbf{v}) = f(g(\mathbf{v}))$.

???+ details "Solución paso a paso"
    1.  **Suma:**

    $$(f + g)(x, y) = (y, -x) + (x, -y) = (x + y, -x - y)$$

    2.  **Composición $f \circ g$:**

    $$f \circ g(x, y) = f(g(x, y)) = f(x, -y) = (-y, -x)$$

    3.  **Composición $g \circ f$ (Alternativa):**

    $$g \circ f(x, y) = g(f(x, y)) = g(y, -x) = (y, x)$$

    4.  **Observación:** $f \circ g = (-y, -x)$ y $g \circ f = (y, x)$. Se observa que $f \circ g = -g \circ f$. La composición **no es conmutativa**.

### Tema 2: Matrices y Aplicaciones Lineales

#### Ejemplo 2.2: Construcción de la Matriz Asociada (Imágenes de la Base)

##### Enunciado

Calcule $f: \mathbb{K}^2 \to \mathbb{K}^3$ si $f(1, 0) = (1, 2, 3)$ y $f(0, 1) = (2, 1, 0)$. Obtenga la ecuación matricial respecto a las bases canónicas.

!!! info "Explicación teórica"
    La matriz asociada $A$ tiene como columnas las coordenadas de las imágenes de los vectores de la base de partida, expresadas en la base de llegada.

???+ details "Solución paso a paso"
    1.  **Imágenes de la base canónica:** $f(1, 0)$ y $f(0, 1)$ ya están dadas en coordenadas de la base canónica de $\mathbb{K}^3$.
    2.  **Construir la Matriz A:** Las imágenes son las columnas de $A$:

    $$A = \begin{pmatrix} 1 & 2 \\ 2 & 1 \\ 3 & 0 \end{pmatrix}$$

    3.  **Ecuación Matricial:**

    $$\begin{pmatrix} y_1 \\ y_2 \\ y_3 \end{pmatrix} = \begin{pmatrix} 1 & 2 \\ 2 & 1 \\ 3 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \end{pmatrix}$$

    4.  **Expresión Analítica:** Multiplicando, $f(x_1, x_2) = (x_1 + 2x_2, 2x_1 + x_2, 3x_1)$.

#### Ejercicio 3: Núcleo e Imagen a partir de la Matriz (Rango-Nulidad)

##### Enunciado

Dada $A = \begin{pmatrix} 1 & 1 & 1 \\ 2 & 1 & 0 \end{pmatrix}$ asociada a $f: \mathbb{R}^3 \to \mathbb{R}^2$ respecto a bases canónicas. Calcule bases y dimensiones del núcleo y la imagen.

!!! info "Explicación teórica"
    $\dim(\text{Im}(f)) = \text{rg}(A)$. $\dim(\text{Ker}(f)) = \dim(V) - \text{rg}(A)$.

???+ details "Solución paso a paso"
    1.  **Cálculo del Rango de A (Dimensión de la Imagen):**

    $$\begin{pmatrix} 1 & 1 & 1 \\ 2 & 1 & 0 \end{pmatrix} \xrightarrow{F_2 \to F_2 - 2F_1} \begin{pmatrix} 1 & 1 & 1 \\ 0 & -1 & -2 \end{pmatrix}$$

    $\text{rg}(A) = 2$. Por lo tanto, $\dim(\text{Im}(f)) = 2$. $\text{Im}(f) = \mathbb{R}^2$.
    2.  **Dimensión del Núcleo (Nulidad):**

    $$\dim(\text{Ker}(f)) = \dim(\mathbb{R}^3) - \text{rg}(A) = 3 - 2 = 1$$

    3.  **Base del Núcleo:** Resolver el sistema homogéneo $\begin{pmatrix} 1 & 1 & 1 \\ 0 & -1 & -2 \end{pmatrix} \begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}$:
    
    $$\begin{cases} x+y+z = 0 \\ -y-2z = 0 \implies y = -2z \end{cases}$$

    Sustituyendo $y$: $x + (-2z) + z = 0 \implies x - z = 0 \implies x = z$.
    Vectores del núcleo: $(z, -2z, z) = z(1, -2, 1)$.

    $$\text{Base}(\text{Ker}(f)) = \{(1, -2, 1)\}$$

#### Ejercicio 4: Cambio de Base en un Endomorfismo

##### Enunciado

Endomorfismo $f: \mathbb{R}^2 \to \mathbb{R}^2$. $A = \begin{pmatrix} 1 & -1 \\ 2 & 4 \end{pmatrix}$ en base canónica $B$. Nueva base $B' = \{(1, -1), (1, -2)\}$. Calcule $A' = M(f)_{B', B'}$.

!!! info "Explicación teórica"
    Para endomorfismos, la matriz asociada en la nueva base $A'$ se calcula mediante la relación de semejanza: $A' = P^{-1} A P$, donde $P$ es la matriz de cambio de $B'$ a $B$.

???+ details "Solución paso a paso"
    1.  **Matriz de Paso $P$ ($B' \to B$):** Como $B$ es la canónica, las columnas de $P$ son los vectores de $B'$:

    $$P = \begin{pmatrix} 1 & 1 \\ -1 & -2 \end{pmatrix}$$

    2.  **Matriz Inversa $P^{-1}$:** $\det(P) = (1)(-2) - (1)(-1) = -2 + 1 = -1$.

    $$P^{-1} = \frac{1}{-1} \begin{pmatrix} -2 & -1 \\ 1 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 1 \\ -1 & -1 \end{pmatrix}$$

    3.  **Cálculo de $A' = P^{-1} A P$:**
    *   **Paso 3.1: Calcular $P^{-1} A$**

        $$P^{-1} A = \begin{pmatrix} 2 & 1 \\ -1 & -1 \end{pmatrix} \begin{pmatrix} 1 & -1 \\ 2 & 4 \end{pmatrix} = \begin{pmatrix} 2(1)+1(2) & 2(-1)+1(4) \\ -1(1)-1(2) & -1(-1)-1(4) \end{pmatrix} = \begin{pmatrix} 4 & 2 \\ -3 & -3 \end{pmatrix}$$

    *   **Paso 3.2: Calcular $(P^{-1} A) P$**
        
        $$A' = \begin{pmatrix} 4 & 2 \\ -3 & -3 \end{pmatrix} \begin{pmatrix} 1 & 1 \\ -1 & -2 \end{pmatrix} = \begin{pmatrix} 4(1)+2(-1) & 4(1)+2(-2) \\ -3(1)-3(-1) & -3(1)-3(-2) \end{pmatrix} = \begin{pmatrix} 2 & 0 \\ 0 & 3 \end{pmatrix}$$

    4.  **Resultado:** $A' = \begin{pmatrix} 2 & 0 \\ 0 & 3 \end{pmatrix}$.

### Tema 3: Espacio Dual

#### Ejercicio 5: Cálculo de la Base Dual (De Base a Formas)

##### Enunciado

En $\mathbb{R}^2$, dada la base $B = \{\mathbf{v}_1, \mathbf{v}_2\} = \{(1, 2), (3, 4)\}$. Determine las formas lineales de su base dual $B^* = \{f_1, f_2\}$.

!!! info "Explicación teórica"
    Las formas duales $f_i(x, y) = a_i x + b_i y$ deben cumplir $f_i(\mathbf{v}_j) = \delta_{ij}$ (1 si $i=j$, 0 si $i \neq j$).

???+ details "Solución paso a paso"
    1.  **Cálculo de $f_1(x, y) = a_1x + b_1y$** ($f_1(\mathbf{v}_1)=1, f_1(\mathbf{v}_2)=0$):

    $$\begin{cases} 1a_1 + 2b_1 = 1 \\ 3a_1 + 4b_1 = 0 \end{cases}$$

    Multiplicando la primera por $-2$ y sumando: $(-2a_1 - 4b_1) + (3a_1 + 4b_1) = -2 + 0 \implies a_1 = -2$.
    Sustituyendo $a_1$: $3(-2) + 4b_1 = 0 \implies 4b_1 = 6 \implies b_1 = 3/2$.

    $$f_1(x, y) = -2x + \frac{3}{2}y$$

    2.  **Cálculo de $f_2(x, y) = a_2x + b_2y$** ($f_2(\mathbf{v}_1)=0, f_2(\mathbf{v}_2)=1$):

    $$\begin{cases} 1a_2 + 2b_2 = 0 \\ 3a_2 + 4b_2 = 1 \end{cases}$$

    De la primera, $a_2 = -2b_2$. Sustituyendo: $3(-2b_2) + 4b_2 = 1 \implies -2b_2 = 1 \implies b_2 = -1/2$.
    Sustituyendo $b_2$: $a_2 = -2(-1/2) = 1$.

    $$f_2(x, y) = x - \frac{1}{2}y$$

#### Ejemplo 3.2: Determinación de la Base a partir de su Dual (Alternativa Inversa)

##### Enunciado

En $\mathbb{K}^3$, se da la base dual $B^*_1 = \{f_1(x_3), f_2(x_2-x_3), f_3(x_1-x_2)\}$. Calcule la base $B_1$.

!!! info "Explicación teórica"
    La matriz de los coeficientes de las formas duales ($P^{-1}$) es la inversa de la matriz de cambio de base $P$ (de $B_1$ a la canónica $B$). Las columnas de $P$ son los vectores de $B_1$.

???+ details "Solución paso a paso"
    1.  **Construir $P^{-1}$ (Matriz de Coeficientes Duales):**

    $$P^{-1} = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 1 & -1 \\ 1 & -1 & 0 \end{pmatrix}$$

    2.  **Calcular $P = (P^{-1})^{-1}$:**
    *   $\det(P^{-1}) = 0 - 0 + 1(0 - 1) = -1$.
    *   $P = \frac{1}{-1} \begin{pmatrix} 1 & -1 & 0 \\ 1 & 0 & 0 \\ 1 & 0 & -1 \end{pmatrix}_{\text{adjunta}} = \begin{pmatrix} 1 & 1 & 1 \\ 1 & 1 & 0 \\ 1 & 0 & 0 \end{pmatrix}$ (Nota: El cálculo de la adjunta/inversa en la fuente es implícito, pero se proporciona la matriz final $P$).
    3.  **Determinar la Base $B_1$:**

    $$B_1 = \{(1, 1, 1), (1, 1, 0), (1, 0, 0)\}$$

#### Ejercicio 4: Cálculo del Anulador de un Subespacio

##### Enunciado

En $\mathbb{R}^3$, $W = \text{span}\{(1, 0, 1), (0, 1, 1)\}$. Calcule el subespacio anulador $W^0$.

!!! info "Explicación teórica"
    $W^0$ contiene las formas lineales $f(\mathbf{x}) = ax_1 + bx_2 + cx_3$ que anulan a todos los generadores de $W$. Se resuelve un sistema de ecuaciones para $a, b, c$. Además, $\dim(W) + \dim(W^0) = \dim(V)$.

???+ details "Solución paso a paso"
    1.  **Imponer condiciones de anulación:**

    $$\begin{cases} f(1, 0, 1) = a(1) + b(0) + c(1) = 0 \implies a + c = 0 \\ f(0, 1, 1) = a(0) + b(1) + c(1) = 0 \implies b + c = 0 \end{cases}$$

    2.  **Resolver el sistema para los coeficientes:** $a = -c$ y $b = -c$.
    3.  **Base del Anulador:** Los coeficientes son de la forma $(-c, -c, c) = c(-1, -1, 1)$.

    $$W^0 = \text{span}\{-x_1 - x_2 + x_3\}$$

    4.  **Verificación Dimensional:** $\dim(V) = 3$. $\dim(W) = 2$ (vectores L.I.). $\dim(W^0) = 1$. Se cumple $2 + 1 = 3$.

#### Ejemplo 3.4: Intersección mediante el Anulador

##### Enunciado

En $\mathbb{K}^3$, $U: x + y + z = 0$ y $W: x - y - z = 0$. Calcule $U \cap W$ mediante el anulador.

!!! info "Explicación teórica"
    El anulador de la intersección es la suma de los anuladores: $a_V(U \cap W) = a_V(U) + a_V(W)$. Se usa la propiedad $a_V(a_V(H)) = H$.

???+ details "Solución paso a paso"
    1.  **Anuladores de U y W:** $a_V(U) = \langle (1, 1, 1) \rangle$, $a_V(W) = \langle (1, -1, -1) \rangle$ (coeficientes de las ecuaciones).
    2.  **Suma de Anuladores $H = a_V(U) + a_V(W)$:** $H = \text{span}\{(1, 1, 1), (1, -1, -1)\}$.
    3.  **Anulador de H:** Buscamos $\mathbf{x}=(x, y, z)$ que sea anulado por las formas de $H$:

    $$\begin{cases} x + y + z = 0 \\ x - y - z = 0 \end{cases}$$

    Sumando las ecuaciones: $2x = 0 \implies x = 0$.
    Sustituyendo $x=0$: $y + z = 0 \implies z = -y$.
    4.  **Intersección:** $U \cap W$ son los vectores $(0, y, -y) = y(0, 1, -1)$.

    $$U \cap W = \text{span}\{(0, 1, -1)\}$$

#### Ejemplo 3.5: Interpolación de Lagrange

##### Enunciado

Calcule el polinomio $q(x)$ de grado $\le 3$ tal que $q(-1) = -6$, $q(0) = 2$, $q(1) = -2$, $q(2) = 6$.

!!! info "Explicación teórica"
    El polinomio es la combinación lineal $p(x) = \sum_{j=0}^n b_j p_j(x)$, donde $p_j(x)$ son los polinomios de interpolación de Lagrange duales a las formas de evaluación $E_{a_j}(q) = q(a_j)$.

???+ details "Solución paso a paso"
    1.  **Fórmula general de $p_j(x)$:** $p_j(x) = \prod_{i \neq j} \frac{(x - a_i)}{(a_j - a_i)}$.
    2.  **Cálculo de $p_0(x)$:**

    $$p_0(x) = \frac{(x-0)(x-1)(x-2)}{(-1-0)(-1-1)(-1-2)} = -\frac{1}{6}(x^3 - 3x^2 + 2x)$$

    3.  **Cálculo de $p_1(x)$:**

    $$p_1(x) = \frac{(x+1)(x-1)(x-2)}{(0+1)(0-1)(0-2)} = \frac{1}{2}(x^3 - 2x^2 - x + 2)$$

    4.  **Cálculo de $p_2(x)$:**
    
    $$p_2(x) = \frac{(x+1)(x-0)(x-2)}{(1+1)(1-0)(1-2)} = -\frac{1}{2}(x^3 - x^2 - 2x)$$
    
    5.  **Cálculo de $p_3(x)$:**
    
    $$p_3(x) = \frac{(x+1)(x-0)(x-1)}{(2+1)(2-0)(2-1)} = \frac{1}{6}(x^3 - x)$$
    
    6.  **Polinomio Final $q(x)$:**
    
    $$q(x) = (-6) p_0(x) + (2) p_1(x) + (-2) p_2(x) + (6) p_3(x)$$

## UNIDAD DIDÁCTICA 4: DIAGONALIZACIÓN DE ENDOMORFISMOS

### Tema 1: Autovalores, Autovectores y Polinomio Característico

#### Ejemplo 1.2: Cálculo de un Subespacio Propio

##### Enunciado

Dado el endomorfismo con matriz $A = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 2 & 1 \\ 0 & 0 & 3 \end{pmatrix}$. Calcule el subespacio propio $V_2$ asociado al autovalor $\lambda = 2$.

!!! info "Explicación teórica"
    El subespacio propio $V_\lambda$ es el núcleo de la aplicación $f - \lambda Id$, o $\text{Ker}(A - \lambda I)$. Sus ecuaciones cartesianas son $(A - \lambda I) X = 0$.

???+ details "Solución paso a paso"
    1.  **Calcular $A - 2I$:**

    $$A - 2I = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 2 & 1 \\ 0 & 0 & 3 \end{pmatrix} - \begin{pmatrix} 2 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 2 \end{pmatrix} = \begin{pmatrix} -1 & 1 & 1 \\ 0 & 0 & 1 \\ 0 & 0 & 1 \end{pmatrix}$$

    2.  **Sistema de Ecuaciones $(A - 2I) X = 0$:**

    $$\begin{cases} -x + y + z = 0 \\ z = 0 \\ z = 0 \end{cases}$$
    
    3.  **Resolución y Base:** De $z=0$, la primera ecuación es $-x + y = 0 \implies x = y$.
    Los vectores son de la forma $(x, x, 0) = x(1, 1, 0)$.
    
    $$\text{Base}(V_2) = \{(1, 1, 0)\}$$

#### Ejemplo 1.4: Polinomio Característico (Alternativa: No Diagonalizable en $\mathbb{R}$)

##### Enunciado

Calcule el polinomio característico de $A = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}$.

!!! info "Explicación teórica"
    El polinomio característico $p_A(x) = \det(A - xI)$. Los autovalores son las raíces de este polinomio. Si las raíces no son reales, no es diagonalizable en $\mathbb{R}$.

???+ details "Solución paso a paso"
    1.  **Calcular $A - xI$:**
    
    $$A - xI = \begin{pmatrix} -x & 1 \\ -1 & -x \end{pmatrix}$$
    
    2.  **Calcular el Determinante:**
    
    $$p(x) = \det(A - xI) = (-x)(-x) - (1)(-1) = x^2 + 1$$

    3.  **Raíces/Autovalores:** $x^2 + 1 = 0 \implies x = \pm \sqrt{-1} = \pm i$.
    4.  **Conclusión:** Como las raíces son complejas, la matriz **no es diagonalizable en $\mathbb{R}$**.

#### Ejemplo 1.6: Multiplicidades (Alternativa: No Diagonalizable por Multiplicidad Geométrica)

##### Enunciado

$A = \begin{pmatrix} 2 & 2 & 3 \\ 0 & 2 & 2 \\ 0 & 0 & 2 \end{pmatrix}$. Calcule las multiplicidades algebraica y geométrica de su autovalor.

!!! info "Explicación teórica"
    La multiplicidad algebraica ($a$) es la multiplicidad de la raíz en $p(x)$. La multiplicidad geométrica ($d$) es $\dim(V_\lambda) = n - \text{rg}(A - \lambda I)$. Para ser diagonalizable, debe cumplirse $d = a$.

???+ details "Solución paso a paso"
    1.  **Polinomio Característico:**
    
    $$p(x) = \det(A - xI) = \det \begin{pmatrix} 2-x & 2 & 3 \\ 0 & 2-x & 2 \\ 0 & 0 & 2-x \end{pmatrix} = (2-x)^3$$
    
    2.  **Multiplicidad Algebraica ($a$):** $\lambda = 2$ es una raíz con exponente 3. $a_2 = 3$.
    3.  **Cálculo de Rango de $A - 2I$:**
    
    $$A - 2I = \begin{pmatrix} 0 & 2 & 3 \\ 0 & 0 & 2 \\ 0 & 0 & 0 \end{pmatrix}$$
    
    $$\text{rg}(A - 2I) = 2$$

    4.  **Multiplicidad Geométrica ($d$):**
    
    $$d_2 = n - \text{rg}(A - 2I) = 3 - 2 = 1$$
    
    5.  **Conclusión:** Como $d_2 = 1 < a_2 = 3$, la matriz **no es diagonalizable**.

### Tema 2: Diagonalización y Forma de Jordan

#### Ejemplo 2.1: Proceso Completo de Diagonalización

##### Enunciado

Diagonalice $A = \begin{pmatrix} 3 & 1 & 1 \\ 1 & 3 & 1 \\ 1 & 1 & 3 \end{pmatrix}$ y encuentre la matriz de paso $P$ tal que $D = P^{-1} A P$.

!!! info "Explicación teórica"
    El proceso de diagonalización requiere verificar que $a_i = d_i$ para todos los autovalores. Si es diagonalizable, $D$ se forma con los autovalores y $P$ con las bases de los subespacios propios $V_{\lambda}$. (Nota: Como $A$ es simétrica, el Teorema Espectral garantiza que es diagonalizable).

???+ details "Solución paso a paso"
    1.  **Polinomio Característico:**

    $$p(x) = -x^3 + 9x^2 - 24x + 20 = -(x-2)^2(x-5)$$

    2.  **Autovalores y Multiplicidades Algebraicas ($a$):**
        *   $\lambda_1 = 2$, $a_1 = 2$.
        *   $\lambda_2 = 5$, $a_2 = 1$.
    3.  **Multiplicidades Geométricas ($d$):**
        *   Para $\lambda_1 = 2$: $A - 2I = \begin{pmatrix} 1 & 1 & 1 \\ 1 & 1 & 1 \\ 1 & 1 & 1 \end{pmatrix}$.  
            $\text{rg}(A - 2I) = 1$.  
            $d_1 = 3 - 1 = 2$.  
            ($d_1 = a_1$).  
        *   Para $\lambda_2 = 5$: $A - 5I = \begin{pmatrix} -2 & 1 & 1 \\ 1 & -2 & 1 \\ 1 & 1 & -2 \end{pmatrix}$.  
            $\text{rg}(A - 5I) = 2$.  
            $d_2 = 3 - 2 = 1$.  
            ($d_2 = a_2$).
    4.  **Matriz Diagonal D:** $D = \begin{pmatrix} 2 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 5 \end{pmatrix}$.
    5.  **Bases de Subespacios Propios ($V_\lambda$):**
        *   $V_2$: Se resuelve $x+y+z=0$.  
            $\text{Base}(V_2) = \{(-1, 1, 0), (-1, 0, 1)\}$,.
        *   $V_5$: Se resuelve $x=y=z$.  
            $\text{Base}(V_5) = \{(1, 1, 1)\}$.
    6.  **Matriz de Paso P:** Se ordenan los vectores según el orden en $D$:

    $$P = \begin{pmatrix} -1 & -1 & 1 \\ 1 & 0 & 1 \\ 0 & -1 & 1 \end{pmatrix}$$

    7.  **Verificación (Opcional):** Se comprueba que $P^{-1} A P = D$.

#### Ejemplo 3.5/3.6: Aplicación de la Forma Canónica de Jordan (Sucesiones Recurrentes)

##### Enunciado

Calcule la expresión general para la sucesión matricial $X_n = A X_{n-1}$ con $X_0 = \begin{pmatrix} 0 \\ 1 \end{pmatrix}$ y $A = \begin{pmatrix} 0 & 1 \\ 1 & 1 \end{pmatrix}$. (Esto resuelve la sucesión de Fibonacci).

!!! info "Explicación teórica"
    $X_n = A^n X_0$. Si $A$ es diagonalizable, $A^n = P D^n P^{-1}$, lo que simplifica el cálculo.

???+ details "Solución paso a paso"
    1.  **Polinomio Característico:** $p(x) = x^2 - x - 1$.
    2.  **Autovalores:**

    $$\lambda_1 = \frac{1 - \sqrt{5}}{2}, \quad \lambda_2 = \frac{1 + \sqrt{5}}{2}$$

    3.  **Matrices D, P, P⁻¹:** (Proporcionadas en la fuente, ya que $A$ es diagonalizable).
    4.  **Cálculo de $A^n = P D^n P^{-1}$:**

    $$A^n = \frac{1}{2^{n+2}\sqrt{5}} \begin{pmatrix} \dots & \dots \\ -4(1-\sqrt{5})^n + 4(1+\sqrt{5})^n & \dots \end{pmatrix}$$ 
    
    (Se muestra la matriz completa en la fuente).

    5.  **Cálculo de $X_n = A^n X_0$:**
    $X_n = A^n \begin{pmatrix} 0 \\ 1 \end{pmatrix}$. La segunda entrada de $X_n$ corresponde a $F_{n+1}$ (término $n+1$ de Fibonacci).
    6.  **Fórmula de Binet (Resultado Final):**

    $$F_{n+1} = \frac{1}{\sqrt{5}} \left(\frac{1 + \sqrt{5}}{2}\right)^{n+1} - \frac{1}{\sqrt{5}} \left(\frac{1 - \sqrt{5}}{2}\right)^{n+1}$$

#### Ejemplo 3.1/3.3/3.4: Forma Canónica de Jordan

##### Enunciado

$A = \begin{pmatrix} 3 & 1 & -1 & -1 \\ 0 & 2 & 0 & 1 \\ 1 & 1 & 1 & 0 \\ 0 & 0 & 0 & 2 \end{pmatrix}$ ($\lambda=2$ con $a=4$). Calcule la Forma Canónica de Jordan $J$ y la matriz de paso $P$.

!!! info "Explicación teórica"
    Para matrices no diagonalizables (o para cualquier matriz), se calcula $J$ y $P$ utilizando la cadena de subespacios propios generalizados $E_i(\lambda) = \text{Ker}(A - \lambda I)^i$. La dimensión se estabiliza en la multiplicidad algebraica $a$.

???+ details "Solución paso a paso"
    1.  **Dimensiones de Subespacios Generalizados:**
    *   $A - 2I = \begin{pmatrix} 1 & 1 & -1 & -1 \\ 0 & 0 & 0 & 1 \\ 1 & 1 & -1 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}$.  
        $\text{rg}(A - 2I) = 2$. $\dim(E_1(2)) = 4 - 2 = 2$.
    *   $(A - 2I)^2 = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}$.  
        $\text{rg}((A - 2I)^2) = 0$. $\dim(E_2(2)) = 4 - 0 = 4$.
    *   La cadena se estabiliza en $E_2(2) = \mathbb{R}^4$.
    2.  **Diagrama de Jordan:** $\dim(E_2) - \dim(E_1) = 4 - 2 = 2$ vectores en el nivel 2. $\dim(E_1) - \dim(E_0) = 2$ vectores en el nivel 1. Hay 2 líneas de longitud 2,.
    3.  **Forma Canónica de Jordan $J$:** El diagrama produce dos bloques de Jordan de orden 2.
    
    $$J = \begin{pmatrix} 2 & 1 & 0 & 0 \\ 0 & 2 & 0 & 0 \\ 0 & 0 & 2 & 1 \\ 0 & 0 & 0 & 2 \end{pmatrix}$$
    
    4.  **Cálculo de la Matriz de Paso $P$:** (Los vectores se calculan de derecha a izquierda, $v_2, v_4$ en $E_2$ y sus imágenes $v_1, v_3$ en $E_1$,).
    
    $$P = \begin{pmatrix} 1 & 0 & -1 & 0 \\ 0 & 1 & 1 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}$$