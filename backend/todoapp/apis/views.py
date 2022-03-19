import imp
from operator import mod
from django.shortcuts import render

# Create your views here.

from todos import models
from .serializers import TodoSerializer
#from todoapp.apis import serializers

from rest_framework import generics

class ListTodo(generics.ListCreateAPIView):
    queryset = models.Todo.objects.all()
    serializer_class = TodoSerializer

class DetailTodo(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Todo.objects.all()
    serializer_class = TodoSerializer


    

