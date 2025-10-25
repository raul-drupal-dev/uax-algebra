# Ejercicio 7 — Proyecciones

Sean $\mathbf{a}=(4,2,-1),\;\mathbf{b}=(1,0,1).$

a) Calcule la proyección de $\mathbf{a}$ sobre $\mathbf{b}$.  
b) Determine la componente de $\mathbf{a}$ perpendicular a $\mathbf{b}$.

La proyección de un vector sobre otro es la componente de uno que queda "sobre" la dirección del otro —es decir, cuánto de ($\mathbf{a}$) apunta en la dirección de ($\mathbf{b}$). Es útil para extraer la parte paralela a una dirección (por ejemplo en mínimos cuadrados, sombras geométricas o descomposición de fuerzas).

La componente perpendicular (residuo) es la parte de ($\mathbf{a}$) que queda ortogonal a ($\mathbf{b}$); sirve para medir el error ortogonal, para separar información paralela y ortogonal en análisis y para formular problemas de aproximación.

## a) Proyección de $\mathbf{a}$ sobre $\mathbf{b}$

???+ example "Fórmula"

    $$
    \operatorname{proj}_{\mathbf{b}}(\mathbf{a}) = \frac{\mathbf{a}\cdot\mathbf{b}}{\mathbf{b}\cdot\mathbf{b}}\,\mathbf{b}.
    $$

Cálculos:

Por tanto

$$
\operatorname{proj}_{\mathbf{b}}(\mathbf{a}) = \frac{3}{2}(1,0,1) = \left(\tfrac{3}{2},0,\tfrac{3}{2}\right).
$$

## b) Componente perpendicular de $\mathbf{a}$ respecto a $\mathbf{b}$

???+ example Definición

    $$
    \operatorname{ort}_{\mathbf{b}}(\mathbf{a}) = \mathbf{a} - \operatorname{proj}_{\mathbf{b}}(\mathbf{a}).
    $$

Cálculo:

$$
\mathbf{a} - \operatorname{proj}_{\mathbf{b}}(\mathbf{a}) = (4,2,-1) - \left(\tfrac{3}{2},0,\tfrac{3}{2}\right) = \left(\tfrac{5}{2},2,-\tfrac{5}{2}\right).
$$

Verificación:

$$
\left(\tfrac{5}{2},2,-\tfrac{5}{2}\right)\cdot(1,0,1) = \tfrac{5}{2} - \tfrac{5}{2} = 0,
$$

así que la componente calculada es efectivamente perpendicular a $\mathbf{b}$.

### Aplicaciones en Machine Learning / Deep Learning

Breve contexto aplicado: en IA y ML la proyección y su residuo son herramientas prácticas. Algunos usos concretos y por qué importan:

- Mínimos cuadrados y regresión lineal: ajustar un modelo lineal equivale a proyectar el vector de observaciones sobre el subespacio generado por las columnas de la matriz de diseño; el residuo es el error (lo que el modelo no explica).
- Reducción de dimensión (PCA / SVD): PCA proyecta datos sobre direcciones (componentes) que capturan máxima varianza; las proyecciones retienen la señal principal y el residuo contiene variación menos relevante (o ruido), lo que ayuda a acelerar modelos y reducir overfitting.
- Preprocesado y eliminación de multicolinealidad: detectar y eliminar o combinar características linealmente dependientes mejora la estabilidad numérica de entrenamientos (evita matrices singulares o mal condicionadas) y ayuda a interpretar coeficientes en modelos lineales.
- Embeddings y aproximaciones de baja dimensión: técnicas de factorización (SVD, autoencoders) trabajan proyectando alta dimensionalidad a espacios latentes de menor dimensión; la idea constructiva es la misma —representar señales mediante proyecciones sobre subespacios relevantes.

Consejo práctico: para datos reales usa SVD para inspeccionar valores singulares (direcciones significativas) y verifica el tamaño del residuo; si el residuo es pequeño respecto a la proyección, una representación de menor dimensión suele ser suficiente.
