---
title: "Ejercicios Paralelos: Fundamentos de Álgebra Lineal"
---

## 5. y 6. Ejercicios Paralelos: Fundamentos de Álgebra Lineal

### 0. Introducción a vectores y Operaciones Básicas

**Ejercicio 0.1. Definición y Operaciones Básicas en $\text{R}^4$**
Dados los vectores $v = (3, -1, 4, 0)$ y $w = (1, 1, -2, 5)$ en $\text{R}^4$.

- (a) Calcule la suma $v + w$.
- (b) Calcule el producto por escalar $2v$.
- (c) Exprese la resta $v - w$ utilizando la suma y el producto por un escalar y calcule el resultado.

??? example "Resultado Ejercicio 0.1"
    A continuación resolvemos cada apartado paso a paso y justificamos los cálculos.

    - Método/idea: las operaciones vectoriales se realizan componente a componente.

    - (a) Suma $v+w$:

        Calculamos la suma componente a componente:

        \(v + w = (3+1,\; -1+1,\; 4+(-2),\; 0+5) = (4,\; 0,\; 2,\; 5).\)

        Conclusión: $v + w = (4, 0, 2, 5)$.

    - (b) Producto por escalar $2v$:

        Multiplicamos cada componente por 2:

        \(2v = 2(3, -1, 4, 0) = (6, -2, 8, 0).\)

        Conclusión: $2v = (6, -2, 8, 0)$.

    - (c) Resta $v - w$ usando suma y escalar:

        Recordamos que $v - w = v + (-1)w$. Calculamos $-1\cdot w = (-1, -1, 2, -5)$ y sumamos con $v$:

        \(v - w = (3, -1, 4, 0) + (-1, -1, 2, -5) = (2, -2, 6, -5).\)

        Conclusión: $v - w = (2, -2, 6, -5)$.

**Ejercicio 0.2. Cálculo de Normas Vectoriales**
Dado el vector $u = (3, 0, -4) \in \text{R}^3$, calcule las siguientes normas:

- (a) Norma euclídea ($\|u\|_2$).
- (b) Norma 1 ($\|u\|_1$).
- (c) Norma del máximo ($\|u\|_\infty$).

??? example "Resultado Ejercicio 0.2"
    Resolución paso a paso y explicación de las fórmulas usadas.

    - Método/idea: usamos las definiciones de cada norma.

    - (a) Norma euclídea ($\|u\|_2$):

        Definición: $\|u\|_2 = \sqrt{u_1^2 + u_2^2 + u_3^2}$. Sustituimos:

        \(\|u\|_2 = \sqrt{3^2 + 0^2 + (-4)^2} = \sqrt{9 + 0 + 16} = \sqrt{25} = 5.\)

        Conclusión: $\|u\|_2 = 5$.

    - (b) Norma 1 ($\|u\|_1$):

        Definición: $\|u\|_1 = |u_1| + |u_2| + |u_3|$. Entonces

        \(\|u\|_1 = |3| + |0| + |-4| = 3 + 0 + 4 = 7.\)

        Conclusión: $\|u\|_1 = 7$.

    - (c) Norma del máximo ($\|u\|_\infty$):

        Definición: $\|u\|_\infty = \max(|u_1|,|u_2|,|u_3|)$, luego

        \(\|u\|_\infty = \max(3,0,4) = 4.\)

        Conclusión: $\|u\|_\infty = 4$.

**Ejercicio 0.3. Producto Escalar y Ortogonalidad**
Dados los vectores $a = (5, -3, 2)$ y $b = (1, 4, -1)$ en $\text{R}^3$.

- (a) Calcule el producto escalar $a \cdot b$.
- (b) Determine si los vectores $a$ y $b$ son ortogonales.

??? example "Resultado Ejercicio 0.3"
    Resolución y justificación.

    - Idea: el producto escalar en $\text{R}^3$ se calcula suma de productos componente a componente; dos vectores son ortogonales si su producto escalar es cero.

    - (a) Producto escalar:

        \(a \cdot b = 5\cdot 1 + (-3)\cdot 4 + 2\cdot(-1) = 5 - 12 - 2 = -9.\)

        Por tanto $a \cdot b = -9$.

    - (b) Como $a \cdot b \neq 0$, los vectores NO son ortogonales.

        Comentario: si el producto hubiese sido cero, habríamos concluido ortogonalidad.

**Ejercicio 0.4. Proyección y Ortogonalidad de Vectores**
Sean $u = (4, 1, 0)$ y $v = (1, 1, 1)$ en $\text{R}^3$.

- (a) Calcule la proyección de $u$ sobre $v$ ($\text{Proj}_v(u)$).
- (b) Calcule el vector ortogonal de $u$ sobre $v$ ($\text{Ort}_v(u)$).
- (c) Verifique que $\text{Ort}_v(u)$ es ortogonal a $v$.

??? example "Resultado Ejercicio 0.4"
    Desarrollo detallado y comprobaciones.

    - Idea/método: usamos la fórmula de la proyección ortogonal sobre una recta generada por $v$:

        \(\text{Proj}_v(u) = \dfrac{u \cdot v}{v \cdot v}\, v.\)

    - (a) Cálculo de la proyección:

        Primero calculamos los productos escalares necesarios:

        \(u \cdot v = 4\cdot 1 + 1\cdot 1 + 0\cdot 1 = 4 + 1 + 0 = 5,\)

        \(v \cdot v = 1^2 + 1^2 + 1^2 = 3.\)

        Entonces

        \(\text{Proj}_v(u) = \dfrac{5}{3}\, (1,1,1) = \left(\dfrac{5}{3},\dfrac{5}{3},\dfrac{5}{3}\right).\)

    - (b) Vector ortogonal (residuo):

        Definición: $\text{Ort}_v(u)=u-\text{Proj}_v(u)$. Sustituimos:

        \(\text{Ort}_v(u)=\left(4,1,0\right)-\left(\dfrac{5}{3},\dfrac{5}{3},\dfrac{5}{3}\right)=\left(\dfrac{7}{3}, -\dfrac{2}{3}, -\dfrac{5}{3}\right).\)

    - (c) Verificación de ortogonalidad:

        Comprobamos que $\text{Ort}_v(u)\cdot v = 0$:

        \(\left(\dfrac{7}{3}, -\dfrac{2}{3}, -\dfrac{5}{3}\right)\cdot(1,1,1)=\dfrac{7}{3}-\dfrac{2}{3}-\dfrac{5}{3}=0.\)

        Conclusión: $\text{Ort}_v(u)$ es ortogonal a $v$.

    - Comentario final: la proyección mínima (en norma euclídea) de $u$ sobre la recta generada por $v$ se obtiene con la fórmula usada; el residuo es perpendicular a la recta.

---

### 1. Espacios vectoriales y bases

**Ejercicio 1.1. Verificación de Espacios Vectoriales**
Sea $M_{2 \times 2}(\text{R})$ el conjunto de matrices reales de orden $2 \times 2$. Compruebe que $(M_{2 \times 2}(\text{R}), +, \cdot)$ es un espacio vectorial sobre $\text{R}$ con la suma y producto por un escalar usuales. Indique una base canónica para este espacio y determine su dimensión.

??? example "Resultado Ejercicio 1.1"
    Desarrollo y justificación.

    - Idea: para demostrar que un conjunto con operaciones es un espacio vectorial basta verificar que cumple los axiomas (cierre bajo suma y producto por escalar, existencia de neutro y opuesto, asociatividad, distributividad, etc.). En el caso de matrices, las operaciones son las habituales elemento a elemento, por tanto las propiedades resultan de las propiedades de los reales.

    - Comprobaciones clave:

        • Cierre bajo suma y producto por escalar: la suma de dos matrices 2×2 y el producto por un escalar producen matrices 2×2.

        • Existencia de neutro aditivo: la matriz nula $0_{2\times2}$.

        • Existencia de opuesto: para $A$ la matriz $-A$.

        • Leyes distributivas, asociativas y conmutativas: heredadas de las operaciones en $\mathbb{R}$ aplicadas componente a componente.

    - Base canónica: las cuatro matrices que tienen un 1 en una entrada y 0 en las demás:

        $E_{11}=\begin{pmatrix}1&0\\0&0\end{pmatrix},\; E_{12}=\begin{pmatrix}0&1\\0&0\end{pmatrix},\; E_{21}=\begin{pmatrix}0&0\\1&0\end{pmatrix},\; E_{22}=\begin{pmatrix}0&0\\0&1\end{pmatrix}.$

        Cualquier matriz $A=\begin{pmatrix}a&b\\c&d\end{pmatrix}$ se escribe como $aE_{11}+bE_{12}+cE_{21}+dE_{22}$.

    - Dimensión: $\dim(M_{2\times2}(\mathbb{R}))=4$.

**Ejercicio 1.2. Dependencia e Independencia Lineal en $\text{R}^n$**
Analice la dependencia o independencia lineal de los siguientes conjuntos de vectores:

- (a) $S_1 = \{(1, 2), (-2, -4)\}$ en $\text{R}^2$.
- (b) $S_2 = \{(1, 0, 0, 0), (1, 1, 0, 0), (1, 1, 1, 0)\}$ en $\text{R}^4$.
- (c) $S_3 = \{(2, 1, -1), (4, 3, 2), (1, 0, 0), (-1, -1, -1)\}$ en $\text{R}^3$.

??? example "Resultado Ejercicio 1.2"
    Estrategia: comprobar si existe una combinación lineal no trivial que anule los vectores (o utilizar rango de la matriz formada por las columnas/filas).

    - (a) $S_1 = \{(1,2),(-2,-4)\}$: Observamos que $(-2,-4) = -2(1,2)$, por tanto hay dependencia lineal. Conclusión: L.D.

    - (b) $S_2 = \{(1,0,0,0),(1,1,0,0),(1,1,1,0)\}$: Cada vector añade una componente nueva (forma triangular). Si montamos la matriz con estas columnas obtendremos pivotes en las primeras tres filas, por tanto son linealmente independientes. Conclusión: L.I.

    - (c) $S_3$ en $\mathbb{R}^3$: hay 4 vectores en un espacio de dimensión 3, por el teorema de dimensión necesariamente son linealmente dependientes. Conclusión: L.D.

**Ejercicio 1.3. Base, Generadores y Dimensión**
Sea $S = \{(1, 2, 1), (2, 4, 2), (0, 1, 3), (1, 1, -2)\} \subset \text{R}^3$. Obtenga una base del subespacio generado $U = \text{span}(S)$ y determine su dimensión.

??? example "Resultado Ejercicio 1.3"
    Procedimiento paso a paso.

    - Observación: $(2,4,2) = 2(1,2,1)$, por tanto el segundo vector es redundante.

    - Comprobamos si los vectores $v_1=(1,2,1)$ y $v_3=(0,1,3)$ son independientes: una combinación $a v_1 + b v_3 = 0$ conduce al sistema

        \(a + 0 = 0,\; 2a + b = 0,\; a + 3b = 0.\)

        De la primera ecuación $a=0$, luego $b=0$. Por tanto son L.I.

    - Verificamos que $v_4=(1,1,-2)$ se expresa en la combinación de $v_1$ y $v_3$: buscamos $\alpha,\beta$ tales que $\alpha v_1 + \beta v_3 = v_4$. Resolviendo

        \(\alpha = 1,\; 2\alpha + \beta = 1 \Rightarrow \beta = -1,\; \alpha + 3\beta = -2\) que se cumple con $\alpha=1,\beta=-1$.

    - Conclusión: una base para $U$ es $\{(1,2,1), (0,1,3)\}$ y $\dim(U)=2$.

**Ejercicio 1.4. Dependencia Lineal en Espacios de Polinomios**
En $P_2$ (polinomios de grado a lo sumo 2), estudie si el conjunto $\{1 + x^2, x, x^2 - 2x\}$ es linealmente independiente.

??? example "Resultado Ejercicio 1.4"
    Desarrollo y justificación.

    - Planteamiento: consideramos una combinación lineal

        \(a(1 + x^2) + b x + c(x^2 - 2x) \equiv 0\) (polinomio nulo para todo $x$).

    - Igualando coeficientes por potencias de $x$:

        • término constante: $a = 0$.

        • coeficiente de $x$: $b - 2c = 0$.

        • coeficiente de $x^2$: $a + c = 0$ ⇒ con $a=0$ se tiene $c=0$.

        Entonces $b=0$.

    - Conclusión: $a=b=c=0$ es la única solución ⇒ los polinomios son linealmente independientes (L.I.).

---

### 2. Coordenadas y cambio de base

**Ejercicio 2.1. Coordenadas de un Vector**
En $\text{R}^2$, sea la base $B = \{u_1 = (1, -1), u_2 = (2, 0)\}$. Exprese el vector $x = (5, 1)$ en coordenadas respecto a la base $B$.

??? example "Resultado Ejercicio 2.1"
    Procedimiento (resolución de un sistema lineal).

    - Buscamos escalares $\alpha,\beta$ tales que $\alpha u_1 + \beta u_2 = x$.

        Es decir:

        \(\alpha(1,-1) + \beta(2,0) = (5,1)\) lo que da el sistema

        \(\alpha + 2\beta = 5,\; -\alpha = 1.\)

    - De la segunda ecuación $\alpha = -1$. Sustituimos en la primera: $-1 + 2\beta = 5 \Rightarrow 2\beta = 6 \Rightarrow \beta = 3$.

    - Conclusión: $[x]_B = (-1,\; 3)^T$.

**Ejercicio 2.2. Matriz de Cambio de Base**
En $\text{R}^4$, sean dos bases:
$B_1 = \{(1, 0, 0, 0), (0, 1, 0, 0), (0, 0, 1, 0), (0, 0, 0, 1)\}$ (canónica $C$).
$B_2 = \{(1, 1, 0, 0), (0, 1, 1, 0), (0, 0, 1, 1), (1, 0, 0, 1)\}$.

- (a) Calcule la matriz de paso $P$ de $B_2$ a $B_1$ ($P_{B2 \to B1}$).
- (b) Calcule la matriz de paso $Q$ de $B_1$ a $B_2$ ($P_{B1 \to B2}$).
- (c) Si $v$ tiene coordenadas $[v]_{B2} = (1, 2, -1, 0)^T$, transforme estas coordenadas a la base $B_1$.

??? example "Resultado Ejercicio 2.2"
    Solución y procedimiento.

    - (a) Como $B_1$ es la base canónica, la matriz de paso $P_{B2 \to B1}$ se obtiene poniendo como columnas las coordenadas de los vectores de $B_2$ en la base canónica (es decir, las propias tuplas):

        \(P = \begin{pmatrix}
        1 & 0 & 0 & 1\\
        1 & 1 & 0 & 0\\
        0 & 1 & 1 & 0\\
        0 & 0 & 1 & 1
        \end{pmatrix}.\)

    - (b) La matriz inversa $Q = P^{-1}$ es la matriz de paso de $B_1$ a $B_2$.

    - (c) Para pasar coordenadas de $B_2$ a la base canónica (B1) multiplicamos $P[ v ]_{B2}$:

        \([v]_{B1} = P\begin{pmatrix}1\\2\\-1\\0\end{pmatrix} = 1\cdot v_1 + 2\cdot v_2 -1\cdot v_3 = (1,1,0,0) + (0,2,2,0) + (0,0,-1,-1) = (1,3,1,-1).\)

        Conclusión: $[v]_{B1} = (1,3,1,-1)^T$.

---

### 3. Subespacios, ecuaciones paramétricas y cartesianas

**Ejercicio 3.1. Verificación de Subespacios**
Determine si los siguientes subconjuntos de $\text{R}^3$ son subespacios vectoriales:

- (a) $U = \{(x, y, z) : x = 2y, z = 3x\}$.
- (b) $W = \{(x, y, z) : x + y + z = 5\}$.

??? example "Resultado Ejercicio 3.1"
    Resolución y criterios.

    - (a) Para $U = \{(x,y,z): x = 2y, z = 3x\}$ podemos parametrizar con $y=t$:

        \(x=2t,\; y=t,\; z=3(2t)=6t\) ⇒ $U = \{t(2,1,6): t\in\mathbb{R}\}$.

        Como contiene el vector nulo ($t=0$) y está cerrado bajo suma y escalares (proyección de una dimensión), es subespacio vectorial.

    - (b) $W$ no contiene el origen (por ejemplo $(0,0,0)$ no satisface $0+0+0=5$), por tanto no es subespacio.

**Ejercicio 3.2. Base y Dimensión a partir de un Sistema de Generadores**
En $\text{R}^5$, sea $U = \text{span}\{(1, 1, 0, 0, 0), (0, 1, 1, 0, 0), (1, 0, -1, 0, 0)\}$.
Halle una base de $U$ y determine su dimensión.

??? example "Resultado Ejercicio 3.2"
    Idea: calcular rango de las generadoras (por eliminación o búsqueda de combinaciones lineales).

    - Observamos que $-v_1 + v_2 + v_3 = 0$ (comprobación rápida):

        $- (1,1,0,0,0) + (0,1,1,0,0) + (1,0,-1,0,0) = (0,0,0,0,0)$,

        por tanto son linealmente dependientes y rango $=2$.

    - Tomando por ejemplo $v_1=(1,1,0,0,0)$ y $v_2=(0,1,1,0,0)$ como generadores independientes obtenemos una base:

        $\{(1,1,0,0,0),\; (0,1,1,0,0)\}$ y $\dim(U)=2$.

**Ejercicio 3.3. Transformación Paramétricas a Cartesianas**
En $\text{R}^3$, el subespacio $U$ está dado por las ecuaciones paramétricas:

$$
\begin{cases} x = s + 2t \\ y = s - t \\ z = 3s \end{cases} \quad (s, t \in \text{R})
$$

Obtenga la ecuación cartesiana (o ecuaciones) de $U$.

??? example "Resultado Ejercicio 3.3"
    Eliminación de parámetros (procedimiento).

    - Escribimos el vector en función de $s,t$:

        \((x,y,z) = s(1,1,3) + t(2,-1,0).\)

    - Eliminamos $s,t$: de la tercera componente $z=3s \Rightarrow s = z/3$.

        Sustituimos en la primera componente: $x = s + 2t = z/3 + 2t$ ⇒ $2t = x - z/3$ ⇒ $t = (x - z/3)/2$.

        Usamos la segunda componente: $y = s - t = z/3 - t$. Sustituyendo $t$ se llega a la relación

        \(x + 2y - z = 0.\)

    - Conclusión: la ecuación cartesiana de $U$ es $x + 2y - z = 0$.

**Ejercicio 3.4. Transformación Cartesianas a Paramétricas**
En $\text{R}^4$, sea $W$ el subespacio definido por las ecuaciones cartesianas:

$$
\begin{cases} x_1 - x_2 + x_3 = 0 \\ 2x_2 - x_4 = 0 \end{cases}
$$

Obtenga las ecuaciones paramétricas de $W$ y determine una base para $W$.

??? example "Resultado Ejercicio 3.4"
    Procedimiento de resolución.

    - De las ecuaciones:

        \(x_1 - x_2 + x_3 = 0,\; 2x_2 - x_4 = 0.\)

    - Tomamos parámetros $s=x_2$, $t=x_3$. Entonces

        \(x_1 = x_2 - x_3 = s - t,\; x_4 = 2x_2 = 2s.\)

    - Parametrización: \((x_1,x_2,x_3,x_4) = s(1,1,0,2) + t(-1,0,1,0).\)

    - Base para $W$: $\{(1,1,0,2),\; (-1,0,1,0)\}$ y $\dim(W)=2$.

**Ejercicio 3.5. Intersección de Subespacios**
En $\text{R}^3$, sean
$U = \{(x, y, z) : x - 2y = 0\}$ y $W = \{(x, y, z) : y + z = 0\}$.
Halle una base y la dimensión de $U \cap W$.

??? example "Resultado Ejercicio 3.5"
    Resolución mediante parametrización.

    - Parametrizamos $U$: $x = 2t, y=t, z$ libre pero para pertenecer a la intersección debe satisfacer la ecuación de $W$.

    - Imponemos $y + z = 0$ ⇒ $z = -y = -t$. Entonces los vectores comunes son de la forma

        $(2t, t, -t) = t(2,1,-1)$.

    - Conclusión: $U \cap W = \text{span}\{(2,1,-1)\}$ y $\dim(U \cap W)=1$.

**Ejercicio 3.6. Suma de Subespacios y Fórmula de las Dimensiones**
En $\text{R}^4$, sean $U = \text{span}\{(1, 0, 0, 1), (0, 1, 0, 1)\}$ y $W = \text{span}\{(1, 1, 0, 2), (0, 0, 1, 0)\}$.
Calcule $\text{dim}(U)$, $\text{dim}(W)$, $\text{dim}(U \cap W)$ y $\text{dim}(U + W)$.

??? example "Resultado Ejercicio 3.6"
    Procedimiento.

    - Calculamos dimensiones individuales: $\dim(U)=2$ y $\dim(W)=2$ (cada conjunto está generado por dos vectores, y se verifica independencia).

    - Para la intersección, buscamos $a,b$ y $c,d$ tales que

        $a(1,0,0,1)+b(0,1,0,1)=c(1,1,0,2)+d(0,0,1,0)$.

        Igualando coordenadas y resolviendo se obtiene que la intersección está generada por $(1,1,0,2)$; por tanto $\dim(U\cap W)=1$.

    - Finalmente $\dim(U+W)=\dim(U)+\dim(W)-\dim(U\cap W)=2+2-1=3$.

---

### 4. Espacio cociente

**Ejercicio 4.1. Base y Dimensión del Espacio Cociente**
En $\text{R}^4$, sea $U$ el subespacio definido por las ecuaciones cartesianas $x_1 = 0$ y $x_2 = 0$.
Describa una base de $\text{R}^4/U$ y determine su dimensión.

??? example "Resultado Ejercicio 4.1"
    Desarrollo.

    - El subespacio $U$ está formado por los vectores cuyo primer y segundo componente son cero: $U=\{(0,0,x_3,x_4)\}$ y tiene dimensión 2.

    - El espacio cociente $\mathbb{R}^4/U$ tiene dimensión $4-\dim(U)=2$.

    - Una base natural del cociente la forman las clases laterales (cosets) de los vectores canónicos que distinguen las primeras dos coordenadas:

        $[e_1]_U = [(1,0,0,0)]_U,\; [e_2]_U = [(0,1,0,0)]_U$.

    - Conclusión: $\{[ (1,0,0,0) ]_U, [ (0,1,0,0) ]_U\}$ es una base de $\mathbb{R}^4/U$ y $\dim(\mathbb{R}^4/U)=2$.

---

### 5. Problemas integradores

**Ejercicio 5.1. Coordenadas, Cambio de Base y Ecuaciones Cartesianas**
En $\text{R}^3$, considere las bases:
$B_1 = \{(1, 0, 0), (1, 1, 0), (1, 1, 1)\}$, $B_2 = \{(0, 1, 1), (0, 1, 0), (1, 0, 0)\}$.

- (a) Calcule la matriz de paso $M$ de $B_2$ a $B_1$.
- (b) Sea $x = (3, 2, 1)$. Halle $[x]_{B2}$ y luego $[x]_{B1}$ utilizando la matriz $M$.
- (c) Defina $W = \text{span}\{(1, 1, 0), (1, 1, 1)\}$ y obtenga las ecuaciones cartesianas de $W$.

??? example "Resultado Ejercicio 5.1"
    Soluciones y pasos.

    - (a) Para obtener la matriz de paso de $B_2$ a $B_1$ expresamos cada vector de $B_2$ en coordenadas de $B_1$. Si en coordenadas canónicas escribimos $v=(x,y,z)$, las coordenadas en $B_1$ se obtienen resolviendo

        \(v = \alpha(1,0,0)+\beta(1,1,0)+\gamma(1,1,1)\)

        lo que da las fórmulas (resolviendo la triangularidad):

        \((\alpha,\beta,\gamma) = (x-y,\; y-z,\; z).\)

        Aplicando la fórmula a los vectores de $B_2$:

        • $(0,1,1) \mapsto (-1,0,1)$,
        • $(0,1,0) \mapsto (-1,1,0)$,
        • $(1,0,0) \mapsto (1,0,0)$.

        Por tanto

        \(M = \begin{pmatrix} -1 & -1 & 1 \\ 0 & 1 & 0 \\ 1 & 0 & 0 \end{pmatrix}.\)

    - (b) Para $x=(3,2,1)$ resolvemos primero en $B_2$ (expresar $x$ como combinación de los vectores de $B_2$):

        Resolvemos $a(0,1,1)+b(0,1,0)+c(1,0,0)=(3,2,1)$, obteniendo $c=3$, $a=1$, $b=1$. Entonces $[x]_{B2}=(1,1,3)^T$.

        Ahora $[x]_{B1} = M\,[x]_{B2} = \begin{pmatrix}1\\1\\1\end{pmatrix}$.

    - (c) $W=\text{span}\{(1,1,0),(1,1,1)\}$ tiene como vector normal $(0,0,1)-(0,0,0)$? Más directo: los dos generadores indican que la restricción es $x-y=0$ (ambos satisfacen $x-y=0$). Por tanto la ecuación cartesiana de $W$ es $x-y=0$.

**Ejercicio 5.2. Intersección, Suma y Dimensión**
En $\text{R}^4$, sean
$U = \{x \in \text{R}^4 : x_1 - x_4 = 0, x_2 + x_3 = 0\}$, $W = \{x \in \text{R}^4 : x_1 + x_2 + x_3 = 0, x_4 = 0\}$.

- (a) Halle una base y la dimensión de $U \cap W$.
- (b) Determine $\text{dim}(U + W)$ mediante la fórmula de las dimensiones.

??? example "Resultado Ejercicio 5.2"
    Desarrollo.

    - Parametrizamos $U$: de $x_1=x_4$ y $x_2=-x_3$, tomando $x_3=s$, $x_4=t$ obtenemos

        $U = \{(t,-s,s,t) : s,t\in\mathbb{R}\} = \text{span}\{(0,-1,1,0),(1,0,0,1)\}$.

    - Parametrizamos $W$: con $x_4=0$, y tomando $x_2=u$, $x_3=v$ se tiene $x_1 = -u - v$, luego

        $W = \{(-u-v, u, v, 0): u,v\in\mathbb{R}\} = \text{span}\{(-1,1,0,0),(-1,0,1,0)\}$.

    - Intersección $U\cap W$: imponemos en $U$ la condición $x_4=0 \Rightarrow t=0$, queda $(0,-s,s,0)$ que satisface la ecuación $x_1+x_2+x_3=0$. Por tanto

        $U\cap W = \text{span}\{(0,-1,1,0)\}$ y $\dim(U\cap W)=1$.

    - Finalmente $\dim(U+W)=\dim(U)+\dim(W)-\dim(U\cap W)=2+2-1=3$.

**Ejercicio 5.3. Sistema de Generadores y Completar Base**
Sea $S = \{u_1, u_2, u_3\} \subset \text{R}^5$ con
$u_1 = (1, 0, 1, 0, 0)$, $u_2 = (0, 1, 0, 1, 1)$, $u_3 = (2, -1, 2, -1, -1)$.
Determine si $S$ es L.I. usando el rango de la matriz con filas $u_i$. Si no es L.I., obtenga una base de $\text{span}(S)$.

??? example "Resultado Ejercicio 5.3"
    Resolución rápida por combinación lineal.

    - Observamos que $u_3 = 2u_1 - u_2$:

        $2(1,0,1,0,0) - (0,1,0,1,1) = (2,-1,2,-1,-1) = u_3$.

    - Por tanto $S$ es linealmente dependiente y $\text{span}(S)=\text{span}\{u_1,u_2\}$. Una base es $\{u_1,u_2\}$ y el rango es 2.

---

### 6. Ejercicios adicionales (Transformaciones y Ortogonalidad)

**Ejercicio 6.1. Rango y Núcleo de una Matriz**
Sea la matriz $A = \begin{pmatrix} 1 & 1 & 0 & 1 \\ 0 & 1 & 1 & 1 \\ 1 & 0 & -1 & 0 \end{pmatrix}$.
Determine $\text{rg}(A)$ y una base del núcleo $\text{Ker}(A)$. Verifique el teorema rango-nulidad.

??? example "Resultado Ejercicio 6.1"
    Cálculo por reducción e identificación de parámetros.

    - Realizando eliminación por filas se comprueba que el rango de $A$ es 2 (dos filas independientes).

    - Para $x=(x_1,x_2,x_3,x_4)^T$ resolvemos $Ax=0$; de las ecuaciones obtenemos

        $x_1 = -x_2 - x_4,\; x_3 = -x_2 - x_4$ con parámetros $x_2=s, x_4=t$.

    - Por tanto

        $x = s(-1,1,-1,0) + t(-1,0,-1,1)$,

        y una base del núcleo es $\{(-1,1,-1,0),\; (-1,0,-1,1)\}$ con $\dim(\ker A)=2$.

    - Verificación rango-nulidad: $\text{rg}(A)+\dim(\ker A)=2+2=4$ que es el número de columnas.

**Ejercicio 6.2. Subespacio Ortogonal**
Sea $U = \{(x, y, z) \in \text{R}^3 : x - y + z = 0\}$. Determine una base de $U^\perp$ (el complemento ortogonal de $U$).

??? example "Resultado Ejercicio 6.2"
    Observación: la ecuación $x - y + z = 0$ define un plano cuyo vector normal es $n=(1,-1,1)$.

    - Por definición $U^\perp = \text{span}\{(1,-1,1)\}$.

    - Conclusión: base de $U^\perp$ es $\{(1,-1,1)\}$.

**Ejercicio 6.3. Proyección Ortogonal**
Sea $u = (1, 2, 2) \in \text{R}^3$ y $v = (3, 4, 5)$. Calcule la proyección ortogonal de $u$ sobre la recta generada por $v$.

??? example "Resultado Ejercicio 6.3"
    Uso de la fórmula de proyección sobre una recta:

    \(\text{Proj}_v(u) = \dfrac{u\cdot v}{v\cdot v}\, v.\)

    - Calculamos $u\cdot v = 1\cdot3 + 2\cdot4 + 2\cdot5 = 21$, y $v\cdot v = 3^2+4^2+5^2 = 50$.

    - Por tanto

        \(\text{Proj}_v(u) = \dfrac{21}{50}(3,4,5) = \left(\dfrac{63}{50},\dfrac{84}{50},\dfrac{105}{50}\right)\approx (1.26,1.68,2.10).\)

**Ejercicio 6.4. Transformación Lineal y Teorema Rango-Nulidad**
Sea $T: \text{R}^3 \to \text{R}^3$ definida por $T(x, y, z) = (x + y, 2x + 2y, 0)$.
Determine $\text{Im}(T)$, $\text{Ker}(T)$ y verifique el teorema rango-nulidad.

??? example "Resultado Ejercicio 6.4"
    Análisis.

    - Imagen: las imágenes tienen la forma $(x+y,2(x+y),0) = (x+y)(1,2,0)$, por tanto

        $\text{Im}(T)=\text{span}\{(1,2,0)\}$ y $\dim(\text{Im}(T))=1$.

    - Núcleo: resolvemos $x+y=0$ y la tercera componente es siempre 0, por tanto $x=-y$ y $z$ libre. Entonces

        $\ker(T)=\text{span}\{(1,-1,0),(0,0,1)\}$ y $\dim(\ker(T))=2$.

    - Verificación: $1+2=3$ que coincide con la dimensión del dominio (3).

**Ejercicio 6.5. Matriz de una Transformación en Bases No Canónicas**
Sea $T: \text{R}^2 \to \text{R}^2$ definida por $T(x, y) = (x - y, x + y)$.

- (a) Halle la matriz de $T$ en la base canónica $C$.
- (b) Sea $B = \{(1, 0), (1, 1)\}$. Obtenga la matriz de $T$ en la base $B$ ($[T]_B$).
- (c) Compruebe que ambas están relacionadas por $[T]_B = P^{-1}[T]_C P$, donde $P$ es la matriz de cambio de $B$ a $C$.

??? example "Resultado Ejercicio 6.5"
    Cálculos y comprobación.

    - (a) En la base canónica la matriz es

        \([T]_C = \begin{pmatrix}1 & -1 \\ 1 & 1\end{pmatrix}\)

        porque $T(e_1)=(1,1)$ y $T(e_2)=(-1,1)$ son las columnas.

    - (b) La matriz de cambio $P$ que lleva coordenadas de $B$ a la canónica tiene como columnas los vectores de $B$ en coordenadas canónicas:

        \(P = \begin{pmatrix}1 & 1 \\ 0 & 1\end{pmatrix},\; P^{-1} = \begin{pmatrix}1 & -1 \\ 0 & 1\end{pmatrix}.\)

        Calculamos $[T]_B = P^{-1}[T]_C P$ y obtenemos

        \([T]_B = \begin{pmatrix}0 & -2 \\ 1 & 2\end{pmatrix}\)

        (comprobación: $[T]_B$ envía $[e_1]_B$ y $[e_2]_B$ a las coordenadas apropiadas en $B$).

    - (c) La relación indicada se cumple por construcción (ver multiplicaciones mostradas).

---
