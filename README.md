[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/EID3BRwM)
# Actividad 1
## Ejercicio 1

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

### Referencias

- Stallings, W. (2018). *Computer Organization and Architecture*. Pearson.
- Patterson, D. A., & Hennessy, J. L. (2017). *Computer Organization and Design: The Hardware/Software Interface*. Morgan Kaufmann.
- Tanenbaum, A. S., & Austin, T. (2013). *Structured Computer Organization*. Pearson.
- Mano, M. M., & Kime, C. R. (2008). *Logic and Computer Design Fundamentals*. Prentice Hall.

## Ejercicio 2
El modelo de computador se compone de una CPU que recibe, decodifica y ejecuta instrucciones. Las recibe de la ROM, con la que se comunica por medio del registro A y el registro D, el registro A de la ROM recibe la señal de PC que tiene la dirección del siguiente programa, y através del registro D envía los datos de la instrucción a la CPU. La señal de Clk genera pulsos, dependiendo de la arquitectura, en cada pulso se ejecuta una instrucción simple o se necesitan varias para ejecutar una instrucción compleja. El computador se comunica a través de un elemento de memoria con el teclado y la pantalla.

## Ejercicio 4
En la CPU, el fetch es buscar la instrucción en la ROM comunicandose con ella con los registros A y D, luego la CPU decodifica la instrucción internamente del lenguaje hexadecimal al lenguaje de máquina y finalmente la ejecuta.

## Ejercicio 6

Las instrucciones Tipo A escriben en el registro A un número, en este computador, se usa para direccionar registros de entre más de 32k bytes de memoria 

Las instrucciones Tipo C hacen operaciones de control de flujo y manipulación de memoria. El arquetipo de instrucción tipo C es destino=operacion;salto y un ejemplo puede ser D = A que lee el valor del registro A y el destino es el registro D.

## Ejercicio 7

Con los tres primeros bits, la CPU sabe si la instrucción es tipo A o C mediante un circuito lógico. El bit más significativo pasa por una compuerta NOT, si el resultado es 1, la instrucción es de tipo A. Los dos bits más significativos se los pasa por una AND y el resultado se hace otra AND con el tercer bit más significativo y si el resultado es 1, la instrucción es tipo C

## Ejercicio 9

El código utiliza las direcciones 16 y 17 de la RAM para guardar un contador "i" y un resultado "sum". Luego revisa el "i" para ver si es mayor o igual a 100 por medio de el registro D y el salto JLE, si es mayor el programa termina su ejecución pero si es menor suma el número "i" al acumulado "sum" y le suma 1 al contador "i". Finalmente se reinicia el ciclo por medio del salto JMP hasta que se cumpla la condición de i, cuando sucede esto el programa termina en un bucle en el que se pasa de la instrucción 19 a la instrucción 18 sin cambiar nada.

De esta forma, sum = 1+2+3+...+100 = 4950 cuando i llega a 100

# Actividad 2

## 1
Un mapa de memoria de un microprocesador o microcontrolador es una representación de todas las direcciones que la CPU puede generar para acceder a diferentes tipos de memoria y periféricos. Este mapa está relacionado con el Bus de Direcciones del procesador, un conjunto de líneas que la CPU utiliza para enviar las direcciones de memoria. 

- **Bus de Direcciones:** Cada línea del bus representa un bit en la dirección de memoria. Un bus de 16 bits, por ejemplo, permite acceder a 65536 ubicaciones de memoria diferentes.
- **Mapa de Memoria:** Las direcciones de memoria pueden asignarse a diferentes tipos de memoria (RAM, ROM) y periféricos. La organización eficiente del mapa de memoria es crucial para el rendimiento del sistema.
- **Microprocesador 8086:** Tiene un espacio de direcciones de 20 bits, lo que permite acceder a 1 MB de memoria. Utiliza un bus de direcciones y datos multiplexado, lo que reduce la cantidad de pines necesarios y simplifica el diseño.
- **Arquitectura de Von Neumann:** Unifica la memoria para instrucciones y datos, accediendo a través del mismo bus.
- **Arquitectura de Harvard:** Separa las memorias de instrucciones y datos, permitiendo acceso simultáneo y aumentando la eficiencia.
- **Set de Instrucciones:** Conjunto de comandos que un procesador puede ejecutar, incluyendo transferencias de datos, operaciones aritméticas/lógicas, control de flujo y manipulación de bits. La sintaxis, el opcode, el tamaño y los ciclos de reloj son características importantes.
- **Arquitecturas CISC y RISC:**
  - **CISC:** Instrucciones complejas que realizan múltiples tareas, decodificación más lenta, tamaño de instrucción variable, uso de microprogramación (ej. x86).
  - **RISC:** Instrucciones simples que realizan una sola tarea, decodificación rápida, tamaño de instrucción fijo, eficiente en pipelining (ej. ARM, MIPS).

## 2 - Procesador MSP430
- **Arquitectura:** Von Neumann, los datos y las instrucciones comparten espacio de memoria y se accede a ellos con un solo bus.
- **Mapa de memoria:** 
    - **Memoria de Programa (Flash):** Esta es la memoria no volátil donde se almacena el código del programa. Ubicada desde 0xF000 a 0xFFFF.
    - **Memoria RAM:** Abarca desde 0x0200 a 0x02FF.
    - **Periféricos:** Los periféricos y los registros de control se mapean en las direcciones bajas de memoria, desde 0x0000 a 0x01FF.
    - **Memoria de Información:** Una sección adicional de memoria no volátil utilizada para almacenar datos constantes, abarcando desde 0x1000 a 0x10FF.

[Referencia del MSP430](https://www.ti.com/es-mx/microcontrollers-mcus-processors/msp430-microcontrollers/overview.html)

## 3

### Procesadores consultados
1. **ARM Cortex-A53**
2. **Intel Core i7 (Skylake)**
3. **Atmel AVR ATmega328P**

### Instrucciones Comparadas
1. **MOV (Transferencia de Datos)**
2. **ADD (Aritmética)**
3. **JMP (Control de Flujo)**

### Comparación de Instrucciones

#### 1. **MOV (Transferencia de Datos)**

| **Característica**      | **ARM Cortex-A53**            | **Intel Core i7 (Skylake)**        | **Atmel AVR ATmega328P**            |
|-------------------------|-------------------------------|------------------------------------|-------------------------------------|
| **Longitud**            | 4 bytes                       | 3 bytes                            | 2 bytes                             |
| **Ciclos de Reloj**     | 1 ciclo                       | 1 ciclo                            | 1 ciclo                             |
| **Complejidad**         | Baja                          | Baja                               | Baja                                |
| **Descripción**         | Transfiere datos entre registros o de memoria a registro. | Transfiere datos entre registros o de memoria a registro. | Transfiere datos entre registros o de memoria a registro. |

#### 2. **ADD (Aritmética)**

| **Característica**      | **ARM Cortex-A53**            | **Intel Core i7 (Skylake)**        | **Atmel AVR ATmega328P**            |
|-------------------------|-------------------------------|------------------------------------|-------------------------------------|
| **Longitud**            | 4 bytes                       | 3 bytes                            | 2 bytes                             |
| **Ciclos de Reloj**     | 1 ciclo                       | 1 ciclo                            | 1 ciclo                             |
| **Complejidad**         | Baja                          | Baja                               | Baja                                |
| **Descripción**         | Suma dos registros y almacena el resultado en un registro. | Suma dos registros y almacena el resultado en un registro. | Suma dos registros y almacena el resultado en un registro. |

#### 3. **JMP (Control de Flujo)**

| **Característica**      | **ARM Cortex-A53**            | **Intel Core i7 (Skylake)**        | **Atmel AVR ATmega328P**            |
|-------------------------|-------------------------------|------------------------------------|-------------------------------------|
| **Longitud**            | 4 bytes                       | 5 bytes                            | 2 bytes                             |
| **Ciclos de Reloj**     | 1 ciclo                       | 1 ciclo                            | 2 ciclos                            |
| **Complejidad**         | Baja                          | Baja                               | Baja                                |
| **Descripción**         | Salta a una dirección específica. | Salta a una dirección específica. | Salta a una dirección específica. |

### Conclusiones

1. **Longitud de las Instrucciones**: Las instrucciones en el ARM Cortex-A53 y el Intel Core i7 suelen ser más largas en comparación con las del AVR ATmega328P. Esto se debe a la mayor complejidad y capacidad de direccionamiento en los procesadores más avanzados.
   
2. **Ciclos de Reloj**: La mayoría de las instrucciones básicas (MOV y ADD) en los tres microprocesadores se ejecutan en un solo ciclo de reloj. Sin embargo, el JMP en el AVR ATmega328P requiere dos ciclos, lo que se debe a su arquitectura más simple y menos optimizada en comparación con los procesadores modernos.

3. **Complejidad**: Todas las instrucciones comparadas tienen una baja complejidad. Sin embargo, la implementación específica de estas instrucciones puede variar considerablemente entre diferentes arquitecturas.

4. **Optimización y Uso**: Los procesadores más modernos, como el ARM Cortex-A53 y el Intel Core i7, están altamente optimizados para ejecutar instrucciones básicas de manera eficiente. El AVR ATmega328P, siendo un microcontrolador de 8 bits, tiene una arquitectura más sencilla y menos optimizada, reflejándose en instrucciones más cortas pero a veces más lentas en términos de ciclos de reloj.

### Referencias
1. [ARM Cortex-A53 Technical Reference Manual](https://developer.arm.com/documentation/100442/latest/)
2. [Intel Core i7 (Skylake) Architecture Overview](https://www.intel.com/content/www/us/en/architecture-and-technology/skylake-processors.html)
3. [Atmel AVR ATmega328P Datasheet](https://www.microchip.com/wwwproducts/en/ATmega328P)