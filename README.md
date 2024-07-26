[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/EID3BRwM)
# Unidad 1
## Definiciones

### 1. CPU (Central Processing Unit)
La Unidad Central de Procesamiento (CPU) es el componente principal de un ordenador que realiza la mayoría de las operaciones de procesamiento de datos. Es responsable de ejecutar instrucciones de programas mediante la realización de operaciones aritméticas, lógicas, de control y de entrada/salida.

### 2. ALU (Arithmetic Logic Unit)
La Unidad Aritmética Lógica (ALU) es un circuito digital dentro de la CPU que realiza operaciones aritméticas (como suma, resta, multiplicación y división) y lógicas (como AND, OR, NOT, XOR). Es una parte crucial del procesamiento de datos en la CPU.

### 3. Registros
Los registros son pequeñas unidades de almacenamiento dentro de la CPU que se utilizan para almacenar temporalmente datos y direcciones durante la ejecución de instrucciones.

#### 3.1 Registros de propósito general
Estos registros pueden ser utilizados para una variedad de propósitos durante la ejecución de programas. Se utilizan para almacenar datos intermedios, resultados de operaciones, y direcciones de memoria.

#### 3.2 Registros específicos
- **Program Counter (PC)**: Registra la dirección de la siguiente instrucción a ser ejecutada.
- **Stack Pointer (SP)**: Apunta a la parte superior de la pila (stack) en la memoria, que se utiliza para el almacenamiento temporal de datos durante la ejecución de subrutinas y gestión de interrupciones.

### 4. Unidad de control
La unidad de control es el componente de la CPU que dirige y coordina todas las operaciones de la computadora. Interpreta las instrucciones del programa y genera las señales necesarias para ejecutar esas instrucciones mediante la activación de las distintas unidades funcionales de la CPU.

### 5. Buses de datos y de dirección
- **Bus de datos**: Es el canal que transporta datos entre la CPU, la memoria y los dispositivos periféricos.
- **Bus de dirección**: Es el canal que transporta las direcciones de memoria desde la CPU a la memoria y a otros dispositivos para especificar la ubicación donde se deben leer o escribir los datos.

### 6. Memoria
La memoria en un sistema informático se refiere al componente que almacena datos e instrucciones para ser accedidos y ejecutados por la CPU. Incluye tanto la memoria volátil (RAM) como la memoria no volátil (ROM, almacenamiento secundario).

### 7. Opcode
El código de operación (Opcode) es la parte de una instrucción de máquina que especifica la operación que debe realizarse. Es una secuencia de bits que la CPU interpreta para llevar a cabo una operación específica como carga, almacenamiento, salto, o una operación aritmética o lógica.

## Referencias

- Stallings, W. (2018). *Computer Organization and Architecture*. Pearson.
- Patterson, D. A., & Hennessy, J. L. (2017). *Computer Organization and Design: The Hardware/Software Interface*. Morgan Kaufmann.
- Tanenbaum, A. S., & Austin, T. (2013). *Structured Computer Organization*. Pearson.
- Mano, M. M., & Kime, C. R. (2008). *Logic and Computer Design Fundamentals*. Prentice Hall.

# Ejercicio 2
El modelo de computador se compone de una CPU que recibe, decodifica y ejecuta instrucciones. Las recibe de la ROM, con la que se comunica por medio del registro A y el registro D, el registro A de la ROM recibe la señal de PC que tiene la dirección del siguiente programa, y através del registro D envía los datos de la instrucción a la CPU. La señal de Clk genera pulsos, dependiendo de la arquitectura, en cada pulso se ejecuta una instrucción simple o se necesitan varias para ejecutar una instrucción compleja. El computador se comunica a través de un elemento de memoria con el teclado y la pantalla.

# Ejercicio 4
En la CPU, el fetch es buscar la instrucción en la ROM comunicandose con ella con los registros A y D, luego la CPU decodifica la instrucción internamente del lenguaje hexadecimal al lenguaje de máquina y finalmente la ejecuta.

# Ejercicio 6

Las instrucciones Tipo A escriben en el registro A un número, en este computador, se usa para direccionar registros de entre más de 32k bytes de memoria 

Las instrucciones Tipo C hacen operaciones de control de flujo y manipulación de memoria. El arquetipo de instrucción tipo C es destino=operacion;salto y un ejemplo puede ser D = A que lee el valor del registro A y el destino es el registro D.

# Ejercicio 7

Con los tres primeros bits, la CPU sabe si la instrucción es tipo A o C mediante un circuito lógico. El bit más significativo pasa por una compuerta NOT, si el resultado es 1, la instrucción es de tipo A. Los dos bits más significativos se los pasa por una AND y el resultado se hace otra AND con el tercer bit más significativo y si el resultado es 1, la instrucción es tipo C
