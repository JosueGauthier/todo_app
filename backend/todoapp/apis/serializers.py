from dataclasses import field, fields
from rest_framework import serializers
from todos import models

class TodoSerializer(serializers.ModelSerializer):
    class Meta:
        fields = (
            'id',
            'title',
            'description',
            'annee'

        )
        model = models.Todo