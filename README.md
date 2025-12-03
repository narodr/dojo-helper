# dojo-helper

Estructura base para el Coding Dojo de programación competitiva.

- `/input`: Archivos de texto con las entradas de los problemas
- `/output`: Archivos de texto con las soluciones de los problemas
- `/problem`: Código para resolver los problemas

También incluye scripts para crear nuevos problemas y comprobar las soluciones.

### Iniciar un nuevo problema

Crea archivos de entrada/salida vacíos y genera una plantilla de script

```bash
./new.sh a
```

### Comprobar un problema

Ejecuta el script y compara la salida con la solución deseada

```bash
 ./check.sh a
```