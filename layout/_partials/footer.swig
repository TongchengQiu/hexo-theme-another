<footer class="footer clearfix">
  <div class="copyright" >
    <span>Copyright</span>
    {% set current = date(Date.now(), "YYYY") %}
    &copy; {% if theme.since and theme.since != current %} {{ theme.since }}-{% endif %}
    <span itemprop="copyrightYear">{{ current }}</span>
    <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
  </div>

  <div class="info">
    <script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>
    {% if theme.birth_day %}
      <span id="showDays" class="show-days"></span>
      <script>
      var birthDay = new Date('{{ theme.birth_day }}');
      var now = new Date();
      var duration = now.getTime() - birthDay.getTime();
      var total= Math.floor(duration / (1000 * 60 * 60 * 24));
      document.getElementById("showDays").innerHTML = "本站已运行 "+total+" 天";
      </script>
      ---
    {% endif %}
    <span id="busuanzi_container_site_pv">
        总访问量<span id="busuanzi_value_site_pv"></span>次
    </span>
  </div>

  <div class="my-theme">
    Theme by <a href="//qiutc.me">qiutc</a> | <iframe style="margin-left: 5px; margin-bottom:-5px;" frameborder="0" scrolling="0" width="91px" height="20px" src="https://ghbtns.com/github-btn.html?user=TongchengQiu&amp;repo=hexo-theme-another&amp;type=star&amp;count=true"></iframe>
  </div>

</footer>
