{% if page.type === 'tags' %}
  <div class="tags-all-page">

    <ul class="tags-cloud clearfix">
      {% for tag in site.tags %}
      <li><a data-num="{{ (tag.length / site.posts.length) * 10  }}" href="#{{ tag.name }}">{{ tag.name }}</a></li>
      {% endfor %}
    </ul>

    <ul class="tags-list">
      {% for tag in site.tags %}
        <li class="tag-item">
          <h3 class="tag-name" id="{{ tag.name }}"><i class="fa fa-tag"></i>{{ tag.name }}</h3>
          <ul class="post-list">
            {% for post in tag.posts %}
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
