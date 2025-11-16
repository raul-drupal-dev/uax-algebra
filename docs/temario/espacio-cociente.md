---
title: Espacio cociente
---

## 4. Espacio cociente

Este apartado amplía el concepto de espacio cociente y muestra cómo trabajar con clases laterales, operaciones en el cociente, ejemplos y cómo calcular una base y la dimensión.

### 4.1. Definición: clases laterales y relación de equivalencia

Sea $V$ un espacio vectorial y $U\subseteq V$ un subespacio. Definimos una relación en $V$ por

$$
v\sim w \quad\Longleftrightarrow\quad v-w\in U.
$$

Es fácil verificar que $\sim$ es una relación de equivalencia. La clase de equivalencia (o clase lateral) de $v$ se denota

$$
[v]=v+U=\{v+u:\ u\in U\}.
$$

Las clases laterales particionan $V$ y las clases distintas son disjuntas.

### 4.2. Espacio cociente $V/U$

El espacio cociente $V/U$ es el conjunto de todas las clases laterales:

$$
V/U=\{[v]:v\in V\}.
$$

Definimos operaciones en $V/U$ por

$$
[v]+[w]=[v+w],\qquad \alpha [v]=[\alpha v].
$$

Hay que comprobar que estas operaciones están bien definidas: si $[v]=[v']$ y $[w]=[w']$, entonces $[v+w]=[v'+w']$ y $[\alpha v]=[\alpha v']$ (usar que las diferencias pertenecen a $U$ y que $U$ es subespacio).

Con estas operaciones $V/U$ es un espacio vectorial.

### 4.3. Proyección canónica

Existe la proyección canónica (o mapa natural)

$$
\pi:V\to V/U,\qquad \pi(v)=[v].
$$

Es un homomorfismo lineal y tiene nucleo $\ker\pi=U$; además $\pi$ es sobreyectiva por construcción. Este mapa es útil para relacionar propiedades de $V$ y $V/U$.

### 4.4. Dimensión y bases

Si $V$ es de dimensión finita y $U$ subespacio, entonces

$$
\dim(V/U)=\dim(V)-\dim(U).
$$

Consecuencia práctica: si $W$ es un subespacio complementario de $U$ (es decir $V=U\oplus W$), entonces la aplicación

$$
W\to V/U,\quad w\mapsto [w]
$$

es un isomorfismo; así las clases de equivalencia de los vectores de una base de $W$ forman una base de $V/U$.

Ejemplo constructivo para obtener una base de $V/U$:

1. Encuentra una base de $U$ y complétala a una base de $V$ (método estándar de "completar a base").
2. Los vectores añadidos a la base de $U$ (los que completan hasta la base de $V$) proyectan a una base de $V/U$.

### 4.5. Ejemplo en $\mathbb{R}^3$

Sea $V=\mathbb{R}^3$ y $U=\mathrm{span}\{(1,0,1),(0,1,1)\}$. Observamos que $U$ tiene dimensión 2 (las dos columnas son independientes). Entonces $\dim(V/U)=3-2=1$.

Para obtener una base de $V/U$:

1. Completamos una base de $U$ a una base de $\mathbb{R}^3$. Por ejemplo, las columnas de la matriz
   $$
   A=\begin{pmatrix}1&0&0\\\\0&1&0\\\\1&1&1\end{pmatrix}
   $$
   contienen una base de $U$ (las dos primeras columnas) y un vector adicional $(0,0,1)$ que completa la base.
2. La clase $[(0,0,1)]$ genera $V/U$. En coordenadas, cualquier $v\in\mathbb{R}^3$ se expresa como $v=u+\lambda (0,0,1)$ y su clase en el cociente queda determinada por $\lambda$.

### 4.6. Propiedades útiles y observaciones

- Si $T:V\to W$ es una aplicación lineal con $U\subseteq\ker T$, entonces existe una única transformación lineal $\overline{T}:V/U\to W$ tal que $T=\overline{T}\circ\pi$ (propiedad universal del cociente).
- Para calcular en la práctica en coordenadas, trabaja con la proyección canónica y, si es necesario, elige complementos y representaciones explícitas.

### 4.7. Ejercicios resueltos (rápido)

Ejercicio 1. Sea $V=\mathbb{R}^2$ y $U=\mathrm{span}\{(1,1)\}$. Calcular $V/U$ y su dimensión.

Solución: $\dim(V)=2$, $\dim(U)=1$ entonces $\dim(V/U)=1$. Una base de $V$ es $\{(1,1),(1,-1)\}$; proyectando el segundo vector obtenemos una base de $V/U$: $[(1,-1)]$.

### 4.8. Resumen y tabla de fórmulas

Resumen escueto:

- Clases laterales: $[v]=v+U$.
- Espacio cociente: $V/U$ con operaciones $[v]+[w]=[v+w]$, $\alpha[v]=[\alpha v]$.
- Proyección canónica $\pi:V\to V/U$ con $\ker\pi=U$.
- Dimensión: $\dim(V/U)=\dim(V)-\dim(U)$.

Tabla de fórmulas:

| Término                     | Fórmula                                | Mini descripción                                        |
| --------------------------- | -------------------------------------- | ------------------------------------------------------- |
| Clase lateral               | $[v]=v+U$                              | Conjunto $\{v+u:u\in U\}$.                              |
| Operaciones en $V/U$        | $[v]+[w]=[v+w],\ \alpha[v]=[\alpha v]$ | Bien definidas si $U$ es subespacio.                    |
| Proyección canónica         | $\pi:V\to V/U,\ \pi(v)=[v]$            | Homomorfismo lineal con $\ker\pi=U$.                    |
| Dimensión del cociente      | $\dim(V/U)=\dim(V)-\dim(U)$            | Fórmula esencial para espacios finitos.                 |
| Isomorfismo con complemento | Si $V=U\oplus W$ entonces $V/U\cong W$ | Las clases de una base de $W$ forman una base de $V/U$. |

Files edited: `docs/temario/espacio-cociente.md` — ampliado con definiciones, ejemplos, ejercicios y tabla de fórmulas.
