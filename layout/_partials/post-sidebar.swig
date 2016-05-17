<div class="post-sidebar">
  <div class="toggle-btn" id="toggle-btn">
    <i class="fa fa-reorder"></i>
  </div>
  <section class="post-toc-wrap" id="post-sidebar">
    <h2 class="toc-title">内容目录</h2>
    <div class="post-toc">
      {% set toc = toc(page.content, {"class": "nav", list_number: theme.toc_list_number}) %}
      {% if toc.length <= 1 %}
        <p class="post-toc-empty">{{ __('post.toc_empty') }}</p>
      {% else %}
        <div class="post-toc-content">{{ toc }}</div>
      {% endif %}
    </div>
  </section>
</div>
