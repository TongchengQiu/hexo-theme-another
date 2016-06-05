{% macro render(post, is_index, post_extra_class) %}

{% if post.bgimage %}
<div class="post-item">
{% else %}
<div class="post-item without-bgimage">
{% endif %}

  <div class="title-wrap" style="background: url({{ post.bgimage }}) center / cover">
    <h2 class="title"><a href="{{ url_for(post.path) }}">{{ post.title }}</a></h2>
  </div>

  <div class="post-cont">
    <span class="post-time">
      {{ __('post.posted') }}
      <time datetime="{{ moment(post.date).format() }}" content="{{ date(post.date, config.date_format) }}">
        {{ date(post.date, config.date_format) }}
      </time>
    </span>
    <div class="text">
      <a href="{{ url_for(post.path) }}">
        {% set content = post.content | striptags %}
        {{ content.substring(0, theme.auto_excerpt.length) }}
        {% if content.length > theme.auto_excerpt.length %}...{% endif %}
      </a>
    </div>
  </div>

  <div class="bottom-bar">

    {% if post.categories and post.categories.length %}
      <span class="post-category" >
        &nbsp; {{ __('post.in') }}
        {% for cat in post.categories %}
          <span itemprop="about" itemscope>
            <a href="/categories#{{ cat.name }}" itemprop="url" rel="index">
              <span itemprop="name">{{ cat.name }}</span>
            </a>
          </span>

          {% set cat_length = post.categories.length %}
          {% if cat_length > 1 and loop.index !== cat_length %}
            {{ __('symbol.comma') }}
          {% endif %}

        {% endfor %}
      </span>
    {% endif %}

    <a class="read-more-btn" target="_blank" href="{{ url_for(post.path) }}" itemprop="url">
      more...
    </a>
  </div>
</div>
