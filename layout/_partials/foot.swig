
{% if page.comments %}
{% include '../_scripts/comments/duoshuo.swig' %}
{% endif %}

<script type="text/javascript" src="{{ url_for(theme.js) }}/main.js?v={{ theme.version }}"></script>
