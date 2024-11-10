# Grupo SPAM

## Integrantes:

```
Juan Jose Alzate
Mateo Oyuela
Fabio Velez
```

## Migrations:

Las migraciones están almacenadas en el proyecto, pero los datos de las tablas pueden ser importados usando los archivos .sql

```
Equipos --> hce_equipo.sql
Responsables --> hce_responsable.sql
Usuarios --> auth_user.sql
```

## Usuarios:

Se debe pasar por el login para poder acceder a las funcionalidades, las URLs se encuentran protegidas si no hay login

superuser
```
username: juanjose
password: 12345678
```

usuario normal
```
username: profesor
password: ingesoft2
```

## Bases de datos:

Se utilizó el puerto default y usuario Root, pero la contraseña se tuvo que cambiar, puede ser necesario cambiar la configuración en settings.py 

```
DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.mysql",
        "NAME": "hospitaldb",
        "USER": "root",
        "PASSWORD" : "Almo",
        "HOST": "localhost",
        "PORT": "3306",
    }
}
```



