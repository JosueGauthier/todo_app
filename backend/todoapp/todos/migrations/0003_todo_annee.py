# Generated by Django 4.0.3 on 2022-03-14 11:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('todos', '0002_alter_todo_description'),
    ]

    operations = [
        migrations.AddField(
            model_name='todo',
            name='annee',
            field=models.CharField(default='1970', max_length=200),
        ),
    ]
