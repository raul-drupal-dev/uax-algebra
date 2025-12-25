## Terminologías — Unidad 3: Aplicaciones Lineales

| Término                 | Función                                                      | Descripción fácil de recordar                                                                    |
| :---------------------- | :----------------------------------------------------------- | :----------------------------------------------------------------------------------------------- |
| Aplicación lineal       | $f(a\mathbf{u}+b\mathbf{v})=a f(\mathbf{u})+b f(\mathbf{v})$ | Mapea vectores conservando sumas y escalares. "Suma y escala" se pueden aplicar antes o después. |
| Núcleo (Ker)            | $\{x\in V\mid f(x)=0\}$                                      | Vectores que se envían al cero. Piensa "los que desaparecen".                                    |
| Imagen (Im)             | $\{f(x)\mid x\in V\}$                                        | Todos los vectores alcanzados por la aplicación. "Lo que se consigue".                           |
| Teorema de la dimensión | $\dim V=\dim\ker f + \dim\operatorname{Im} f$                | Dimensión del dominio = nulidad + rango. Regla rápida para comprobar cuentas.                    |
| Inyectiva               | N/A                                                          | Solo el vector cero está en el núcleo. "Sin colisiones".                                         |
| Sobreyectiva            | N/A                                                          | La imagen = codominio. "Cubre todo el destino".                                                  |
| Isomorfismo             | $A$ cuadrada, $\det(A)\neq 0$                                | Aplicación biyectiva; tiene inversa lineal. "Mismo espacio, misma dimensión".                    |
| Matriz asociada         | $\mathbf{Y}=A\mathbf{X}$                                     | Representa la aplicación según bases; columnas = imágenes de la base. "Tabla de transformación". |
| Espacio dual ($V^*$)    | $\operatorname{Hom}(V,K)$                                    | Todas las formas lineales $V\to K$. "Los medidores escalares".                                   |
| Base dual               | $f_i(v_j)=\delta_{ij}$                                       | Formas que seleccionan coordenadas: cada una vale 1 en su vector y 0 en los demás.               |
| Anulador ($W^0$)        | $\{f\in V^*\mid f(w)=0\ \forall w\in W\}$                    | Formas que anulan todo un subespacio. "Lo que manda todo a cero".                                |
| Polinomios de Lagrange  | N/A                                                          | Polinomios que valen 1 en un punto y 0 en los otros; útiles para interpolar.                     |

