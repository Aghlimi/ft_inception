from django.db import models
from django.contrib import admin

# Create your models here.
class Comment(models.Model):
    user = models.CharField(max_length=100)
    content = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.user}: {self.content[:20]}..." 
admin.site.register(Comment)