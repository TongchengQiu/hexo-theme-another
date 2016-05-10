{% if page.comments %}
  <div class="comments" id="comments">
    {% if (config.duoshuo and config.duoshuo.shortname) or config.duoshuo_shortname %}
      <div class="ds-thread" data-thread-key="{{ page.path }}"
           data-title="{{ page.title }}" data-url="{{ page.permalink }}">
      </div>
    {% endif %}
  </div>
{% endif %}
</style>
