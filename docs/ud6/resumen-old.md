Aquí tienes un resumen detallado de la unidad de **Combinatoria**, estructurado por los tipos de agrupaciones, sus definiciones, fórmulas y los ejemplos prácticos disponibles en las fuentes.

---

### 1. Permutaciones
Se utilizan cuando queremos **ordenar todos los elementos** de un conjunto.

*   **Permutación sin repetición:** Consiste en cualquier ordenación posible de un conjunto de $n$ elementos diferentes. En este caso, **el orden de secuenciación importa**.
    *   **Fórmula:** $P_n = n!$
    *   **Ejemplo:** Para un conjunto $A = \{a, b, c, d\}$, el número de ordenaciones posibles es $P_4 = 4! = 24$.
*   **Permutación con repetición:** Se da cuando tenemos $n$ elementos de $r$ tipos diferentes (donde $n_i$ es el número de elementos de cada tipo). Es una reordenación de estos elementos.
    *   **Fórmula:** $P_n^{n_1,n_2,\dots,n_r} = \frac{n!}{n_1! \cdot n_2! \cdot \dots \cdot n_r!}$
    *   **Ejemplo:** Ordenaciones posibles con las letras de la palabra **aabbbc** ($n=6$, con $a=2, b=3, c=1$): $P_6^{2,3,1} = \frac{6!}{2! \cdot 3! \cdot 1!} = 60$.

### 2. Variaciones
Se utilizan cuando queremos elegir y ordenar un **subconjunto** de elementos.

*   **Variación sin repetición:** Consiste en tomar $k$ elementos de un conjunto de $n$ y contar las elecciones posibles. **No pueden elegirse elementos más de una vez** y el **orden de elección importa**.
    *   **Fórmula:** $V_{n,k} = \frac{n!}{(n - k)!}$
    *   **Ejemplo:** Números de dos cifras que pueden formarse con el conjunto $\{1, 2, 3, 4\}$ sin repetir: $V_{4,2} = \frac{4!}{2!} = 12$.
*   **Variación con repetición:** Consiste en tomar $k$ elementos de un conjunto de $n$ donde **puede elegirse más de una vez un mismo elemento** y el **orden de elección importa**.
    *   **Fórmula:** $VR_{n,k} = n^k$
    *   **Ejemplo:** Números de dos cifras con el conjunto $\{1, 2, 3, 4\}$ pudiendo repetir cifras: $VR_{4,2} = 4^2 = 16$.

### 3. Combinaciones
Se utilizan cuando queremos elegir un **subconjunto** de elementos y el **orden no importa**.

*   **Combinación sin repetición:** Consiste en tomar $k$ elementos de un conjunto de $n$. **No se puede elegir más de una vez** un mismo elemento y el **orden de elección no importa**.
    *   **Fórmula:** $C_{n,k} = \binom{n}{k} = \frac{n!}{k! \cdot (n - k)!}$
    *   **Ejemplo:** Grupos de 3 letras que pueden formarse con el conjunto $\{a, b, c, d\}$ sin repetir: $C_{4,3} = \binom{4}{3} = 4$.
*   **Combinación con repetición:** Consiste en tomar $k$ elementos de un conjunto de $n$ donde **puede elegirse más de una vez** un mismo elemento y el **orden de elección no importa**.
    *   **Fórmula:** $CR_{n,k} = \binom{n + k - 1}{k} = \frac{(n + k - 1)!}{k! \cdot (n - 1)!}$
    *   **Ejemplo:** Grupos de 3 letras con el conjunto $\{a, b, c, d\}$ admitiendo repetición: $CR_{4,3} = \binom{4 + 3 - 1}{3} = \binom{6}{3} = 20$.

---

### Resumen visual de apoyo
Para decidir qué fórmula aplicar, puedes seguir esta lógica basada en las fuentes:
1.  **¿Importa el orden?**
    *   **SÍ:** Son Permutaciones (si usas todos los elementos) o Variaciones (si usas solo algunos).
    *   **NO:** Son Combinaciones.
2.  **¿Se pueden repetir los elementos?**
    *   Dependiendo de la respuesta, elegirás la versión "simple" o "con repetición" de la fórmula correspondiente.

Para comprender mejor estos conceptos, imagina que las **Variaciones** son como crear contraseñas (donde "12" es distinto a "21"), mientras que las **Combinaciones** son como elegir ingredientes para una ensalada (donde el orden en que echas el tomate y la lechuga no cambia el resultado final).