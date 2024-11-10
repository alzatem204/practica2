from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import Equipo, Responsable
from .forms import EquipoForm, ResponsableForm
# Create your views here.


def inicio(request):
    return render(request, 'pages/index.html')

def about(request):
    return render(request, 'pages/about.html')

def equipos(request):
    equipo = Equipo.objects.all()
    return render(request, 'equipos/index.html', {'equipos':equipo})

def crear(request):
    infoEquipo = EquipoForm(request.POST or None, request.FILES or None)
    if infoEquipo.is_valid():
        infoEquipo.save()
        return redirect('equipos')
    result = Responsable.objects.all()
    return render(request, 'equipos/crear.html',{'results':result})

def borrar(request, id):
    equipo = Equipo.objects.get(id=id)
    equipo.delete()
    return redirect('equipos')

def editar(request, id):
    equipo = Equipo.objects.get(id=id)
    infoEquipo = EquipoForm(request.POST or None, request.FILES or None, instance=equipo)
    if infoEquipo.is_valid() and request.method == 'POST':
        infoEquipo.save()
        return redirect('equipos')
    result = Responsable.objects.all()
    return render(request, 'equipos/editar.html', {'infoEquipo':infoEquipo, 'results':result})

def vermas(request, id):
    equipo = Equipo.objects.get(id=id)
    return render(request, 'equipos/vermas.html', {'equipo':equipo})

def responsables(request):
    responsable = Responsable.objects.all()
    return render(request, 'responsables/index.html', {'responsables':responsable})

def crear_resp(request):
    infoResponsable = ResponsableForm(request.POST or None)
    if infoResponsable.is_valid():
        infoResponsable.save()
        return redirect('responsables')
    return render(request, 'responsables/crear.html')

def borrar_resp(request, id):
    responsable = Responsable.objects.get(id=id)
    responsable.delete()
    return redirect('responsables')

def editar_resp(request, id):
    responsable = Responsable.objects.get(id=id)
    infoResponsable = ResponsableForm(request.POST or None, instance=responsable)
    if infoResponsable.is_valid() and request.method == 'POST':
        infoResponsable.save()
        return redirect('responsables')
    return render(request, 'responsables/editar.html', {'infoResponsable':infoResponsable})

options=Responsable.objects.all()
context={'options':options}