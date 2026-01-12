---
title: "UD6 — Examen Práctico (Combinatoria) (medio)"
---

Duración estimada: 45 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). Resuelve los problemas eligiendo la opción que consideres correcta; justificaciones de cada solución aparecen al final.

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
¿Cuántos números diferentes de 4 cifras se pueden formar con los dígitos $\{1, 2, 3, 4, 5, 6\}$ sin que se repita ningún dígito?

- [ ] $6^4 = 1296$
- [x] $\dfrac{6!}{2!} = 360$
- [ ] $6! = 720$
- [ ] ${6 \choose 4} = 15$

Explicación: Necesitamos formar números (orden importa) de 4 cifras distintas de 6 disponibles. Es variación sin repetición: $V_{6,4} = \dfrac{6!}{(6-4)!} = \dfrac{720}{2} = 360$.
</quiz>

<quiz>
En un estante hay 8 libros diferentes. ¿De cuántas maneras se pueden ordenar?

- [x] $8! = 40320$
- [ ] $8^8$
- [ ] ${8 \choose 8} = 1$
- [ ] $\dfrac{8!}{2}$

Explicación: Ordenar todos los elementos es una permutación simple: $8! = 40320$. Las otras opciones son distractores (variación con repetición, combinación trivial, y una división injustificada).
</quiz>

<quiz>
¿Cuántas palabras distintas (con o sin sentido) se pueden formar con las letras de la palabra "BANANA"?

- [ ] $6! = 720$
- [x] $\dfrac{6!}{3! \cdot 2! \cdot 1!} = 60$
- [ ] $3! \cdot 2! = 12$
- [ ] ${6 \choose 3} = 20$

Explicación: "BANANA" tiene 6 letras con frecuencias: B=1, A=3, N=2. Usamos permutación con repetición: $\dfrac{6!}{1!\cdot3!\cdot2!} = \dfrac{720}{12} = 60$.
</quiz>

<quiz>
Un restaurante ofrece un menú con 10 platos disponibles. ¿De cuántas maneras un cliente puede elegir 3 platos diferentes para su comida (sin importar el orden)?

- [ ] $10^3 = 1000$
- [ ] $\dfrac{10!}{7!} = 720$
- [x] ${10 \choose 3} = 120$
- [ ] $3 \cdot 10 = 30$

Explicación: Elegir 3 platos de 10 sin orden (combinación sin repetición): ${10 \choose 3} = \dfrac{10!}{3! \cdot 7!} = 120$. La variación daría $V_{10,3} = 720$, pero aquí el orden no importa.
</quiz>

<quiz>
¿De cuántas maneras se pueden distribuir 5 caramelos idénticos entre 3 niños?

- [x] ${5+3-1 \choose 5} = {7 \choose 5} = 21$
- [ ] $3^5 = 243$
- [ ] $\dfrac{5!}{3!} = 20$
- [ ] ${5 \choose 3} = 10$

Explicación: Los caramelos son indistinguibles (idénticos) y el orden no importa: combinación con repetición. $CR_{3,5} = {3+5-1 \choose 5} = {7\choose5} = 21$.
</quiz>

<quiz>
¿Cuántas contraseñas de 4 caracteres se pueden crear usando letras mayúsculas (26 disponibles) donde se permite la repetición?

- [ ] ${26 \choose 4} = 14950$
- [x] $26^4 = 456976$
- [ ] $\dfrac{26!}{22!}$
- [ ] $\dfrac{26!}{4! \cdot 22!}$

Explicación: Cada posición tiene 26 opciones y se permite repetición: variación con repetición $VR_{26,4} = 26^4 = 456976$. La opción b) es incompleta (sería variación sin repetición si fuese 4! en el denominador).
</quiz>

<quiz>
¿De cuántas maneras pueden alinearse 5 estudiantes en una fila si dos estudiantes específicos (Ana y Bruno) deben estar juntos?

- [ ] $5! = 120$
- [x] $4! \cdot 2! = 48$
- [ ] $3! \cdot 2! = 12$
- [ ] ${5 \choose 2} = 10$

Explicación: Consideramos a Ana y Bruno como un "bloque" único. Tenemos 4 unidades para ordenar (el bloque + 3 estudiantes): $4!$ formas. Dentro del bloque, Ana y Bruno pueden permutarse: $2!$. Total: $4! \cdot 2! = 24 \cdot 2 = 48$.
</quiz>

<quiz>
¿De cuántas maneras se pueden elegir 3 colores de una paleta de 7 colores disponibles para pintar un cuadro, donde el orden en que se mezclan **sí** importa?

- [ ] ${7 \choose 3} = 35$
- [x] $V_{7,3} = \dfrac{7!}{4!} = 210$
- [ ] $7^3 = 343$
- [ ] $3! \cdot 7 = 42$

Explicación: Elegir 3 colores de 7 donde el orden importa (mezclar en orden A-B-C es distinto a B-A-C): variación sin repetición. $V_{7,3} = 7 \cdot 6 \cdot 5 = 210$.
</quiz>

<quiz>
Un juego de lotería pide elegir 6 números de 49 disponibles. ¿Cuántas combinaciones de boletos diferentes existen?

- [ ] $49^6$
- [ ] $\dfrac{49!}{43!}$
- [x] ${49 \choose 6} = 10068347$
- [ ] $49! - 43!$

Explicación: Seleccionar 6 números sin orden y sin repetición: combinación sin repetición ${49 \choose 6} = \dfrac{49!}{6! \cdot 43!} = 10068347$.
</quiz>

<quiz>
¿Cuántas palabras de 5 letras se pueden formar con el alfabeto de 27 letras (incluida la ñ) si se permite la repetición de letras?

- [x] $27^5 = 14348907$
- [ ] $V_{27,5} = \dfrac{27!}{22!}$
- [ ] ${27 \choose 5} = 80730$
- [ ] $27!$

Explicación: Cada una de las 5 posiciones puede tomar cualquiera de 27 letras con repetición permitida: $27^5 = 14348907$.
</quiz>

<quiz>
¿De cuántas maneras se pueden distribuir 4 reglos idénticos y 3 lápices idénticos en 5 cajas diferentes (cada caja puede estar vacía)?

- [ ] $4! \cdot 3! = 144$
- [ ] ${5+4 \choose 4} \cdot {5+3 \choose 3}$
- [x] ${5+4-1 \choose 4} \cdot {5+3-1 \choose 3} = {8 \choose 4} \cdot {7 \choose 3} = 70 \cdot 35 = 2450$
- [ ] $5^{4+3} = 5^7$

Explicación: Distribuir objetos idénticos en cajas diferentes es combinación con repetición. Para los 4 reglos: $CR_{5,4} = {8\choose4} = 70$. Para los 3 lápices: $CR_{5,3} = {7\choose3} = 35$. Total: $70 \cdot 35 = 2450$.
</quiz>

---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---

## Soluciones desarrolladas

???- details "Solución pregunta 1 — Números de 4 cifras sin repetición"

    **Pregunta:** ¿Cuántos números diferentes de 4 cifras se pueden formar con los dígitos $\{1, 2, 3, 4, 5, 6\}$ sin que se repita ningún dígito?

    **Respuesta correcta:** $\dfrac{6!}{2!} = 360$

    **Solución:**

    Necesitamos elegir 4 dígitos de 6 disponibles **y** ordenarlos (porque la posición importa: 1234 es distinto a 4321). Sin repetición.

    Esto es variación sin repetición:

    $$V_{6,4} = \frac{6!}{(6-4)!} = \frac{6!}{2!} = \frac{720}{2} = 360$$

    También podemos contar directamente: primer dígito (6 opciones) × segundo (5) × tercero (4) × cuarto (3) = $6 \cdot 5 \cdot 4 \cdot 3 = 360$.

    **Resultado:** 360 números.

???- details "Solución pregunta 2 — Orden de libros en estante"

    **Pregunta:** En un estante hay 8 libros diferentes. ¿De cuántas maneras se pueden ordenar?

    **Respuesta correcta:** $8! = 40320$

    **Solución:**

    Ordenar todos los elementos es una **permutación simple**:

    $$P_8 = 8! = 8 \cdot 7 \cdot 6 \cdot 5 \cdot 4 \cdot 3 \cdot 2 \cdot 1 = 40320$$

    - Primer lugar: 8 opciones
    - Segundo lugar: 7 opciones
    - Tercero: 6 opciones
    - ... y así sucesivamente

    Total: $8! = 40320$.

???- details "Solución pregunta 3 — Anagramas de 'BANANA'"

    **Pregunta:** ¿Cuántas palabras distintas (con o sin sentido) se pueden formar con las letras de la palabra "BANANA"?

    **Respuesta correcta:** $\dfrac{6!}{3! \cdot 2! \cdot 1!} = 60$

    **Solución:**

    Las letras de "BANANA" son: B (1 vez), A (3 veces), N (2 veces). Total 6 letras.

    Usamos **permutación con repetición**:

    $$P_6^{1,3,2} = \frac{6!}{1! \cdot 3! \cdot 2!} = \frac{720}{1 \cdot 6 \cdot 2} = \frac{720}{12} = 60$$

    Dividimos por los factoriales de las frecuencias porque muchas permutaciones "ingénuas" de 6 elementos serían idénticas al cambiar dos A's o dos N's de posición.

    **Resultado:** 60 palabras distintas.

???- details "Solución pregunta 4 — Elegir platos (orden no importa)"

    **Pregunta:** Un restaurante ofrece 10 platos. ¿De cuántas maneras un cliente puede elegir 3 platos diferentes (sin importar el orden)?

    **Respuesta correcta:** ${10 \choose 3} = 120$

    **Solución:**

    Elegir 3 platos de 10 donde el orden no importa (la combinación {A, B, C} es la misma que {C, B, A}): **combinación sin repetición**.

    $${10 \choose 3} = \frac{10!}{3! \cdot 7!} = \frac{10 \cdot 9 \cdot 8}{3 \cdot 2 \cdot 1} = \frac{720}{6} = 120$$

    **Comparación:** Si el orden importase (variación), sería $V_{10,3} = 10 \cdot 9 \cdot 8 = 720$. Dividimos por $3! = 6$ para eliminar el orden.

    **Resultado:** 120 combinaciones.

???- details "Solución pregunta 5 — Distribuir caramelos idénticos"

    **Pregunta:** ¿De cuántas maneras se pueden distribuir 5 caramelos idénticos entre 3 niños?

    **Respuesta correcta:** ${7 \choose 5} = 21$

    **Solución:**

    Los caramelos son indistinguibles (todos iguales) y cada niño puede recibir cualquier cantidad (0 o más). Es **combinación con repetición**:

    $$CR_{3,5} = {3+5-1 \choose 5} = {7 \choose 5} = {7 \choose 2} = \frac{7 \cdot 6}{2 \cdot 1} = 21$$

    **Interpretación:** Equivale a colocar 5 caramelos en una fila y 2 separadores para dividirlos entre 3 niños: tenemos 7 posiciones (5+2) y elegimos dónde van los separadores: ${7 \choose 2} = 21$.

    **Ejemplo de distribuciones:** (5,0,0), (4,1,0), (4,0,1), (3,2,0), (3,1,1), ..., (2,2,1), (1,1,3), (0,0,5), etc.

    **Resultado:** 21 maneras.

???- details "Solución pregunta 6 — Contraseñas de 4 caracteres"

    **Pregunta:** ¿Cuántas contraseñas de 4 caracteres se pueden crear usando 26 letras mayúsculas con repetición permitida?

    **Respuesta correcta:** $26^4 = 456976$

    **Solución:**

    Cada posición puede tomar cualquiera de 26 letras de forma independiente y con repetición permitida: **variación con repetición**.

    $$VR_{26,4} = 26^4 = 26 \cdot 26 \cdot 26 \cdot 26 = 456976$$

    - Posición 1: 26 opciones
    - Posición 2: 26 opciones
    - Posición 3: 26 opciones
    - Posición 4: 26 opciones

    Total: $26^4 = 456976$ contraseñas.

    **Resultado:** 456.976 contraseñas.

???- details "Solución pregunta 7 — Alinear estudiantes (restricción)"

    **Pregunta:** ¿De cuántas maneras pueden alinearse 5 estudiantes en una fila si Ana y Bruno deben estar juntos?

    **Respuesta correcta:** $4! \cdot 2! = 48$

    **Solución:**

    **Método:** Tratar a Ana y Bruno como un bloque único.

    - Tenemos 4 "unidades" para ordenar: el bloque (Ana+Bruno) + 3 estudiantes.
    - Estas 4 unidades se ordenan de $4! = 24$ formas.
    - Dentro del bloque, Ana y Bruno pueden permutarse de $2! = 2$ formas (Ana primero o Bruno primero).

    $$\text{Total} = 4! \cdot 2! = 24 \cdot 2 = 48$$

    **Comparación:** Sin restricción serían $5! = 120$. Con la restricción reducimos a 48 formas.

    **Resultado:** 48 alineaciones.

???- details "Solución pregunta 8 — Elegir colores (orden importa)"

    **Pregunta:** ¿De cuántas maneras se pueden elegir 3 colores de una paleta de 7 para pintar un cuadro, donde el orden de mezcla **sí** importa?

    **Respuesta correcta:** $V_{7,3} = 210$

    **Solución:**

    Elegir 3 colores de 7 donde el orden importa (mezclar Rojo-Azul-Amarillo es distinto a Azul-Rojo-Amarillo): **variación sin repetición**.

    $$V_{7,3} = \frac{7!}{(7-3)!} = \frac{7!}{4!} = 7 \cdot 6 \cdot 5 = 210$$

    - Primer color: 7 opciones
    - Segundo color: 6 opciones (no se repite)
    - Tercer color: 5 opciones

    Total: $7 \cdot 6 \cdot 5 = 210$.

    **Si orden no importase:** ${7 \choose 3} = 35$ (combinación). La diferencia es que aquí el orden **sí** importa.

    **Resultado:** 210 ordenes de colores.

???- details "Solución pregunta 9 — Lotería (6 de 49)"

    **Pregunta:** Un juego de lotería pide elegir 6 números de 49. ¿Cuántas combinaciones de boletos existen?

    **Respuesta correcta:** ${49 \choose 6} = 10068347$

    **Solución:**

    Seleccionar 6 números de 49 donde el orden no importa (boletos {1,2,3,4,5,6} y {6,5,4,3,2,1} son el mismo): **combinación sin repetición**.

    $${49 \choose 6} = \frac{49!}{6! \cdot 43!} = \frac{49 \cdot 48 \cdot 47 \cdot 46 \cdot 45 \cdot 44}{6 \cdot 5 \cdot 4 \cdot 3 \cdot 2 \cdot 1}$$

    Cálculo:

    $$\frac{49 \cdot 48 \cdot 47 \cdot 46 \cdot 45 \cdot 44}{720} = \frac{10068347200}{720} \approx 10068347$$

    **Resultado:** 10.068.347 combinaciones posibles.

???- details "Solución pregunta 10 — Palabras de 5 letras (con repetición)"

    **Pregunta:** ¿Cuántas palabras de 5 letras se pueden formar con 27 letras (A-Z + Ñ) con repetición permitida?

    **Respuesta correcta:** $27^5 = 14348907$

    **Solución:**

    Cada posición de la palabra puede tomar cualquiera de 27 letras de forma independiente con repetición: **variación con repetición**.

    $$VR_{27,5} = 27^5 = 27 \cdot 27 \cdot 27 \cdot 27 \cdot 27 = 14348907$$

    - Posición 1: 27 opciones
    - Posición 2: 27 opciones
    - Posición 3: 27 opciones
    - Posición 4: 27 opciones
    - Posición 5: 27 opciones

    Total: $27^5 = 14.348.907$ palabras.

    **Resultado:** 14.348.907 palabras.

???- details "Solución pregunta 11 — Distribuir reglos y lápices en cajas"

    **Pregunta:** ¿De cuántas maneras se pueden distribuir 4 reglos idénticos y 3 lápices idénticos en 5 cajas diferentes (cada caja puede estar vacía)?

    **Respuesta correcta:** ${8 \choose 4} \cdot {7 \choose 3} = 70 \cdot 35 = 2450$

    **Solución:**

    Los reglos son indistinguibles entre sí, y los lápices son indistinguibles entre sí, pero las cajas son distinguibles. Resolvemos por separado:

    **Reglos:** Distribuir 4 reglos idénticos en 5 cajas distintas es combinación con repetición:

    $$CR_{5,4} = {5+4-1 \choose 4} = {8 \choose 4} = \frac{8 \cdot 7 \cdot 6 \cdot 5}{4 \cdot 3 \cdot 2 \cdot 1} = \frac{1680}{24} = 70$$

    **Lápices:** Distribuir 3 lápices idénticos en 5 cajas distintas:

    $$CR_{5,3} = {5+3-1 \choose 3} = {7 \choose 3} = \frac{7 \cdot 6 \cdot 5}{3 \cdot 2 \cdot 1} = \frac{210}{6} = 35$$

    **Total:** Como las distribuciones de reglos y lápices son independientes:

    $$70 \cdot 35 = 2450$$

    **Resultado:** 2.450 maneras.
