{% extends '_layout.swig' %}

{% import '_partials/post-item.swig' as post_template %}

{% block title %} {{ __('title.category') }}: {{ page.category }} | {{ config.title }} {% endblock %}

{% block content %}

  {% if page.type === "categories" %}
    {% include 'category.swig' %}
  {% elif page.type === "tags" %}
    {% include 'tag.swig' %}
  {% elif page.type === "about" %}
    {% include '_partials/post-content.swig' %}
  {% else %}
    {% include '404.swig' %}
  {% endif %}

{% endblock %}
