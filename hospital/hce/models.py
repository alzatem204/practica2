from django.db import models
from django.core.validators import validate_email

# Create your models here.

class Equipo(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.TextField(max_length=100)
    marca = models.TextField(max_length=100)
    modelo = models.TextField(max_length=100)
    serial = models.TextField(max_length=100)
    area = models.TextField(max_length=100)
    responsable = models.TextField(max_length=100)
    foto = models.ImageField(upload_to='imagenes/',null=True)


class Responsable(models.Model):
    id = models.AutoField(primary_key=True)
    documento = models.TextField(max_length=100)
    nombre = models.TextField(max_length=100)
    apellido = models.TextField(max_length=100)
    correo = models.EmailField(validators=[validate_email])