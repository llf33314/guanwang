;(function(window) {

  function TextObj() {
    var text;
    this.getSearchEl = function () {
      var el = document.getElementById('qb-sougou-search');
      if (el) {
        return el;
      }
      el = document.createElement('div');
      el.id = 'qb-sougou-search';
      el.innerHTML = '<p>搜索</p><p class="last-btn">复制</p><iframe src=""></iframe>';
      document.getElementsByTagName('body')[0].appendChild(el);
      return el;
    };
    this.getSelectedText = function () {
          if (window.getSelection || document.getSelection) {
              return (window.getSelection() || document.getSelection()).toString();
          }
      else if (document.selection) {
        return document.selection.createRange().text;
      }
      else {
        return '';
      }
    };
    this.getSelectedRect = function () {
      var rect;
      var sel, h = 12;
      if (window.getSelection || document.getSelection) {
        sel = window.getSelection();
        rect = sel.getRangeAt(0).getBoundingClientRect();
        if (sel.focusNode && sel.focusNode.nodeType == 3 && sel.getRangeAt(0).commonAncestorContainer && sel.getRangeAt(0).commonAncestorContainer.nodeType == 3) {
          rect = {
            top: rect.top - h,
            right: rect.right,
            bottom: rect.bottom,
            left: rect.left
          };
        }
      }
      else if (document.selection) {
        rect = document.selection.createRange().getBoundingClientRect();
          rect = {
            top: rect.top - h,
            right: rect.right,
            bottom: rect.bottom,
            left: rect.left
          };
      }
      return rect;
    };
    this.getXY = function (x, y, pageX, pageY) {
      var w = 107;
      var h = 26;
      var ox = document.documentElement.scrollLeft || document.body.scrollLeft;
      var oy = document.documentElement.scrollTop || document.body.scrollTop;
      var maxW = document.documentElement.clientWidth || document.body.clientWidth;
      x = x >> 0;
      y = y >> 0;
      if (x <= 0 && y <= 0) {
        x = pageX;
        y = pageY;
      }
      x = Math.min(ox + x - w, ox + maxW);
      y = Math.max(oy + y - h, oy);
      return {
        x: x,
        y: y
      };
    };
    this.pop = function (pageX, pageY) {
      text = this.getSelectedText();
      var rect;
      var searchEl = this.getSearchEl();
      var len;
      text = text.replace(/[\n\r\t]/g, '');
      len = this.getTextLength(text);
      if (len && len <= 80) {
        rect = this.getSelectedRect();
        rect = this.getXY(rect.right, rect.top, pageX, pageY);
        searchEl.style.left = rect.x + 'px';
        searchEl.style.top = rect.y + 'px';
        searchEl.style.display = 'block';
        searchEl.style.opacity = '1';
        chrome.extension.sendMessage({cmd: 'pop', url: document.URL});
        // reportElt.contentWindow.postMessage({
        //   protocol: 8107,
        //   key: 200500,
        //   strV: document.URL
        // }, '*');
      }
    };
    this.close = function () {
      var searchEl = this.getSearchEl();
      searchEl.style.display = 'none';
      searchEl.style.opacity = '0';
    }
    this.getTextLength = function (str) {
      var len = str.length;
      var lenStart, lenEnd;
      str = escape(str.replace(/%/g, ''));
      lenStart = str.length;
      str = str.replace(/%/g, '');
      lenEnd = str.length;
      return len + lenStart - lenEnd;
    };
    this.getText = function () {
      return text;
    }
  }

  function initReport() {
    var elt = document.createElement('iframe');
    elt.id = 'qb-iframe-report';
    elt.src = 'http://stdl.qq.com/stdl/qb9/extension-report/report.html';
    elt.style.display = 'none';
    document.body.appendChild(elt);
    return elt;
  }

  var textObj = new TextObj();
  var originX, originY, originElt;
  // var reportElt = initReport();
  // 编辑框不注入
  if (document.body.getAttribute('contenteditable')) {
    return;
  }

  document.addEventListener('mousedown', function (e) {
    e = e || event;
    originX = e.pageX || e.clientX;
    originY = e.pageY || e.clientY;
    originElt = e.target || e.srcElement || {};
  }, false);
  document.addEventListener('mouseup', function (e) {
    var e = e || event;
    var x = e.pageX || e.clientX;
    var y = e.pageY || e.clientY;
    var target = e.target || e.srcElement || {};
    textObj.close();
    /*if (/input|textarea/i.test(target.nodeName) || /input|textarea/i.test(originElt.nodeName)) {
      return;
    }*/
    if (originX == x && originY == y) {
      return;
    }
    setTimeout(function () {
      textObj.pop(x, y);
    }, 50);
  }, false);
  document.addEventListener('click', function (e) {
    var target = e.srcElement || e.target;
    var text = textObj.getText();
    if (target.parentElement.id == 'qb-sougou-search') {
      if (target.innerHTML == '搜索') {
        chrome.extension.sendMessage({cmd: 'search', text: text});
        // reportElt.contentWindow.postMessage({
        //   protocol: 8107,
        //   key: 200501,
        //   strV: text
        // }, '*');
      }
      else if (target.innerHTML == '复制') {
        document.execCommand( 'Copy' );
        chrome.extension.sendMessage({cmd: 'copy', text: text});
        // reportElt.contentWindow.postMessage({
        //   protocol: 8107,
        //   key: 200502,
        //   strV: text
        // }, '*');
      }
    }
  }, false);

})(window);