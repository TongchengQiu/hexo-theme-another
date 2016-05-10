{% if page.type === 'categories' %}
  <div class="category-all-page">
    <div class="category-all-title">
        {{ _p('counter.categories', site.categories.length) }}
    </div>
    <ul class="category-list">
      {% for cat in site.categories %}
        <li class="category-item">
          <h3 class="category-name" id="{{ cat.name }}"><i class="fa fa-coffee"></i>{{ cat.name }}</h3>
          <ul class="post-list">
            {% for post in cat.posts %}
              <li>
                <a href="{{ url_for(post.path) }}">{{ post.slug }}</a>
              </li>
            {% endfor %}
          </ul>
        </li>
      {% endfor %}
    </ul>
  </div>
{% endif %}
