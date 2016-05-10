{% extends '_layout.swig' %}

{% import '_partials/post-item.swig' as post_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block content %}

<div class="index-content">

  <div class="posts-list">
    <div>
      {% for post in page.posts %}
        {{ post_template.render(post, true) }}
      {% endfor %}
    </div>
    {% include '_partials/pagination.swig' %}
  </div>

  {% include '_partials/right-info.swig' %}

</div>

{% endblock %}
