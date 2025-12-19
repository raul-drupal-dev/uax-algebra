A continuación, presento un resumen detallado de los temas, términos y procedimientos clave de la **Unidad Didáctica 4**, apoyado en los ejemplos de las fuentes.

---

### Tema 1: Definiciones Básicas

Este tema establece los conceptos necesarios para determinar si una matriz puede simplificarse.

*   **Semejanza de matrices:** Dos matrices cuadradas $A$ y $C$ son semejantes si existe una matriz invertible $P$ tal que $C = P^{-1}AP$. El objetivo principal es encontrar una matriz diagonal $D$ que sea semejante a la matriz dada $A$.
*   **Autovalores y autovectores:**
    *   **Autovalor ($\lambda$):** Escalar tal que existe un vector no nulo $u$ que cumple $f(u) = \lambda u$.
    *   **Autovector ($u$):** Vector asociado al autovalor $\lambda$.
    *   **Subespacio propio ($V_\lambda$):** Conjunto de todos los autovectores asociados a $\lambda$. Se define como $V_\lambda = \text{Ker}(f - \lambda Id)$.
*   **Polinomio característico:** Se define como $p_A(x) = \det(A - xI)$. Los autovalores son las raíces de este polinomio. Un dato relevante es que la **traza** (suma de elementos de la diagonal) y el determinante de matrices semejantes son siempre iguales, lo que simplifica el polinomio para matrices de $2 \times 2$ a $p(x) = x^2 - \text{tr}(A)x + \det(A)$.
*   **Multiplicidades:**
    *   **Algebraica ($a_i$):** El número de veces que un autovalor aparece como raíz del polinomio característico.
    *   **Geométrica ($d_i$):** La dimensión del subespacio propio $V_{\lambda_i}$. Se calcula como $d_i = n - \text{rg}(A - \lambda_i I)$.
    *   **Relación:** Siempre se cumple que $1 \le d_i \le a_i$.

> **Ejemplo de práctica (1.2 y 1.6):** En una matriz $A$ con autovalor $2$, se calcula su multiplicidad geométrica restando el rango de $(A - 2I)$ a la dimensión del espacio. Si $A$ es de $3 \times 3$ y $\text{rg}(A - 2I) = 2$, entonces $d_1 = 3 - 2 = 1$.

---

### Tema 2: Diagonalización y Forma de Jordan

Aquí se analiza cuándo es posible obtener una matriz diagonal y qué hacer cuando no lo es.

*   **Condiciones de diagonalización:** Un endomorfismo es diagonalizable si y solo si:
    1.  Todas las raíces del polinomio característico pertenecen al cuerpo $K$ (ej. son números reales si trabajamos en $\mathbb{R}$).
    2.  Para cada autovalor, la multiplicidad geométrica es igual a la algebraica ($d_i = a_i$).
*   **Teorema Espectral:** Toda matriz real **simétrica** ($A^T = A$) es siempre diagonalizable, por lo que no es necesario comprobar las multiplicidades geométricas.
*   **Matrices no diagonalizables:** Ocurre si existe algún autovalor donde $d_i < a_i$. En estos casos, se busca la **forma de Jordan**, que es la representación más sencilla posible después de la diagonal.
*   **Bloques de Jordan:** Son matrices cuadradas con el autovalor en la diagonal, unos justo encima de ella y ceros en el resto. Una **matriz de Jordan** es una matriz diagonal por bloques compuesta por estos bloques de Jordan.

> **Ejemplo de práctica (2.1):** Para diagonalizar $A = \begin{pmatrix} 3 & 1 & 1 \\ 1 & 3 & 1 \\ 1 & 1 & 3 \end{pmatrix}$, se halla su polinomio $p(x) = -(x-2)^2(x-5)$. Al ser simétrica, sabemos que es diagonalizable con autovalores $2$ (doble) y $5$. La matriz diagonal es $D = \begin{pmatrix} 2 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 5 \end{pmatrix}$.

---

### Tema 3: Forma Canónica de Jordan

Este tema profundiza en el cálculo de la forma de Jordan para matrices que no se pueden diagonalizar.

*   **Subespacios propios generalizados ($E_i(\lambda)$):** Se definen como $E_i(\lambda) = \text{Ker}(f - \lambda Id)^i$. Forman una cadena ascendente $E_1 \subseteq E_2 \subseteq \dots$ que se estabiliza en un subespacio máximo $M(\lambda)$ cuya dimensión es igual a la multiplicidad algebraica $a$.
*   **Diagramas de Jordan:** Herramienta visual para calcular la base de Jordan. Cada línea del diagrama representa un bloque de Jordan, y su longitud indica el orden del bloque.
*   **Aplicaciones prácticas:**
    *   **Cálculo de potencias ($A^k$):** Si $A = PJP^{-1}$, entonces $A^k = PJ^kP^{-1}$. Es mucho más fácil elevar una matriz de Jordan o diagonal que la matriz original.
    *   **Sucesiones recursivas:** Permite encontrar fórmulas generales para sucesiones como la de **Fibonacci**. Utilizando la diagonalización de la matriz $A = \begin{pmatrix} 0 & 1 \\ 1 & 1 \end{pmatrix}$, se puede derivar la fórmula que utiliza el número áureo $\phi$.

> **Ejemplo de práctica (3.1 y 3.3):** Dada una matriz de $4 \times 4$ con un único autovalor $2$ y $a=4$, si $\dim(E_1) = 2$ y $\dim(E_2) = 4$, el diagrama tendrá dos columnas y dos filas. Esto indica que la forma de Jordan $J$ tendrá dos bloques de orden 2: $\begin{pmatrix} 2 & 1 & 0 & 0 \\ 0 & 2 & 0 & 0 \\ 0 & 0 & 2 & 1 \\ 0 & 0 & 0 & 2 \end{pmatrix}$.