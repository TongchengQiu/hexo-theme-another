window.onload = function () {
  var $toTopBtn = document.querySelector('#back-top-btn');
  $toTopBtn.onclick = backToTop;
  var toTopBtnShow = false;

  var $nav = document.querySelector('#navigation');
  var isNavScrolled = false;

  var $header = document.querySelector('#header');
  var headerHeight = getHeight($header);

  document.onscroll = function() {
    var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
    if(scrollTop > 40) {
      if(!toTopBtnShow) {
        toTopBtnShow = true;
        $toTopBtn.style.display = 'block';
      }
    } else {
      if(toTopBtnShow) {
        toTopBtnShow = false;
        $toTopBtn.style.display = 'none';
      }
    }


    if(scrollTop > headerHeight) {
      if(!isNavScrolled) {
        isNavScrolled = true;
        $nav.classList.add('scrolled');
      }
    } else {
      if(isNavScrolled) {
        isNavScrolled = false;
        $nav.classList.remove('scrolled');
      }
    }
  };

  var $postSidebar = document.querySelector('#post-sidebar');
  if(document.querySelector('#toggle-btn')) {
    document.querySelector('#toggle-btn').addEventListener('click', function () {
      fadeToggle($postSidebar);
    }, false);
  }
  // //
  // new Motto('.header .description', {
  //   lyric: document.querySelector('.header .description'). attributes['data-text'].value,
  //   showUpSpeed: 120,
  //   flashSpeed: 100,
  //   flashTimeout: 1000
  // });
};


function backToTop() {
  var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
  var iSpeed = Math.floor(-scrollTop/2);
  if(scrollTop <= 0){
    return;
  }
  document.documentElement.scrollTop = document.body.scrollTop = scrollTop + iSpeed;
  window.setTimeout(arguments.callee, 20);
}

function getHeight(el) {
  var styles = window.getComputedStyle(el);
  var height = el.offsetHeight;
  var borderTopWidth = parseFloat(styles.borderTopWidth);
  var borderBottomWidth = parseFloat(styles.borderBottomWidth);
  var paddingTop = parseFloat(styles.paddingTop);
  var paddingBottom = parseFloat(styles.paddingBottom);
  return height - borderBottomWidth - borderTopWidth - paddingTop - paddingBottom;
}


function fadeToggle(el) {
  el.style.transition = 'opacity .4s';
  // var opacity = el.ownerDocument.defaultView.getComputedStyle(el, null).opacity;
  var display = el.style.display;
  if (display === 'block') {
    el.style.opacity = '0';
    window.setTimeout(function() {
      el.style.display = 'none';
    }, 400);
  } else {
    el.style.display = 'block';
    window.setTimeout(function() {
      el.style.opacity = '1';
    }, 10);
  }
}
