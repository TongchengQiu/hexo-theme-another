# another

> 简

[在线预览 Preview](http://qiutc.me)

# 使用

主要在于配置主题目录下的 ``_congig.yml`` 文件。
```
# 配置菜单导航栏
menu:
  home: /
  categories: /categories
  tags: /tags
  about: /about

# 配置网站的 favicon 图标，放在根目录的``/source``下。
favicon: /favicon.ico

# 配置个人头像或者照片
avatar: /img/qtc_avatar.jpg

# 设置默认的 keywords
keywords: "^_^"

# 设置博客的成立时间
birth_day: 10/03/2015

# 设置 rss 链接，不需要可不填写
rss:


# markdown生成的代码的高亮样式：
# normal | night | night eighties | night blue | night bright
# https://github.com/chriskempson/tomorrow-theme
highlight_theme: normal

# 首页列表文章的预览截取字符长度
auto_excerpt:
  enable: true
  length: 200

# 字体，当非中文的时候
use_font_lato: true

# 静态文件目录（不需要修改）
vendors: vendors
css: css
js: js
images: images

# 版本（不需要修改）
version: 0.0.1

# google 百度 的网站分析验证
google_site_verification:1
baidu_site_verification: 1
baidu_gxt_verify_token: 1

# 百度统计的代码验证
baidu_analytics: ***
# google统计的代码验证
google_analytics: ***

# 多说服务配置
duoshuo_info:
  ua_enable: true
  admin_enable: false
  user_id: qiutongcheng
  admin_nickname: qiutc

```

网站根目录的配置，``_config.yml``，可以直接参考我的博客的配置：
[https://github.com/TongchengQiu/blog/tree/source](https://github.com/TongchengQiu/blog/tree/source)
或者看这篇文章: [使用hexo+github搭建静态博客
](http://qiutc.me/post/%E4%BD%BF%E7%94%A8hexo-github%E6%90%AD%E5%BB%BA%E9%9D%99%E6%80%81%E5%8D%9A%E5%AE%A2.html)
```
# Hexo Configuration
## Docs: http://hexo.io/docs/configuration.html
## Source: https://github.com/hexojs/hexo/

# 网站的一些信息
title: 阿城的blog                 # 标题
subtitle: 抓啊抓啊~~~				 # 副标题
description: hello word! 😺		 # 描述
author: 阿城😇					 # 作者
language: zh-Hans				 # 语言
timezone: Asia/Shanghai          # 时区

# 网站 URL 配置，一般只要修改成你的 ``url`` 就可以了
url: http://qiutc.me
root: /
permalink: post/:title.html
permalink_defaults:
favicon: /favicon.ico

# 目录设置，一般不用管
source_dir: source
public_dir: public
tag_dir: tags
archive_dir: archives
category_dir: categories
code_dir: downloads/code
i18n_dir: :lang
skip_render:

# 写作配置
new_post_name: :title.md # File name of new posts
default_layout: post
titlecase: false # Transform title into titlecase
external_link: true # Open external links in new tab
filename_case: 0
render_drafts: false
post_asset_folder: false
relative_link: false
future: true
highlight:
  enable: true
  line_number: false
  auto_detect: true
  tab_replace:
# Category & Tag
default_category: uncategorized
category_map:
tag_map:

# 日期和时间格式
date_format: YYYY-MM-DD
time_format: HH:mm:ss

# 每页页码
per_page: 5
pagination_dir: page
index_generator:
  per_page: 5


# 设置主题，设置成主题的目录名称就可以，
theme: hexo-theme-another
since: 2015

# 发布上传的 github 地址，这里改成你自己的
deploy:
  type: git
  repository:
    github: git@github.com:TongchengQiu/blog.git

# 多说评论的信息，这里设置成泥自己的
duoshuo_shortname: qiutongcheng
duoshuo_hotartical: false

# hexo 插件，不需要配置
plugins:
- hexo-generator-sitemap
- hexo-generator-index
- hexo-generator-archive
- hexo-generator-tag
# Creative Commons 4.0 International License.
# http://creativecommons.org/
# Available: by | by-nc | by-nc-nd | by-nc-sa | by-nd | by-sa | zero
creative_commons: by-nc-sa

# 社会化链接
social:
  github: https://github.com/tongchengqiu
  twitter: https://twitter.com/tongchengqiu
  zhihu: http://www.zhihu.com/people/tongchengqiu
  weibo: http://weibo.com/tongchengqiu

```

## 浏览器支持 Browser support

![Browser support](http://iissnan.com/nexus/next/browser-support.png)


## 贡献 Contributing

接受各种形式的贡献，包括不限于提交问题与需求，修复代码。等待您的`Pull Request`。

Any types of contribution are welcome. Thanks.
