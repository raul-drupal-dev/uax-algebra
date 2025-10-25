# Ejercicio 8 — Planos en el espacio

El plano $\pi$ está definido por la ecuación:
$2x-y+3z=6.$

a) Determine un vector normal al plano.  
b) Compruebe si el punto $P(3,0,0)$ pertenece al plano.  
c) Calcule la distancia del punto $Q(1,2,1)$ al plano $\pi$.

---

## Solución (explicada paso a paso)

Antes de empezar: la ecuación de un plano en la forma

???+ example Formula
    $$
    ax + by + cz = d
    $$

tiene como vector normal (perpendicular al plano) al vector $\mathbf{n}=(a,b,c)$. Con esto en mente, resolvemos los apartados.

### a) Vector normal

Comparando con $2x - y + 3z = 6$ se identifican los coeficientes $a=2$, $b=-1$, $c=3$. Por tanto un vector normal es

$$
\boxed{\mathbf{n} = (2,-1,3).}
$$

Breve comentario: cualquier múltiplo escalar de $\mathbf{n}$ también es normal al plano (p. ej. $2\mathbf{n}=(4,-2,6)$), porque la dirección perpendicular es la misma.

---

### b) ¿Pertenece $P(3,0,0)$ al plano?

Para comprobar pertenencia sustituimos las coordenadas de $P$ en la ecuación del plano:

$$
2\cdot3 - (0) + 3\cdot0 = 6 - 0 + 0 = 6.
$$

Como el resultado coincide con el lado derecho (6), concluimos que $P$ satisface la ecuación, por tanto

$$\boxed{P(3,0,0)\;\text{pertenece al plano }\pi.}$$

---

### c) Distancia del punto $Q(1,2,1)$ al plano

Fórmula (recordar): la distancia de un punto $Q=(x_0,y_0,z_0)$ al plano $ax+by+cz=d$ es

$$
\operatorname{dist}(Q,\pi) = \frac{|ax_0 + by_0 + cz_0 - d|}{\sqrt{a^2+b^2+c^2}}.
$$

Aplicamos con $a=2,b=-1,c=3,d=6$ y $Q=(1,2,1)$:

Numerador:

$$
|2\cdot1 + (-1)\cdot2 + 3\cdot1 - 6| = |2 -2 +3 -6| = | -3 | = 3.
$$

Denominador:

$$
\sqrt{2^2 + (-1)^2 + 3^2} = \sqrt{4+1+9} = \sqrt{14}.
$$

Por tanto

$$
\operatorname{dist}(Q,\pi) = \frac{3}{\sqrt{14}} \approx 0.8018.
$$

Respuesta final:

$$\boxed{\operatorname{dist}(Q,\pi)=\dfrac{3}{\sqrt{14}}\approx0.8018.}$$

Pequeña interpretación: la distancia es la longitud del segmento perpendicular al plano que une al punto con su proyección ortogonal sobre el plano.
