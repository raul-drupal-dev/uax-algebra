title: "UD6 — Ejercicios de Combinatoria"
slug: "ud6-ejercicios-combinatoria"
date: "2026-01-10"
authors: ["Profesor Ejemplo","Raul Jimenez"]
tags: ["ud6","combinatoria","ejercicios"]
difficulty: "intermedio"
type: "ejercicio"
prerequisitos: ["ud6-combinatoria"]

---

## 📝 Tarea

Resuelve los siguientes ejercicios aplicando las fórmulas adecuadas y justifica cada paso.

### Ejercicio 1

¿Cuántas palabras distintas se pueden formar con las letras de "aabbbc"?

???- example "Respuesta"

    Aplicamos permutación con repetición: $n=6$, $n_a=2,n_b=3,n_c=1$.

    $$
    \frac{6!}{2!\,3!\,1!} = 60
    $$

    **Resultado:** 60.

---

### Ejercicio 2

¿Cuántos números de tres cifras sin repetición se pueden formar con los dígitos $\{1,2,3,4,5\}$?

???- example "Respuesta"

    Primer dígito: 5 opciones (no hay 0). Segundo: 4. Tercero: 3.

    Total: $5\cdot4\cdot3 = 60$, que coincide con $V_{5,3}=\frac{5!}{2!}=60$.

    **Resultado:** 60.

---

### Ejercicio 3

¿Cuántas formas hay de elegir 3 bolas de una urna con 4 tipos distintos si la repetición está permitida y el orden no importa?

???- example "Respuesta"

    Es combinación con repetición: $n=4,k=3$.

    $$
    CR_{4,3} = {4+3-1 \choose 3} = {6\choose3} = 20
    $$

    **Resultado:** 20.

---

### Ejercicio 4 (reto)

De cuántas maneras se pueden sentar 6 personas en una fila si dos personas concretas no pueden estar juntas?

???- example "Respuesta"

    Total de permutaciones sin restricción: $6!$.

    Número de permutaciones donde las dos están juntas: considerarlas como bloque → $5!\cdot2!$.

    Por tanto, válidas: $6! - 5!\cdot2! = 720 - 240 = 480$.

    **Resultado:** 480.

---

