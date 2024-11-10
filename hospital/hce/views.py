from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login as auth_login
from .models import Equipo, Responsable
from .forms import EquipoForm, ResponsableForm
from django.contrib.auth.decorators import login_required
# Create your views here.


def login(request):
    if request.method == 'POST':
        form = AuthenticationForm(data=request.POST)
        if form.is_valid():
            auth_login(request, form.get_user())
            return redirect('equipos')
    else:
        form = AuthenticationForm()
    return render(request, 'index.html',{'form':form})

@login_required
def equipos(request):
    equipo = Equipo.objects.all()
    return render(request, 'equipos/index.html', {'equipos':equipo})

@login_required
def crear(request):
    infoEquipo = EquipoForm(request.POST or None, request.FILES or None)
    if infoEquipo.is_valid():
        infoEquipo.save()
        return redirect('equipos')
    result = Responsable.objects.all()
    return render(request, 'equipos/crear.html',{'results':result})

@login_required
def borrar(request, id):
    equipo = Equipo.objects.get(id=id)
    equipo.delete()
    return redirect('equipos')

@login_required
def editar(request, id):
    equipo = Equipo.objects.get(id=id)
    infoEquipo = EquipoForm(request.POST or None, request.FILES or None, instance=equipo)
    if infoEquipo.is_valid() and request.method == 'POST':
        infoEquipo.save()
        return redirect('equipos')
    result = Responsable.objects.all()
    return render(request, 'equipos/editar.html', {'infoEquipo':infoEquipo, 'results':result})

@login_required
def vermas(request, id):
    equipo = Equipo.objects.get(id=id)
    return render(request, 'equipos/vermas.html', {'equipo':equipo})

@login_required
def responsables(request):
    responsable = Responsable.objects.all()
    return render(request, 'responsables/index.html', {'responsables':responsable})

@login_required
def crear_resp(request):
    infoResponsable = ResponsableForm(request.POST or None)
    if infoResponsable.is_valid():
        infoResponsable.save()
        return redirect('responsables')
    return render(request, 'responsables/crear.html')

@login_required
def borrar_resp(request, id):
    responsable = Responsable.objects.get(id=id)
    responsable.delete()
    return redirect('responsables')

@login_required
def editar_resp(request, id):
    responsable = Responsable.objects.get(id=id)
    infoResponsable = ResponsableForm(request.POST or None, instance=responsable)
    if infoResponsable.is_valid() and request.method == 'POST':
        infoResponsable.save()
        return redirect('responsables')
    return render(request, 'responsables/editar.html', {'infoResponsable':infoResponsable})

options=Responsable.objects.all()
context={'options':options}