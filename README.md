# docker-test
## Procedimiento
Primero que nada tienen que tener instalado Docker Deskop en su computadora, si usan VScode el solito les da la opción de instalarlo. \
Solo subi los archivos de Docker, pero es necesario un proyecto de Angular primero.\
En la raíz deben poner los tres archivos, es decir donde está la carpeta `src` y `node_modules`.

```
tarea5-cloud
│   README.md
│   .gitignore
│   docker-compose.yml
|   Dockerfile
|   Dockerfile.prod
└─── src
│   │   ...
│   │
└─── node_modules
    │   ...
|    ...
```

### Dockerfile
Primero copien el `Dockerfile`. Corremos lo siguiente:
```
docker build . -t nombre:latest
```
Solo reemplacen `nombre` por el nombre de su imagen.

### Dockercompose
Ahora vamos a hacer el contenedor. Copien los datos del `docker-compose.yml` y ejecuten lo siguiente:
```
docker-compose up
```
Esto levanta el contenedor. 
### Prod
Ahora vamos a hacer una imagen de producción, que es menos pesada y más optimizada. Copien el archivo `Dockerfile.prod` y corran lo siguiente:
```
docker build -f Dockerfile.prod -t "nombre-prod:latest" .
```
Solo reemplacen `nombre` por el nombre de su imagen de producción.
### DockerHub
Finalmente vamos a subirlo a DockerHub.\
Solo tiene que hacer una cuenta y crear un repositorio público. Anoten el nombre del repo.\
Una vez listo el repo regresamos a la línea de comando y corremos: 
```
docker tag nombre-prod:latest username/repo_name:latest
```
Solo reemplacen `nombre` por el nombre de su imagen de producción, `username` por su nombre de usuario y `repo_name` por el nombre de su repositorio.\
Luego le dan:
```
docker login
```
Para inciar sesión, si están en Windows y usaron Docker Desktop entonces pueden inicar sesión desde la aplicación y les va a salir que ya están logeados.\
Finalmente le dan `push`:
```
docker push username/repo_name
```
Solo reemplacen `username` por su nombre de usuario y `repo_name` por el nombre de su repositorio.\
Y listo :100: