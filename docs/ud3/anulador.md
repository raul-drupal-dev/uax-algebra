# Anulador de un Subespacio

Definimos el anulador de un subespacio y mostramos cómo calcularlo y qué relación dimensional mantiene con el subespacio original.

## Definición

Para $W\subseteq V$, el anulador es

$$W^{0}=\{f\in V^{*}\;|\; f(w)=0,\;\forall w\in W\}$$

## Cálculo práctico

1. Escribir una forma genérica $f$ con coeficientes desconocidos.
2. Imponer $f(w_i)=0$ para los generadores $w_i$ de $W$.
3. Resolver el sistema y obtener una base de $W^{0}$.

## Ejercicios

### Ejercicio 1

En $\mathbb{R}^3$, sea $W=\mathrm{span}\{(1,0,1),(0,1,1)\}$. Calcular $W^{0}$.

???- example "Solución"
    Sea $f(x,y,z)=ax+by+cz$. 
    
    Impongamos $f(1,0,1)=a+c=0$ y $f(0,1,1)=b+c=0$. 
    
    De ahí $a=-c, b=-c$, y los coeficientes son $c(-1,-1,1)$. 
    
    Por tanto
    
    $$W^{0}=\mathrm{span}\{-x_1-x_2+x_3\}$$

### Ejercicio 2

Si $\dim V=5$ y $\dim W=3$, ¿qué dimensión tiene $W^{0}$?

???- example "Solución"
    $\dim W^{0}=\dim V - \dim W = 5 - 3 = 2$.

### Ejercicio 3

Demostrar que $W^{0}$ es un subespacio de $V^{*}$.

???- example "Solución"
    Sea $f,g\in W^{0}$ y $\alpha,\beta\in K$. 
    
    Para todo $w\in W$ tenemos $(\alpha f+\beta g)(w)=\alpha f(w)+\beta g(w)=0$, 
    
    por lo que la combinación lineal está en $W^{0}$. 
    
    Además el cero está presente. Luego es subespacio.

### Ejercicio 4

Encontrar el anulador de $W=\mathrm{span}\{(1,2,0,0),(0,1,1,0)\}\subseteq\mathbb{R}^4$.

???- example "Solución"
    Sea $f(x)=a x_1+b x_2+c x_3+d x_4$. 
    
    Imponemos las condiciones y resolvemos el sistema para $(a,b,c,d)$. 
    
    El espacio solución será $W^{0}$.

### Ejercicio 5

Relacione el anulador con la imagen de la transpuesta de una matriz.

???- example "Solución"
    Si $A$ es la matriz de una aplicación $f:V\to W$ en bases dadas, entonces el anulador de la imagen de $f$ coincide con el núcleo de la aplicación dual, que se puede relacionar con $\mathrm{Ker}(A^T)$ (dependiendo de elecciones de bases). 
    
    En palabras: formas que anulan la imagen corresponden a vectores en el núcleo de $A^T$.

---

## Resumen

| Concepto | Fórmula | Observación |
| --- | --- | --- |
| Anulador | $W^{0}=\{f\in V^{*}\;\vert\; f(w)=0,\forall w\in W\}$ | Subespacio de $V^{*}$. |
| Dimensión | $\dim W + \dim W^{0} = \dim V$ | Fundamental para problemas duales. |