from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import redirect
from .models import Comment
# Create your views here.
def page(request):
    # if is post 
    if request.method == 'POST':
        Comment.objects.create(
            user=request.POST.get('user'),
            content=request.POST.get('content')
        )
    return render(request, 'page.html')