---
title: "UD6 — Examen de Formulación (Combinatoria)"
---

Duración estimada: 30 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). El objetivo es asociar cada fórmula con el concepto correcto.

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- Algunas preguntas son "preguntas trampa": una opción parece plausible pero corresponde a otro concepto. Lee con cuidado.
- En las preguntas de fórmulas se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la explicación para estudiar.

---

<quiz>
¿Cuál es la fórmula para contar el número de permutaciones de $n$ elementos distintos?

- [ ] $n^k$
- [x] $n!$
- [ ] $\dfrac{n!}{(n-k)!}$
- [ ] $\dfrac{n!}{k!(n-k)!}$

Explicación: Las permutaciones de todos los elementos usan factorial simple. Las otras son variaciones, variaciones con repetición y combinaciones.
</quiz>

<quiz>
¿Cuál es la fórmula para contar ordenaciones de $n$ elementos donde hay repeticiones internas (ej. anagramas de "aabbbc")?

- [ ] $\dfrac{n!}{(n-k)!}$
- [x] $\dfrac{n!}{n_1! \cdot n_2! \cdots n_r!}$
- [ ] $n!$
- [ ] ${n+k-1 \choose k}$

Explicación: La permutación con repetición divide el factorial por los factoriales de las frecuencias. Las otras opciones corresponden a permutaciones simples, variaciones y combinaciones con repetición.
</quiz>

<quiz>
¿Cuál es la fórmula para contar selecciones de $k$ elementos de un conjunto de $n$ donde el orden **sí** importa y **no** hay repetición?

- [ ] ${n \choose k}$
- [ ] $n^k$
- [x] $\dfrac{n!}{(n-k)!}$
- [ ] $\dfrac{n!}{n_1! \cdot n_2!}$

Explicación: Son variaciones sin repetición. La combinación quitaría la importancia del orden; $n^k$ es variación con repetición; y la última es permutación con repetición.
</quiz>

<quiz>
¿Cuál es la fórmula para contar formas de elegir $k$ elementos de un conjunto de $n$ donde el orden **no** importa y **no** hay repetición?

- [ ] $n^k$
- [x] $\dfrac{n!}{k!(n-k)!}$ ó ${n \choose k}$
- [ ] $\dfrac{n!}{(n-k)!}$
- [ ] ${n+k-1 \choose k}$

Explicación: Son combinaciones sin repetición (coeficiente binomial). La opción correcta usa dos notaciones equivalentes. Las demás son variación con repetición, variación sin repetición y combinación con repetición.
</quiz>

<quiz>
¿Cuál es la fórmula para contar "tuplas" de $k$ posiciones donde cada posición puede repetir un elemento de un conjunto de $n$? (Ej. contraseñas de $k$ dígitos con 10 dígitos disponibles)

- [x] $n^k$
- [ ] $\dfrac{n!}{(n-k)!}$
- [ ] ${n+k-1 \choose k}$
- [ ] $n!$

Explicación: Son variaciones con repetición: cada posición tiene $n$ opciones. La variación sin repetición restringe; combinación con repetición quita orden; permutación es para $k=n$.
</quiz>

<quiz>
¿Cuál es la fórmula para contar grupos de $k$ elementos de un conjunto de $n$ donde el orden **no** importa y **sí** hay repetición? (Ej. elegir 3 sabores de helado de 5 tipos disponibles, permitiendo repetir sabor)

- [ ] $\dfrac{n!}{(n-k)!}$
- [ ] $\dfrac{n!}{k!(n-k)!}$
- [x] ${n+k-1 \choose k}$
- [ ] $n^k$

Explicación: Son combinaciones con repetición. Se expande a $\dfrac{(n+k-1)!}{k!(n-1)!}$ internamente. La variación sin repetición ordena; combinación sin repetición no permite repetir; $n^k$ es variación con repetición que ordena.
</quiz>

<quiz>
**Pregunta trampa:** ¿Qué cuentan las opciones a y b respectivamente?

$$
\text{(a) } \frac{10!}{3!\,4!\,2!\,1!} \quad \text{(b) } \frac{10!}{7!}
$$

- [ ] (a) variación sin repetición; (b) permutación con repetición
- [x] (a) permutación con repetición; (b) variación sin repetición
- [ ] Ambas cuentan lo mismo
- [ ] (a) combinación con repetición; (b) combinación sin repetición

Explicación: (a) es permutación con repetición (frecuencias en denominador). (b) es variación: elegir y ordenar 3 de 10 elementos. La división de (b) da $10\cdot9\cdot8=720$.
</quiz>

<quiz>
Si $V_{n,k} = 120$ y $C_{n,k} = 20$, ¿cuál es la relación entre variaciones y combinaciones?

- [ ] $V_{n,k} = C_{n,k}$
- [x] $V_{n,k} = C_{n,k} \cdot k!$
- [ ] $C_{n,k} = V_{n,k} \cdot k!$
- [ ] $V_{n,k} = 2 \cdot C_{n,k}$

Explicación: Las variaciones cuentan ordenaciones; las combinaciones cuentan selecciones sin orden. Para convertir, multiplicamos por $k!$ (número de formas de ordenar $k$ elementos): $120 = 20 \cdot 6 = 20 \cdot 3!$.
</quiz>

<quiz>
¿Cuál es la fórmula para calcular el número de formas de sentar $n$ personas en $n$ sillas de una fila (suponiendo que todas las sillas y personas son distinguibles)?

- [ ] ${2n \choose n}$
- [ ] $n^n$
- [x] $n!$
- [ ] $\dfrac{n!}{2}$

Explicación: Es una permutación de todos los elementos. La primera silla tiene $n$ opciones, la segunda $n-1$, etc., dando $n!$. Las otras opciones son distractores.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Permutaciones simples"

    **Pregunta:** ¿Cuál es la fórmula para contar el número de permutaciones de $n$ elementos distintos?

    **Respuesta correcta:** $n!$

    **Justificación:** Una permutación es una ordenación de todos los $n$ elementos. El primer lugar tiene $n$ opciones, el segundo tiene $n-1$, etc. El total es $n\cdot(n-1)\cdot(n-2)\cdots1 = n!$.

    **Ejemplo:** Permutaciones de $\{a,b,c\}$: $3!=6$ (abc, acb, bac, bca, cab, cba).

???- details "Solución pregunta 2 — Permutaciones con repetición"

    **Pregunta:** ¿Cuál es la fórmula para contar ordenaciones de $n$ elementos donde hay repeticiones internas?

    **Respuesta correcta:** $\dfrac{n!}{n_1! \cdot n_2! \cdots n_r!}$

    **Justificación:** Cuando hay elementos repetidos (frecuencias $n_1, n_2, \dots, n_r$), muchas permutaciones son idénticas. Dividimos el factorial total por el producto de los factoriales de las frecuencias.

    **Ejemplo:** Anagramas de "aabbbc" ($n=6$, $n_a=2, n_b=3, n_c=1$): $\dfrac{6!}{2!\cdot3!\cdot1!} = \dfrac{720}{12} = 60$.

???- details "Solución pregunta 3 — Variaciones sin repetición"

    **Pregunta:** ¿Cuál es la fórmula para contar selecciones de $k$ elementos de un conjunto de $n$ donde el orden **sí** importa y **no** hay repetición?

    **Respuesta correcta:** $\dfrac{n!}{(n-k)!}$

    **Justificación:** Elegimos $k$ elementos ordenados (sin poder repetir). El primer puesto tiene $n$ opciones, el segundo $n-1$, etc., hasta el $k$-ésimo que tiene $n-k+1$ opciones. El producto es $n\cdot(n-1)\cdots(n-k+1) = \dfrac{n!}{(n-k)!}$.

    **Ejemplo:** Números de 2 cifras de $\{1,2,3,4\}$ sin repetir: $V_{4,2} = \dfrac{4!}{2!} = 12$.

???- details "Solución pregunta 4 — Combinaciones sin repetición"

    **Pregunta:** ¿Cuál es la fórmula para contar formas de elegir $k$ elementos de un conjunto de $n$ donde el orden **no** importa y **no** hay repetición?

    **Respuesta correcta:** $\dfrac{n!}{k!(n-k)!}$ ó ${n \choose k}$ (notaciones equivalentes)

    **Justificación:** Las combinaciones son selecciones donde el orden no importa. Se calcula como variaciones divididas por $k!$ (formas de ordenar $k$ elementos): $\dfrac{n!/(n-k)!}{k!} = \dfrac{n!}{k!(n-k)!}$.

    **Ejemplo:** Grupos de 3 letras de $\{a,b,c,d\}$: $C_{4,3} = {4\choose3} = 4$ (grupos: {a,b,c}, {a,b,d}, {a,c,d}, {b,c,d}).

???- details "Solución pregunta 5 — Variaciones con repetición"

    **Pregunta:** ¿Cuál es la fórmula para contar tuplas de $k$ posiciones donde cada posición puede repetir un elemento de un conjunto de $n$?

    **Respuesta correcta:** $n^k$

    **Justificación:** Cada una de las $k$ posiciones tiene $n$ opciones disponibles. Como hay repetición, todas las opciones están disponibles en cada paso. Total: $n\times n\times\cdots\times n = n^k$.

    **Ejemplo:** Contraseñas de 3 dígitos (0–9): $10^3 = 1000$ combinaciones.

???- details "Solución pregunta 6 — Combinaciones con repetición"

    **Pregunta:** ¿Cuál es la fórmula para contar grupos de $k$ elementos de un conjunto de $n$ donde el orden **no** importa y **sí** hay repetición?

    **Respuesta correcta:** ${n+k-1 \choose k}$

    **Justificación:** Es un problema equivalente a distribuir $k$ objetos indistinguibles entre $n$ tipos distinguibles. Se puede demostrar que la respuesta es ${n+k-1 \choose k} = \dfrac{(n+k-1)!}{k!(n-1)!}$.

    **Ejemplo:** Grupos de 3 sabores de helado de 5 tipos (repetición permitida): $CR_{5,3} = {5+3-1 \choose 3} = {7\choose3} = 35$.

???- details "Solución pregunta 7 — Pregunta trampa: distinguir permutaciones y variaciones"

    **Pregunta:** ¿Qué cuentan las opciones a y b?

    $$
    \text{(a) } \frac{10!}{3!\,4!\,2!\,1!} \quad \text{(b) } \frac{10!}{7!}
    $$

    **Respuesta correcta:** (a) permutación con repetición; (b) variación sin repetición

    **Justificación:**
    - **(a)** Tiene frecuencias en el denominador ($3!, 4!, 2!, 1!$): es permutación con repetición de 10 elementos donde hay 3+4+2+1=10 elementos de tipos distintos.
    - **(b)** Es $\dfrac{10!}{7!} = 10\cdot9\cdot8 = V_{10,3}$: elegir y ordenar 3 elementos de 10 sin repetición.

???- details "Solución pregunta 8 — Relación entre variaciones y combinaciones"

    **Pregunta:** Si $V_{n,k} = 120$ y $C_{n,k} = 20$, ¿cuál es la relación?

    **Respuesta correcta:** $V_{n,k} = C_{n,k} \cdot k!$

    **Justificación:** La relación fundamental es:

    $$
    V_{n,k} = \frac{n!}{(n-k)!}, \quad C_{n,k} = \frac{n!}{k!(n-k)!}
    $$

    Dividiendo: $\dfrac{V_{n,k}}{C_{n,k}} = \dfrac{\dfrac{n!}{(n-k)!}}{\dfrac{n!}{k!(n-k)!}} = k!$, luego $V_{n,k} = C_{n,k} \cdot k!$.

    En números: $120 = 20 \cdot 6 = 20 \cdot 3!$ (con $k=3$).

???- details "Solución pregunta 9 — Permutaciones de todos los elementos"

    **Pregunta:** ¿Cuál es la fórmula para calcular el número de formas de sentar $n$ personas en $n$ sillas de una fila?

    **Respuesta correcta:** $n!$

    **Justificación:** Es una permutación de todos los $n$ elementos. La primera silla puede ocuparla cualquiera de las $n$ personas, la segunda cualquiera de las $n-1$ restantes, etc. Total: $n!$.

    **Ejemplo:** Sentar 4 personas en 4 sillas: $4! = 24$ formas.
