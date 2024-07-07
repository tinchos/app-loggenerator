# app-loggenerator
Generador aleatorio de log

Esta aplicacion es algo simple para la generacion de logs de un contenedor.
En este caso la uso para chequear servicios de monitoreo de logs recien instalados y comprobar que los logs se reflejen en X servicio.

En este caso el comando generara un codigo similar a:

```json
Mon Jun 30 12:34:56 UTC 2024 - 3H8f7k9cM2P1Q - Log message
Mon Jun 30 12:34:57 UTC 2024 - P9b1wD8nJ7r6S - Log message
Mon Jun 30 12:34:58 UTC 2024 - L3g5T2v0F4z8K - Log message
Mon Jun 30 12:34:59 UTC 2024 - Z1x7A6p3B5m2N - Log message
Mon Jun 30 12:35:00 UTC 2024 - H4u6V2e9W3q1R - Log message
```
lo cual podes buscarlo facilmente en cualquier herramienta que se este usando para recoleccion y visualizacion de logs.
### Explicacion simple
"el comando" :joy: :
```shell 
echo "$(date) - $(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13) - Log message"
```
general el texto compuesto por:

```{fecha} - {codigo aleatorio de 13 caraceteres} - {texto final}```

obviamente se puede modificar a gusto.
por ultimo tiene el comando ```sleep 1``` lo cual hace que cada 1segundo vuelva a repetice el bucle, en caso de que necesiten que se ejecute cada 5 segundos, basta con cambiarlo a ```sleep 5```

### Referencias utiles
https://github.com/marketplace/actions/build-and-push-docker-images