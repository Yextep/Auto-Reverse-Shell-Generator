# Generador Automatico de Shell Inversa

Una shell es una terminal conectada a distancia con otra que permite ejecutar comandos de manera remota en un servidor. Esto es útil en diferentes escenarios, pero, sobre todo, puede ser aprovechado por un atacante para robar información sensible o ejecutar tareas maliciosas en un sistema.

Una shell inversa se refiere a un proceso en el que la máquina de la víctima se conecta a la del atacante para recibir comandos. Es una técnica eficiente, ya que evade los firewalls y filtros de seguridad del tráfico que ingresa al ordenador. Por eso, los atacantes suelen utilizar este tipo de shells y es recomendable también hacerlo en tests de intrusión.

Una shell directa, por el contrario, es mucho menos utilizada, pero vale la pena saber que existe y que se puede ejecutar. Se refiere a un proceso mediante el cual la máquina del atacante se conecta a la de la víctima, con el fin de enviarle comandos para ejecutar. Ahora bien, este proceso es menos recomendable, ya que entonces necesitaría pasar todos los filtros de seguridad de tráfico web de un ordenador. Por eso, no se suele utilizar.

<img align="center" height="480" width="1000" alt="GIF" src="https://github.com/Yextep/Yextep/assets/114537444/e64735aa-8352-4bbe-aa0e-c7b2898ec25c"/>

## Instalación

Clonamos el repositorio

```bash
git clone https://github.com/Yextep/Auto-Reverse-Shell-Generator
```
Accedemos a la carpeta
```bash
cd Auto-Reverse-Shell-Generator
```
Ejecutamos
```bash
bash revshell.sh
```

Por último seleccionas el tipo de reverse shell que quieras generar, escribes la IP, el Puerto y el Script te genera la shell.
