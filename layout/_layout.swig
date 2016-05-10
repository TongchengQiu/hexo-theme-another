<!DOCTYPE html>
<html lang="en">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
  {% include '_scripts/analytics.swig' %}
</head>
<body lang="{{ config.language }}">

  {% include '_partials/old-browsers.swig' %}

  <div class="another-theme layout">

    {% include '_partials/header.swig' %}

    <main class="container">

      {% block content %}{% endblock %}

      {% include '_partials/comments.swig' %}


    </main>
    
    {% include '_partials/footer.swig' %}

  </div>

{% include '_partials/foot.swig' %}

</body>
</html>
