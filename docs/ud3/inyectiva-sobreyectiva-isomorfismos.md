# Inyectiva, Sobreyectiva e Isomorfismos

En esta página vemos las definiciones, criterios prácticos y relaciones entre estos conceptos usando núcleo, imagen y propiedades de matrices.

## Definiciones y criterios

- Inyectiva: $\mathrm{Ker}(f)=\{0\}$.
- Sobreyectiva: $\mathrm{Im}(f)=V'$ (la imagen coincide con el codominio).
- Biyectiva: inyectiva y sobreyectiva (como función, tiene inversa).

- Monomorfismo: morfismo que, en sentido categórico, corresponde a una aplicación "inyectiva"; en la categoría de espacios vectoriales equivale a $\mathrm{Ker}(f)=\{0\}$.
- Epimorfismo: morfismo que, en sentido categórico, corresponde a una aplicación "sobreyectiva"; en la categoría de espacios vectoriales equivale a $\mathrm{Im}(f)=V'$.

- Isomorfismo: aplicación lineal biyectiva; existe inversa lineal.

En particular, en la categoría de espacios vectoriales (Vect) los monomorfismos coinciden con las aplicaciones inyectivas y los epimorfismos con las aplicaciones sobreyectivas.

En términos de la matriz $A$ ($m\times n$) con rango $r$:

- Inyectiva $\Longleftrightarrow r=n$ (columnas independientes).
- Sobreyectiva $\Longleftrightarrow r=m$ (filas abren todo el codominio).
- Isomorfismo (cuando $m=n$): $\det(A)\neq 0$ (equivalente a $r=n=m$).

## Ejercicios

### Ejercicio 1

Comprobar que la matriz $A=\begin{pmatrix}1&1&1\\1&1&0\\-1&0&1\end{pmatrix}$ define un isomorfismo en $\mathbb{R}^3$.

???- example "Solución"
    Calculamos $\det(A)$ (expansión por la primera fila por ejemplo) y obtenemos $\det(A)=1\neq0$. Por tanto $A$ es invertible y $f$ es isomorfismo.

### Ejercicio 2

Sea $f:\mathbb{R}^3\to\mathbb{R}^2$ con matriz $A$ de rango 2. ¿Puede $f$ ser inyectiva? ¿Sobreyectiva?

???- example "Solución"
    Inyectiva: no, porque para inyectividad necesitaríamos $r=n=3$, pero $r=2\neq3$. Sobreyectiva: sí, porque $r=m=2$.

### Ejercicio 3

Demostrar que si $f:V\to W$ es un isomorfismo entonces $\dim V = \dim W$.

???- example "Solución"
    Como $f$ es isomorfismo es biyectiva. Por el teorema de la dimensión aplicado a $f$ (o a su inversa), tanto la nulidad como el rango cumplen que $\dim\mathrm{Ker}(f)=0$ y $\dim\mathrm{Im}(f)=\dim W$. Como $\dim V=0+\dim\mathrm{Im}(f)=\dim W$.

### Ejercicio 4

La matriz $B=\begin{pmatrix}1&2\\2&4\end{pmatrix}$ define ¿una aplicación inyectiva, sobreyectiva o ninguna?

???- example "Solución"
    Observamos que la segunda columna es 2 veces la primera; por tanto las columnas son dependientes y $r=1$. Como $n=2$, no es inyectiva; como $m=2$ y $r=1\neq2$, no es sobreyectiva tampoco.

### Ejercicio 5

Sea $A$ cuadrada $n\times n$ con $\det(A)=0$. Explica por qué $A$ no es isomorfismo.

???- example "Solución"
    $\det(A)=0$ implica que $A$ no es invertible, por tanto no existe matriz inversa y la aplicación lineal asociada no es biyectiva (tiene núcleo no trivial). Luego no es isomorfismo.

---

## Resumen

| Término      | Condición                | Resultado                                                 |
| ------------ | ------------------------ | --------------------------------------------------------- |
| Inyectiva    | $\mathrm{Ker}(f)=\{0\}$  | No hay dos vectores distintos que tengan la misma imagen. |
| Sobreyectiva | $\mathrm{Im}(f)=V'$      | La aplicación cubre todo el codominio.                    |
| Biyectivo    | Inyectiva y sobreyectiva | Como función, tiene inversa.                              |
| Monomorfismo | Inyectiva                | En Vect., equivale a $\mathrm{Ker}(f)=\{0\}$.             |
| Epimorfismo  | Sobreyectiva             | En Vect., equivale a $\mathrm{Im}(f)=V'$.                 |
| Isomorfismo  | Inyectiva y sobreyectiva | Existe una inversa lineal; espacios isomorfos.            |
