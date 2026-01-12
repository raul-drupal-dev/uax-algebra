---
title: Plantilla generador de exámenes (oculta)
---

<!--
Nota: Este archivo está pensado como plantilla / prompt para generar nuevos exámenes.
NO lo añadas al `nav` de `mkdocs.yml` si quieres que permanezca oculto.
-->

# Plantilla / Prompt para generar exámenes tipo test

Esta página contiene el prompt y las reglas exactas para generar exámenes con el mismo formato y estilo que el archivo de muestra `examen-practica-1.md`.

Objetivo: que una IA, recibiendo este prompt y parámetros, produzca un examen en Markdown que sea indistinguible en forma (estructura, etiquetas y estilo) del examen de ejemplo, aunque con preguntas y números distintos.

Reglas de formato estrictas (basadas en el examen de referencia):

- Encabezado YAML: incluir al menos `title` y opcionalmente `units` en el `title` (p.ej. "Examen práctica 1 — Álgebra Lineal (UD3, UD4, UD5)").
- Tras el título principal incluir una línea de duración: `Duración estimada: X minutos.` (p.ej. 60 minutos).
- Instrucciones: exactamente las dos viñetas siguientes (puedes parametrizar el texto pero mantener la información):
  - Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
  - En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.
    -- Separador horizontal `---` antes de los bloques &lt;quiz&gt;.
    -- Bloques de pregunta: usar exactamente la sintaxis &lt;quiz&gt; ... &lt;/quiz&gt;.
  - Cada &lt;quiz&gt; debe contener:
    - Enunciado (puede incluir fórmulas LaTeX con `$...$` o bloques `$$...$$`).
    - Cuatro opciones en forma de lista marcada con `- [ ]` o `- [x]`. **Siempre 4 opciones** (no más, no menos). No usar letras obligatorias; la numeración/orden corresponde a las 4 viñetas.
    - Marcar la(s) correcta(s) con `[x]` y las incorrectas con `[ ]`.
    - Incluir inmediatamente, antes de cerrar `&lt;/quiz&gt;`, una línea que comience con `Explicación:` seguida de 1–2 frases que justifiquen la(s) respuesta(s) correctas. (En el examen de referencia la explicación está dentro del bloque &lt;quiz&gt;.)
- Sección de soluciones: al final del documento incluir exactamente `## Soluciones desarrolladas`.
  - Para cada pregunta generar un bloque colapsable con el formato usado en el examen: `???- details "Solución pregunta i — <breve título>"` (observa el guion `-` tras `???`).
  - El contenido del bloque debe ser el desarrollo completo paso a paso (operaciones fila a fila, cálculo de determinantes, polinomios característicos, comprobaciones), usando LaTeX donde proceda.

Reglas de contenido y coherencia:

- No duplicar opciones dentro de una misma pregunta.
- No repetir enunciados o respuestas idénticas entre preguntas.
- En preguntas de cálculo incluir la solución correcta entre las opciones y al menos una distracción razonable (optar por errores frecuentes: signo invertido, término perdido, confusión entre multiplicidad algebraica/geométrica, etc.).
- Mantener variedad: combinar teoría (definiciones, teoremas) y práctica (cálculos). Priorizar las unidades indicadas en `units` (p.ej. UD4 y UD5) pero incluir preguntas de UD2 y UD3 si `units` las lista.
- Si `use_template_exercises=true`, reescribe ejercicios tomando como base la estructura de `docs/examenes/ejercicios-clase.md`: conserva el tipo de ejercicio (p.ej. núcleo e imagen, sistemas por Gauss, cambio de base, diagonalización, preguntas de grafos) pero cambia coeficientes, constantes numéricas, matrices y vectores para crear variantes nuevas. Da prioridad sobretodo a los entregables y los examenes propuestos del final. No cambies la naturaleza del ejercicio (p.ej. si el original es calcular un núcleo, el generado también debe pedir el núcleo).

Comprobaciones internas que debe realizar la IA antes de devolver el examen:

-- Verificar que hay exactamente `n_questions` bloques &lt;quiz&gt;.
-- Verificar que cada &lt;quiz&gt; contiene 4 opciones y que exactamente las marcadas `[x]` corresponden a la(s) solución(es) que se desarrollarán en `## Soluciones desarrolladas`.

- Verificar la correspondencia uno-a-uno entre preguntas y bloques de solución (misma numeración y título descriptivo).

- Insertar entre el bloque de preguntas y la sección de soluciones el siguiente fragmento EXACTO (para que mkdocs_quiz muestre la introducción y resultados):

```
---

<!-- mkdocs-quiz intro -->

<!-- mkdocs-quiz results -->

---
```

- Actualización de `mkdocs.yml`: el generador debe, al crear un examen nuevo, añadir una entrada en la sección `nav:` apuntando al nuevo fichero Markdown relativo (por ejemplo `- Examen práctica 2 ([difficulty]): docs/examenes/examen-prueba-bajo.md`). Si la entrada ya existe no debe duplicarla. El generador debe validar que la modificación de `mkdocs.yml` preserve la sintaxis YAML y mantener el orden lógico del `nav`.

Parámetros recomendados (a pasar al prompt):

- `units`: lista de unidades a cubrir (ej. `[UD3, UD4, UD5]`).
- `n_questions`: número total de preguntas (recomendado 10–12 para exámenes cortos, 12–20 para exámenes completos).
- `focus`: porcentaje de preguntas prácticas frente a teóricas (ej. `70%`).
- `difficulty`: `facil|medio|dificil` o una mezcla (ej. `mix: 60% medio, 30% dificil, 10% facil`).
- `duration`: minutos estimados (ej. `60`).
- `use_template_exercises`: `true|false`.

Nota sobre el título y la dificultad:

- Si se pasa el parámetro `difficulty`, el generador debe añadir el nivel de dificultad entre paréntesis al final del `title` generado. Ejemplo: `Examen práctica 1 — Álgebra Lineal (UD3, UD4, UD5) (bajo)`.
- Si no se pasa `difficulty`, usar por defecto `medio` y añadir `(medio)` al `title`.

Prompt ejemplo (copiar/pegar en la IA, reemplazar parámetros):

"Genera un examen tipo test en Markdown compatible con `mkdocs_quiz`. Sigue exactamente las Reglas de formato estrictas descritas más arriba.

"Genera un examen tipo test en Markdown compatible con `mkdocs_quiz`. Sigue exactamente las Reglas de formato estrictas descritas más arriba.

- Parámetros: units=UD3,UD4,UD5; n_questions=12; focus=75%; difficulty=medio; duration=60; use_template_exercises=true.

- Nota: si `difficulty=medio` (o no se pasa `difficulty`), el `title` resultante debe terminar en ` (medio)`. Si `difficulty=bajo` el `title` terminará en ` (bajo)`.

- Instrucciones adicionales:
  - Toma como referencia `docs/examenes/examen-practica-1.md` para la estructura de ejemplo y `docs/examenes/ejercicios-clase.md` para las plantillas de ejercicios a transformar (si `use_template_exercises=true`).
  - Para cada ejercicio copiado desde `ejercicios-clase.md` cambia números y coeficientes aleatoriamente dentro de rangos razonables, manteniendo la misma dificultad y tipo de procedimiento.
  - Para ejercicios nuevos, genera enunciados coherentes con las unidades indicadas.
  - Asegúrate de incluir la sección `## Soluciones desarrolladas` con un bloque `???- details` por cada pregunta y que el desarrollo concuerde con la(s) opción(es) marcada(s) `[x]`.

Ejemplo mínimo de salida esperada (estructura exacta):

---

--- (YAML con `title`)

Duración estimada: 60 minutos. Lee con atención y marca la(s) respuesta(s) correcta(s). Algunas preguntas pueden tener más de una respuesta válida.

**Instrucciones**

- Responde marcando la opción correcta (a, b, c, d). Puede haber más de una correcta: marca todas las que correspondan.
- En las preguntas de cálculo se pide elegir la(s) opción(es) correcta(s); debajo de cada pregunta se incluye la solución desarrollada para estudiar.

---

<quiz>
Enunciado con LaTeX o texto.

- [ ] Opción 1
- [x] Opción 2
- [ ] Opción 3
- [ ] Opción 4

Explicación breve: Una o dos frases que justifican la(s) respuesta(s) correcta(s).
</quiz>

... (n_questions bloques similares)

## Soluciones desarrolladas

???- details "Solución pregunta 1 — <título breve>"
  
  Desarrollo completo y justificado (operaciones fila a fila, LaTeX, comprobaciones).

Fin.

"

Si quieres, puedo ahora:

- (A) Actualizar el prompt en el archivo `docs/examenes/examen-generator-prompt.md` (ya aplicado).
- (B) Generar un examen de prueba con parámetros concretos para validar la plantilla.
- (C) Ajustar los rangos aleatorios y plantillas de `ejercicios-clase.md` usados por `use_template_exercises`.

Indica cuál opción deseas seguir o responde a las dudas que te listo a continuación.
