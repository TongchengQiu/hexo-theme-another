<div class="right-info">
  <div class="featured-tags">
    <h5>FEATURED TAGS</h5>
    <div class="tags">
    {% for tag in site.tags %}
      <a href="/tags#{{ tag.name }}">{{ tag.name }}</a>
    {% endfor %}
    </div>
  </div>
  <div class="about-me">
    <h5>ABOUT ME</h5>
    <img src="{{ theme.avatar or url_for(theme.images) + '/default_avatar.jpg' }}" alt="{{ theme.author }}" itemprop="image" />
    <p class="description motion-element" itemprop="description">{{ theme.description }}</p>

    <div class="links-of-author clearfix">
      {% if theme.social %}
        {% for name, link in theme.social %}
          <span class="links-of-author-item">
            <a href="{{ link }}" target="_blank" class="{{ name }}">
              <i class="fa fa-{{ name }} fa-stack-1x fa-inverse"></i>
            </a>
          </span>
        {% endfor %}
      {% endif %}
    </div>

</div>
</div>
