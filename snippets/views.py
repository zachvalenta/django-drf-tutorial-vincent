from django.views.generic import TemplateView
from rest_framework import generics
from .models import Snippet
from .serializers import SnippetSerializer


class IndexPageView(TemplateView):
    template_name = 'index.html'


class SnippetList(generics.ListCreateAPIView):
    queryset = Snippet.objects.all()
    serializer_class = SnippetSerializer


class SnippetDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Snippet.objects.all()
    serializer_class = SnippetSerializer