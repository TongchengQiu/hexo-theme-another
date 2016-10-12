<!-- content-Type -->
<meta charset="utf-8">

{# 优先使用 IE 最新版本和 Chrome #}
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta name="language" content="en">
<meta name="robots" content="all">

{# mobile phone #}
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<meta content="email=no" name="format-detection">

{# 238, Disable Baidu tranformation #}
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

{# 作者信息 #}
{% if theme.author && theme.email %}
<meta name="author" content="{{ theme.author }}, {{ theme.email }}">
<meta name="reply-to" content="{{ theme.email }}">
<meta name="owner" content="{{ theme.author }}">
{% endif %}

{# 谷歌分析验证 #}
{% if theme.google_site_verification %}
<meta name="google-site-verification" content="{{ theme.google_site_verification }}" />
{% endif %}

{# 百度分析验证 #}
{% if theme.baidu_site_verification %}
<meta name="baidu-site-verification" content="{{ theme.baidu_site_verification }}" />
{% endif %}

{# description #}
{% if config.description %}
<meta name="description" content="{{ config.description }}" />
{% endif %}

{# keywords #}
{% if page.keywords %}
<meta name="keywords" content="{{ page.keywords }}" />
{% elif page.tags and page.tags.length %}
<meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }},{% endfor %}" />
{% elif theme.keywords %}
<meta name="keywords" content="{{ theme.keywords }}" />
{% endif %}

{{ open_graph({
  twitter_id: theme.twitter,
  google_plus: theme.google_plus,
  fb_admins: theme.fb_admins,
  fb_app_id: theme.fb_app_id}) }}

{# rss #}
{% if theme.rss %}
  <link rel="alternate" href="{{ url_for(theme.rss) }}" title="{{ config.title }}" type="application/atom+xml" />
{% endif %}

{# favicon #}
{% if theme.favicon %}
  <link rel="shorticon icon" type="image/x-icon" href="{{ url_for(theme.favicon) }}?v={{ theme.version }}" />
{% endif %}

{# font #}
{% if config.language !== 'zh-Hans' and theme.use_font_lato %}
<link href='//fonts.googleapis.com/css?family=Lato:300,400,700,400italic&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
{% endif %}

{# css #}
<link href="http://cdn.bootcss.com/font-awesome/4.6.2/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{{ url_for(theme.css) }}/main.css?v={{ theme.version }}"/>

{# 百度站长推送 #}
<script>
(function(){
  var bp = document.createElement('script');
  bp.src = '//push.zhanzhang.baidu.com/push.js';
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(bp, s);
})();
</script>
