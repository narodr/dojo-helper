# dojo-helper

Plantilla para programación competitiva en Python.

Proporciona una estructura de trabajo mínima con directorios para las entradas, soluciones y el código de los problemas. También incluye scripts auxiliares para crear nuevos ejercicios y verificar soluciones de forma rápida.

```
dojo-helper
├─ input                # Archivos de entrada para los problemas
│  └─ example.txt
├─ output               # Archivos de salida para los problemas
│  └─ example.txt
├─ problem              # Código de los problemas
│  └─ example.py
└─ ...
```

## Utilidades

### `./new.sh <id>`

Inicializa un nuevo problema creando los archivos de entrada y salida vacíos y un script de python en `problem/<id>.py` siguiendo la plantilla `template.py`.

### `./check.sh <id>`

Ejecuta el problema y compara la salida con la solución esperada, `output/<id>.txt`.

Si la salida coincide con la solución, se devolverá la solución en un bonito color verde. En caso de que existan discrepancias entre la salida del código y la solución, se devolverán también las diferencias existentes.

## Uso

A continuación se presenta un ejemplo de uso de la plantilla para solucionar un problema.

1. Creamos un nuevo ejercicio **A** ejecutando

    ```bash
    ./new.sh a
    ```

2. Copiamos la entrada del problema en `input/a.txt` y la solución esperada en `output/a.txt`.

2. Implementamos la solución al problema en `problem/a.py`.

3. Comprobamos la solución:

    ```bash
    ./check.sh a
    ```

> [!WARNING]
> Que la salida de un problema coincida con la solución no implica que la implementación sea correcta. Existen requisitos de tiempo de ejecución que también habrá que tener en cuenta.
