# usamos una imagen liviana
FROM alpine:3.20
# generamos un usuario para evitar usar root en la imagen
RUN adduser -D loguser
# agregamos paquete de bash
RUN apk add --no-cache bash
# agregamos el script a la imagen
COPY generate-logs.sh /generate-logs.sh
# le damos permisos de ejecucion al scrip
RUN chmod +x /generate-logs.sh
# cambiamos a nuestro usuario
USER loguser
CMD ["/generate-logs.sh"]