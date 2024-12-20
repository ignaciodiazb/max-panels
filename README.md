# Max panels

Este proyecto tiene como objetivo simular la disposición de paneles solares en techos para determinar la cantidad máxima de paneles que se pueden instalar.

## Setup

Para ejecutar el proyecto en un ambiente local hay que seguir los siguientes pasos:

Primero, clonar el repositorio. Ejemplo con SSH:

```
git clone git@github.com:ignaciodiazb/max-panels.git
```

Posteriormente hay que instalar dependencias. Ejemplo con Bundler:

```
bundle install
```

Este proyecto contiene tests con Rspec. Los tests se pueden ejecutar con el siguiente comando:

```
bundle exec rspec
```

## Solution

La solución se basa en simular la colocación de paneles en el techo, considerando ambas orientaciones de los paneles.

Para facilitar el proceso, decidí crear un método helper el que se encarga de calcular el número de "filas" que se pueden trazar en el techo, basándonos en el alto del panel y del techo, y cuantos paneles completos podemos ubicar en estas.

Posteriormente, calculamos el espacio restante, y comprobamos si es posible instalar algún panel usando la orientación opuesta.

Al probar con ambas orientaciones, retornamos el número mayor como respuesta.
