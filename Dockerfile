# imagen de la distro de Linux
# FROM ubuntu:18.04
#imagen de Python y distro linux que vamos a usar
FROM python

# Copia todo lo del directorio en el contenedor
COPY . /first_docker_b

# Setea el directorio de trabajo en el contenedor
WORKDIR /first_docker_b

# Corre comandos
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expone puerto
EXPOSE 5005

ENTRYPOINT [ "python" ]

CMD [ "app/__init__.py" ]
