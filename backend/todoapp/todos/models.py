from django.db import models

# Create your models here.

class Todo(models.Model):
    title=models.CharField(max_length=200)
    description=models.TextField()
    annee = models.CharField(max_length=200, default="1970")
    
    def __str__(self) -> str:
        return self.title
