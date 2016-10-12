{% if theme.donation %}
  <style>
    .donation {
      width: 100%;
      margin-top: 2rem;
    }
    .donation .text {
      color: #333;
      font-size: .8rem;
      cursor: pointer;
      text-decoration: underline;
    }
    .donation .text:hover {
      color: rgb(63,134,181);
    }
    .donation .img-box {
      transition: all .3s;
      width: 0;
      height: 0;
      margin: 1rem auto;
      overflow: hidden;
    }
    .donation .img-box img {
      width: 100%;
      height: 100%;
    }
    .donation #donation {
      display: none;
    }
    .donation #donation:checked + .img-box {
      width: 16rem;
      height: 16rem;
    }
  </style>
  <div class="donation">
    <label class="text" for="donation">
      如果你觉得文章对你有帮助，并且想为我买一杯咖啡，点这里～
    </label>
    <input type="checkbox" name="donation" id="donation">
    <div class="img-box">
      <img src="{{theme.donation}}" alt="donation" />
    </div>
  </div>
{% endif %}
