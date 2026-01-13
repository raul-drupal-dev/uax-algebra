---
title: "UD6 — Examen Práctico (Combinatoria) (medio)"
---

Duración estimada: 90 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). Resuelve los problemas eligiendo la opción que consideres correcta; justificaciones de cada solución aparecen al final.

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

<quiz>
¿De cuántas maneras se pueden sentar 6 personas alrededor de una mesa circular?

- [ ] $6! = 720$
- [x] $(6-1)! = 5! = 120$
- [ ] $\dfrac{6!}{6} = 120$ (igual que b)
- [ ] ${6 \choose 2} = 15$

Explicación: En permutaciones circulares, fijamos una posición (para eliminar rotaciones equivalentes) y permutamos las restantes: $(n-1)!$ para $n$ elementos. Aquí: $(6-1)! = 5! = 120$.
</quiz>

<quiz>
¿Cuántos números de 5 dígitos se pueden formar usando exactamente dos veces el dígito 3, dos veces el dígito 5, y una vez el dígito 7?

- [ ] $5! = 120$
- [x] $\dfrac{5!}{2! \cdot 2! \cdot 1!} = 30$
- [ ] $5^5 = 3125$
- [ ] ${5 \choose 2} \cdot {3 \choose 2} = 30$ (distinto razonamiento)

Explicación: Tenemos 5 dígitos con frecuencias: 3→2 veces, 5→2 veces, 7→1 vez. Permutación con repetición: $\dfrac{5!}{2! \cdot 2! \cdot 1!} = \dfrac{120}{4} = 30$.
</quiz>

<quiz>
En un torneo de tenis participan 10 jugadores. ¿Cuántos partidos se deben jugar si cada jugador debe enfrentarse una vez con cada uno de los demás?

- [ ] $10^2 = 100$
- [ ] $\dfrac{10!}{8!} = 90$
- [x] ${10 \choose 2} = 45$
- [ ] $10 \cdot 9 = 90$

Explicación: Cada partido involucra 2 jugadores, sin orden (A vs B = B vs A), sin repetición. Es combinación: ${10 \choose 2} = \dfrac{10 \cdot 9}{2} = 45$ partidos.
</quiz>

<quiz>
¿Cuántas cadenas de 8 bits (0s y 1s) existen que tengan exactamente tres 1s?

- [ ] $8^3 = 512$
- [x] ${8 \choose 3} = 56$
- [ ] $3 \cdot 8 = 24$
- [ ] $\dfrac{8!}{3!} = 6720$

Explicación: Elegir 3 posiciones de 8 para colocar los 1s (el resto serán 0s), sin orden: ${8 \choose 3} = \dfrac{8!}{3! \cdot 5!} = 56$.
</quiz>

<quiz>
¿De cuántas maneras se pueden repartir 7 bolas idénticas en 4 urnas diferentes si cada urna debe tener al menos una bola?

- [ ] ${7 \choose 4} = 35$
- [ ] ${10 \choose 3} = 120$
- [x] ${7-1 \choose 4-1} = {6 \choose 3} = 20$
- [ ] $4^7 = 16384$

Explicación: Garantizamos una bola por urna primero (quedan $7-4 = 3$ bolas para distribuir libremente en 4 urnas). Usando barras y estrellas: ${3+4-1 \choose 4-1} = {6 \choose 3} = 20$.
</quiz>

<quiz>
Usando el principio de inclusión-exclusión: ¿cuántos números enteros del 1 al 100 son divisibles por 2 **o** por 5?

- [ ] $50 + 20 = 70$
- [x] $50 + 20 - 10 = 60$
- [ ] $\dfrac{100}{2} \cdot \dfrac{100}{5} = 1000$
- [ ] $100 - 50 - 20 = 30$

Explicación: $|A \cup B| = |A| + |B| - |A \cap B|$. Divisibles por 2: $\lfloor 100/2 \rfloor = 50$. Divisibles por 5: $\lfloor 100/5 \rfloor = 20$. Divisibles por ambos (10): $\lfloor 100/10 \rfloor = 10$. Total: $50 + 20 - 10 = 60$.
</quiz>

<quiz>
¿De cuántas maneras se pueden colocar 8 torres en un tablero de ajedrez (8×8) de modo que ninguna ataque a otra? (Las torres atacan en línea recta horizontal o vertical)

- [x] $8! = 40320$
- [ ] $8^8$
- [ ] ${64 \choose 8}$
- [ ] $64 \cdot 63 \cdot 62 \cdots 57$

Explicación: Cada torre debe estar en fila y columna distintas. Fijamos una torre por fila (8 filas); elegimos columna para cada una sin repetir: $8!$ permutaciones de las columnas. Total: $8! = 40320$.
</quiz>

<quiz>
¿Cuántas soluciones enteras no negativas tiene la ecuación $x_1 + x_2 + x_3 + x_4 = 10$?

- [ ] $4^{10} = 1048576$
- [ ] ${10 \choose 4} = 210$
- [x] ${10+4-1 \choose 4-1} = {13 \choose 3} = 286$
- [ ] $\dfrac{10!}{4!}$

Explicación: Distribuir 10 unidades idénticas en 4 variables (barras y estrellas): ${n+k-1 \choose k-1} = {10+4-1 \choose 4-1} = {13 \choose 3} = 286$.
</quiz>

<quiz>
¿De cuántas maneras se pueden formar equipos de 5 personas de un grupo de 12 hombres y 8 mujeres, si el equipo debe tener exactamente 3 hombres y 2 mujeres?

- [ ] ${12 \choose 3} + {8 \choose 2} = 248$
- [x] ${12 \choose 3} \cdot {8 \choose 2} = 220 \cdot 28 = 6160$
- [ ] ${20 \choose 5} = 15504$
- [ ] $12 \cdot 8 = 96$

Explicación: Elegir 3 hombres de 12: ${12 \choose 3} = 220$. Elegir 2 mujeres de 8: ${8 \choose 2} = 28$. Eventos independientes: $220 \cdot 28 = 6160$ equipos.
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

???- details "Solución pregunta 12 — Personas alrededor de mesa circular"

    **Pregunta:** ¿De cuántas maneras se pueden sentar 6 personas alrededor de una mesa circular?

    **Respuesta correcta:** $(6-1)! = 5! = 120$

    **Solución:**

    En **permutaciones circulares**, no contamos las rotaciones como distintas (sentarse en la posición A-B-C-D-E-F es equivalente a B-C-D-E-F-A alrededor de la mesa).

    **Método:** Fijamos una persona en una posición (eliminamos rotaciones) y permutamos las restantes:

    $$P_{\text{circular}} = (n-1)! = (6-1)! = 5! = 5 \cdot 4 \cdot 3 \cdot 2 \cdot 1 = 120$$

    **Comparación:** Sin restricción circular: $6! = 720$. Con restricción: $\dfrac{6!}{6} = 120$ (dividimos por las 6 rotaciones equivalentes).

    **Resultado:** 120 formas distintas de sentarse.

???- details "Solución pregunta 13 — Números con dígitos repetidos"

    **Pregunta:** ¿Cuántos números de 5 dígitos se pueden formar usando exactamente dos veces el dígito 3, dos veces el dígito 5, y una vez el dígito 7?

    **Respuesta correcta:** $\dfrac{5!}{2! \cdot 2! \cdot 1!} = 30$

    **Solución:**

    Tenemos 5 posiciones y dígitos con frecuencias:
    - Dígito 3: 2 veces
    - Dígito 5: 2 veces
    - Dígito 7: 1 vez

    Usamos **permutación con repetición**:

    $$P_5^{2,2,1} = \frac{5!}{2! \cdot 2! \cdot 1!} = \frac{120}{2 \cdot 2 \cdot 1} = \frac{120}{4} = 30$$

    **Razonamiento:** Si todos los dígitos fuesen distintos: $5! = 120$ permutaciones. Pero como hay 2 treses idénticos, dividimos por $2!$. Y como hay 2 cincos idénticos, dividimos por otro $2!$.

    **Ejemplos de números:** 33577, 35357, 75335, 57335, 37537, etc.

    **Resultado:** 30 números distintos.

???- details "Solución pregunta 14 — Torneos de tenis (partidos)"

    **Pregunta:** En un torneo de tenis participan 10 jugadores. ¿Cuántos partidos se deben jugar si cada jugador debe enfrentarse una vez con cada uno de los demás?

    **Respuesta correcta:** ${10 \choose 2} = 45$

    **Solución:**

    Un partido involucra exactamente 2 jugadores. El orden no importa (A vs B es el mismo partido que B vs A). No hay repetición (cada par de jugadores juega una sola vez).

    Es una **combinación sin repetición**:

    $${10 \choose 2} = \frac{10!}{2! \cdot 8!} = \frac{10 \cdot 9}{2 \cdot 1} = \frac{90}{2} = 45$$

    **Método directo:** Jugador 1 juega 9 partidos (contra cada uno de los otros 9). Jugador 2 juega 8 partidos nuevos (ya contamos contra Jugador 1). Jugador 3 juega 7 nuevos, etc.

    $$9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 = 45$$

    **Resultado:** 45 partidos en total.

???- details "Solución pregunta 15 — Cadenas de bits con tres 1s"

    **Pregunta:** ¿Cuántas cadenas de 8 bits (0s y 1s) existen que tengan exactamente tres 1s?

    **Respuesta correcta:** ${8 \choose 3} = 56$

    **Solución:**

    Una cadena de 8 bits con exactamente tres 1s significa que el resto (5 posiciones) son 0s.

    El problema se reduce a: **elegir 3 posiciones de 8 para colocar los 1s**. No importa el orden de selección, y cada posición se usa una sola vez.

    Es **combinación sin repetición**:

    $${8 \choose 3} = \frac{8!}{3! \cdot 5!} = \frac{8 \cdot 7 \cdot 6}{3 \cdot 2 \cdot 1} = \frac{336}{6} = 56$$

    **Ejemplos:** 11100000, 11010000, 11001000, 10110000, 01110000, 00111000, etc.

    **Resultado:** 56 cadenas distintas.

???- details "Solución pregunta 16 — Distribuir bolas con restricción mínima"

    **Pregunta:** ¿De cuántas maneras se pueden repartir 7 bolas idénticas en 4 urnas diferentes si cada urna debe tener al menos una bola?

    **Respuesta correcta:** ${6 \choose 3} = 20$

    **Solución:**

    Las bolas son idénticas (indistinguibles) pero las urnas son diferentes. **Restricción:** cada urna debe tener al menos 1 bola.

    **Método:** Primero garantizamos una bola en cada urna:
    - Distribuimos 4 bolas (una por urna): obligatorio
    - Quedan $7 - 4 = 3$ bolas para distribuir libremente

    Ahora el problema es: **distribuir 3 bolas idénticas en 4 urnas sin restricción**, usando **barras y estrellas**:

    $$CR_{4,3} = {4+3-1 \choose 3} = {6 \choose 3} = \frac{6!}{3! \cdot 3!} = \frac{6 \cdot 5 \cdot 4}{3 \cdot 2 \cdot 1} = 20$$

    **Ejemplos de distribuciones:** (1,1,1,4), (1,1,2,3), (1,1,3,2), (1,2,1,3), (1,2,2,2), (2,1,1,3), (2,1,2,2), (2,2,1,2), (2,2,2,1), (1,1,5,0)... espera, ésta no es válida. Todas tienen al menos 1.

    Distribuciones válidas (urna1, urna2, urna3, urna4): (4,1,1,1), (3,2,1,1), (3,1,2,1), (3,1,1,2), (2,2,2,1), (2,2,1,2), (2,1,2,2), (1,2,2,2), (2,3,1,1), (2,1,3,1), (2,1,1,3), (1,3,2,1), (1,3,1,2), (1,2,3,1), (1,2,1,3), (1,1,3,2), (1,1,2,3), (2,2,2,1), (1,4,1,1), (1,1,4,1), (1,1,1,4).

    **Resultado:** 20 distribuciones distintas.

???- details "Solución pregunta 17 — Inclusión-Exclusión (divisibilidad)"

    **Pregunta:** Usando el principio de inclusión-exclusión: ¿cuántos números enteros del 1 al 100 son divisibles por 2 **o** por 5?

    **Respuesta correcta:** $50 + 20 - 10 = 60$

    **Solución:**

    Usamos el **principio de inclusión-exclusión** para contar elementos en la unión de dos conjuntos:

    $$|A \cup B| = |A| + |B| - |A \cap B|$$

    Donde:
    - $A$ = números divisibles por 2
    - $B$ = números divisibles por 5
    - $A \cap B$ = números divisibles por ambos (es decir, por $\text{mcm}(2,5) = 10$)

    **Cálculos:**

    - $|A| = \lfloor 100 / 2 \rfloor = 50$ (números: 2, 4, 6, ..., 100)
    - $|B| = \lfloor 100 / 5 \rfloor = 20$ (números: 5, 10, 15, ..., 100)
    - $|A \cap B| = \lfloor 100 / 10 \rfloor = 10$ (números: 10, 20, 30, ..., 100)

    **Resultado:**

    $$|A \cup B| = 50 + 20 - 10 = 60$$

    60 números del 1 al 100 son divisibles por 2 o por 5.

???- details "Solución pregunta 18 — Torres en ajedrez sin ataque"

    **Pregunta:** ¿De cuántas maneras se pueden colocar 8 torres en un tablero de ajedrez (8×8) de modo que ninguna ataque a otra?

    **Respuesta correcta:** $8! = 40320$

    **Solución:**

    Las torres atacan en línea recta (fila y columna). Para que ninguna ataque a otra, **debe haber exactamente una torre por fila y una torre por columna**.

    **Método:**

    - **Fila 1:** Elegimos una de 8 columnas → 8 opciones
    - **Fila 2:** Elegimos una de las 7 columnas restantes → 7 opciones
    - **Fila 3:** Elegimos una de las 6 columnas restantes → 6 opciones
    - ...
    - **Fila 8:** La única columna restante → 1 opción

    Total: $8 \cdot 7 \cdot 6 \cdot 5 \cdot 4 \cdot 3 \cdot 2 \cdot 1 = 8! = 40320$

    **Interpretación:** Cada disposición válida corresponde a una **permutación de las columnas** (una forma de asignar columnas a filas sin repetición).

    **Resultado:** 40.320 configuraciones distintas.

???- details "Solución pregunta 19 — Ecuación con variables enteras"

    **Pregunta:** ¿Cuántas soluciones enteras no negativas tiene la ecuación $x_1 + x_2 + x_3 + x_4 = 10$?

    **Respuesta correcta:** ${13 \choose 3} = 286$

    **Solución:**

    Buscamos tuplas $(x_1, x_2, x_3, x_4)$ donde cada $x_i \geq 0$ (entero no negativo) y su suma es 10.

    Usamos el método de **barras y estrellas (combinaciones con repetición)**:

    - **Estrellas:** 10 unidades (representan el valor total a distribuir)
    - **Barras:** 3 separadores (dividen las 4 variables)
    - **Total de objetos:** $10 + 3 = 13$

    El problema es elegir dónde colocar las 3 barras (o equivalentemente, las 10 estrellas) entre 13 posiciones:

    $${n+k-1 \choose k-1} = {10+4-1 \choose 4-1} = {13 \choose 3}$$

    **Cálculo:**

    $${13 \choose 3} = \frac{13!}{3! \cdot 10!} = \frac{13 \cdot 12 \cdot 11}{3 \cdot 2 \cdot 1} = \frac{1716}{6} = 286$$

    **Ejemplos de soluciones:** $(10,0,0,0)$, $(5,5,0,0)$, $(3,3,2,2)$, $(1,2,3,4)$, etc.

    **Resultado:** 286 soluciones enteras no negativas.

???- details "Solución pregunta 20 — Equipos con restricción de género"

    **Pregunta:** ¿De cuántas maneras se pueden formar equipos de 5 personas de un grupo de 12 hombres y 8 mujeres, si el equipo debe tener exactamente 3 hombres y 2 mujeres?

    **Respuesta correcta:** ${12 \choose 3} \cdot {8 \choose 2} = 220 \cdot 28 = 6160$

    **Solución:**

    El equipo tiene una composición fija: 3 hombres y 2 mujeres (total 5 personas). Los hombres y mujeres son grupos distintos.

    **Paso 1:** Elegir 3 hombres de 12 disponibles (sin orden):

    $${12 \choose 3} = \frac{12!}{3! \cdot 9!} = \frac{12 \cdot 11 \cdot 10}{3 \cdot 2 \cdot 1} = \frac{1320}{6} = 220$$

    **Paso 2:** Elegir 2 mujeres de 8 disponibles (sin orden):

    $${8 \choose 2} = \frac{8!}{2! \cdot 6!} = \frac{8 \cdot 7}{2 \cdot 1} = \frac{56}{2} = 28$$

    **Paso 3:** Como la selección de hombres y mujeres son eventos independientes, usamos el principio multiplicativo:

    $$\text{Total} = {12 \choose 3} \times {8 \choose 2} = 220 \times 28 = 6160$$

    **Verificación:** $220 \times 28 = 220 \times (30-2) = 6600 - 440 = 6160$ ✓

    **Resultado:** 6.160 equipos distintos posibles.
