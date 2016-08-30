
{% if page.comments %}
{% include '../_scripts/comments/duoshuo.swig' %}
{% include '../_scripts/comments/disqus.swig' %}
{% endif %}

<script type="text/javascript" src="{{ url_for(theme.js) }}/motto.min.js?v={{ theme.version }}"></script>
<script type="text/javascript" src="{{ url_for(theme.js) }}/main.js?v={{ theme.version }}"></script>
