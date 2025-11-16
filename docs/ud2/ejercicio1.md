# 1. Espacios vectoriales y bases

## Ejercicio 1.1

Sea \(P_2\) el conjunto de polinomios reales de grado a lo sumo 2.

Los espacios vectoriales son conjuntos con dos operaciones (suma y multiplicación por escalar) que cumplen una serie de axiomas (cierre, existencia de neutro e inverso, asociatividad, distributividad...). Para probar que un conjunto es espacio vectorial, basta verificar los axiomas fundamentales o comprobar que es un subespacio de un espacio vectorial conocido.

???+ example "Propiedades clave / Fórmulas"

    - Cierre bajo suma: si \(p,q\in P_2\) entonces \(p+q\in P_2\).
    - Cierre bajo multiplicación por escalar: si \(p\in P_2,\,\lambda\in\mathbb{R}\) entonces \(\lambda p\in P_2\).
    - Base canónica: \(\{1,x,x^2\}\).
    - Dimensión: \(\dim(P_2)=3\).

Resolución

Sea 



\(p(x)=a_0+a_1x+a_2x^2\) 

y

 \(q(x)=b_0+b_1x+b_2x^2\). 

 Entonces

$$
p(x)+q(x)=(a_0+b_0)+(a_1+b_1)x+(a_2+b_2)x^2\in P_2,
$$

y para \(\lambda\in\mathbb{R}\)

$$
\lambda p(x)=(\lambda a_0)+(\lambda a_1)x+(\lambda a_2)x^2\in P_2.
$$

Las demás propiedades (neutro aditivo, inversos, leyes distributivas y asociativas) se heredan de \(\mathbb{R}\). Por tanto \(P_2\) es un espacio vectorial.

La base canónica es

$$
\{1,\; x,\; x^2\}
$$

y cualquier \(p\in P_2\) se expresa de manera única como \(a_0\cdot1+a_1\cdot x+a_2\cdot x^2\). Entonces

$$
\boxed{\dim(P_2)=3.}
$$

Intuición IA/DL: representar datos con polinomios de bajo grado es equivalente a usar un mapa de características polinómico. La dimensión coincide con el número de características disponibles.

---

## Ejercicio 1.2

Considere \(v_1=(1,0,1),\ v_2=(1,1,0),\ v_3=(1,1,1),\ v_4=(1,2,1)\) en \(\mathbb{R}^3\).

Un conjunto de vectores es linealmente independiente si la única combinación lineal que da el vector cero es la trivial. Para calcular independencia es común formar la matriz con vectores como columnas y calcular su rango mediante eliminación por filas.

???+ example "Método: matriz y rango"

    - Construir la matriz \(A=[v_1\ v_2\ v_3\ v_4]\) como columnas.
    - Calcular el rango de \(A\) (reducción por filas).
    - Si el rango = número de vectores, son independientes; si el rango < número de vectores, hay dependencia.

Resolución

Formamos la matriz

$$
A=\begin{pmatrix}
1 & 1 & 1 & 1 \\
0 & 1 & 1 & 2 \\
1 & 0 & 1 & 1
\end{pmatrix}.
$$

Aplicamos operaciones elementales para reducir por filas (esquema): restamos la fila 1 a la fila 3:

$$
R_3 \leftarrow R_3 - R_1 \Rightarrow \begin{pmatrix}
1 & 1 & 1 & 1 \\
0 & 1 & 1 & 2 \\
0 & -1 & 0 & 0
\end{pmatrix}.
$$

Sumando \(R_2\) a \(R_3\):

$$
R_3 \leftarrow R_3 + R_2 \Rightarrow \begin{pmatrix}
1 & 1 & 1 & 1 \\
0 & 1 & 1 & 2 \\
0 & 0 & 1 & 2
\end{pmatrix}.
$$

Observamos pivotes en las primeras tres columnas, por lo que el rango es \(3\). Como estamos en \(\mathbb{R}^3\), el espacio máximo tiene dimensión 3; con cuatro vectores necesariamente hay dependencia lineal.

Buscamos una dependencia explícita: suponemos

$$
a v_1 + b v_2 + c v_3 = v_4.
$$

Por componentes:

$$
\begin{cases}
a + b + c = 1 \\
b + c = 2 \\
a + c = 1
\end{cases}
$$

Resolviendo el sistema se obtiene \(c=2,\ a=-1,\ b=0\). Por tanto

$$
v_4 = -v_1 + 2v_3.\qquad\boxed{}
$$

Conclusiones sobre independencia

- Todos los pares de vectores son independientes (ninguno es múltiplo escalar de otro).
- Entre las tripletas, la única dependiente es \(\{v_1,v_3,v_4\}\) dado que \(v_4\) es combinación de \(v_1\) y \(v_3\).

Intuición IA/DL: vectores dependientes significan características redundantes; detectarlas ayuda a reducir dimensionalidad y mejorar estabilidad numérica en entrenamiento.

---

## Ejercicio 1.3

Sea \(S=\{(1,3,4,1),\ (2,6,8,2),\ (2,5,7,2)\}\subset\mathbb{R}^4\). Obtenga una base de \(\operatorname{span}(S)\) y su dimensión.

Para obtener una base de \(\operatorname{span}(S)\) eliminamos vectores redundantes (proporcionales o combinaciones lineales de otros). Un procedimiento práctico es poner los vectores como filas o columnas de una matriz y reducir.

???+ example "Detección de redundancia"

    - Si un vector es múltiplo exacto de otro, es redundante.
    - Comprobar si hay \(\alpha\) tal que \(v_j=\alpha v_i\) para alguno.
    - Alternativamente, comprobar el rango de la matriz formada por los vectores.

Resolución

Observamos que

$$
(2,6,8,2)=2\cdot(1,3,4,1),
$$

por lo que el segundo vector es redundante.

Quedan los vectores \(v_1=(1,3,4,1)\) y \(v_3=(2,5,7,2)\). Comprobamos si son independientes buscando \(\alpha\) tal que \(\alpha v_1=v_3\). De la primera componente \(\alpha=2\), pero entonces la segunda componente daría \(3\cdot2=6\neq5\). No existe \(\alpha\) que satisfaga todas las componentes, luego son independientes.

Por tanto una base de \(\operatorname{span}(S)\) es

$$
\left\{(1,3,4,1),\ (2,5,7,2)\right\}
$$

y

$$
\boxed{\dim\operatorname{span}(S)=2.}
$$

Intuición IA/DL: eliminar vectores proporcionales reduce redundancia de características y simplifica modelos.

---

## Ejercicio 1.4

En \(P_3\) estudia si \(\{1+x,\ x+x^2,\ x^2+x^3\}\) es linealmente independiente.

Para comprobar independencia en espacios de polinomios, lo habitual es expresar cada polinomio en la base canónica \(\{1,x,x^2,x^3\}\) y comparar coeficientes.

???+ example "Idea / Fórmula"

    - Escribir cada polinomio como vector de coeficientes en la base \(\{1,x,x^2,x^3\}\).
    - Igualar la combinación lineal a cero y resolver el sistema por coeficientes.

Resolución

Convertimos los polinomios en vectores de coeficientes:

$$
1+x \mapsto \begin{pmatrix}1\\1\\0\\0\end{pmatrix},\qquad
x+x^2 \mapsto \begin{pmatrix}0\\1\\1\\0\end{pmatrix},\qquad
x^2+x^3 \mapsto \begin{pmatrix}0\\0\\1\\1\end{pmatrix}.
$$

Planteamos la combinación lineal nula:

$$
a(1+x)+b(x+x^2)+c(x^2+x^3)=0.
$$

Igualando coeficientes de \(1,x,x^2,x^3\) obtenemos el sistema

$$
\begin{cases}
a = 0 \\
a+b = 0 \\
b+c = 0 \\
c = 0
\end{cases}
$$

De la primera y última ecuación \(a=0\) y \(c=0\). Sustituyendo en las otras se obtiene \(b=0\). Por lo tanto la única solución es la trivial.

$$
\boxed{\{1+x,\ x+x^2,\ x^2+x^3\}\ \text{es linealmente independiente en }P_3.}
$$

Intuición IA/DL: cada polinomio cubre una "ventana" distinta de potencias de \(x\); aportan información independiente.

