from django.urls import path
from . import views
from django.conf import settings
from django.contrib.staticfiles.urls import static

urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('about/', views.about, name='about'),
    path('equipos/', views.equipos, name='equipos'),
    path('equipos/crear/', views.crear, name='crear'),
    path('equipos/borrar/<int:id>/', views.borrar, name='borrar'),
    path('equipos/editar/<int:id>/', views.editar, name='editar'),
    path('equipos/vermas/<int:id>/', views.vermas, name='vermas'),
    path('responsables/', views.responsables, name='responsables'),
    path('responsables/crear/', views.crear_resp, name='crear_resp'),
    path('responsables/borrar/<int:id>/', views.borrar_resp, name='borrar_resp'),
    path('responsables/editar/<int:id>/', views.editar_resp, name='editar_resp'),
]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)