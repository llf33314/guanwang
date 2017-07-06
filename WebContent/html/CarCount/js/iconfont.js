;(function(window) {

  var svgSprite = '<svg>' +
    '' +
    '<symbol id="icon-gou" viewBox="0 0 1000 1000">' +
    '' +
    '<path d="M834.9531 280.9195 419.218 728.617 195.3606 440.8111 277.3084 370.8586 419.218 518.7593 770.9939 216.9629Z"  ></path>' +
    '' +
    '</symbol>' +
    '' +
    '<symbol id="icon-close" viewBox="0 0 1024 1024">' +
    '' +
    '<path d="M934.600901 934.766676c-33.225729 33.226752-87.612407 33.226752-120.750131 0L511.817851 632.699989 209.825866 934.766676c-33.226752 33.226752-87.531566 33.226752-120.758318 0-33.226752-33.226752-33.226752-87.612407 0-120.839159l302.014498-301.977659L89.066525 209.901591c-33.307593-33.056883-33.307593-87.441515 0-120.66929 33.226752-33.226752 87.531566-33.226752 120.758318 0l301.993009 301.996079L813.851792 89.232301c33.137725-33.226752 87.524402-33.226752 120.750131 0 33.137725 33.226752 33.137725 87.612407-0.089028 120.66929L632.538307 511.949858l301.973566 301.977659C967.738625 847.155293 967.828676 901.539924 934.600901 934.766676z"  ></path>' +
    '' +
    '</symbol>' +
    '' +
    '<symbol id="icon-103" viewBox="0 0 1024 1024">' +
    '' +
    '<path d="M512 0C230.4 0 0 230.4 0 512c0 281.6 230.4 512 512 512 281.6 0 512-230.4 512-512C1024 230.4 793.6 0 512 0zM499.2 780.8c-25.6 25.6-70.4 25.6-96 0L179.2 563.2c-25.6-25.6-25.6-70.4 0-96 25.6-25.6 70.4-25.6 96 0L448 633.6l332.8-326.4c25.6-25.6 70.4-25.6 96 0 25.6 25.6 25.6 70.4 0 96L499.2 780.8z"  ></path>' +
    '' +
    '</symbol>' +
    '' +
    '<symbol id="icon-icon" viewBox="0 0 1024 1024">' +
    '' +
    '<path d="M337.301677 512.002047c0 22.865777 4.547573 45.724391 13.296841 66.853617 8.751315 21.126156 21.702278 40.506553 37.871539 56.675814 16.171308 16.171308 35.548634 29.118178 56.673767 37.870516 21.128203 8.750291 43.988864 13.296841 66.858734 13.296841 22.865777 0 45.724391-4.546549 66.852594-13.296841 21.126156-8.752338 40.507576-21.699208 56.675814-37.870516 16.172331-16.169261 29.119201-35.549657 37.871539-56.675814 8.749268-21.129226 13.298887-43.98784 13.298887-66.853617 0-22.868847-4.549619-45.727461-13.298887-66.85771-8.752338-21.125133-21.699208-40.503483-37.871539-56.67479-16.168238-16.168238-35.549657-29.119201-56.675814-37.868469-21.128203-8.751315-43.986817-13.297864-66.852594-13.297864-22.86987 0-45.729507 4.546549-66.858734 13.297864-21.126156 8.750291-40.503483 21.701255-56.673767 37.868469-16.169261 16.172331-29.120224 35.550681-37.871539 56.67479C341.848227 466.274586 337.301677 489.1332 337.301677 512.002047L337.301677 512.002047zM337.301677 512.002047"  ></path>' +
    '' +
    '<path d="M512.002558 201.426569c170.815387 0 310.575478 139.757021 310.575478 310.575478 0 170.815387-139.760091 310.576501-310.575478 310.576501-170.820504 0-310.576501-139.761114-310.576501-310.576501C201.425034 341.182566 341.182055 201.426569 512.002558 201.426569M512.002558 123.780141c-213.524095 0-388.222929 174.699857-388.222929 388.221906 0 213.517955 174.698834 388.217812 388.222929 388.217812 213.517955 0 388.217812-174.699857 388.217812-388.217812C900.220371 298.479999 725.520513 123.780141 512.002558 123.780141L512.002558 123.780141 512.002558 123.780141zM512.002558 123.780141"  ></path>' +
    '' +
    '</symbol>' +
    '' +
    '<symbol id="icon-gantanhao11-copy" viewBox="0 0 1024 1024">' +
    '' +
    '<path d="M512 1024C229.239467 1024 0 794.760533 0 512 0 229.239467 229.239467 0 512 0 794.760533 0 1024 229.239467 1024 512 1024 794.760533 794.760533 1024 512 1024ZM512 68.266667C266.922667 68.266667 68.266667 266.922667 68.266667 512 68.266667 757.077333 266.922667 955.733333 512 955.733333 757.077333 955.733333 955.733333 757.077333 955.733333 512 955.733333 266.922667 757.077333 68.266667 512 68.266667ZM512 819.2C474.282667 819.2 443.733333 788.650667 443.733333 750.933333 443.733333 713.216 474.282667 682.666667 512 682.666667 549.717333 682.666667 580.266667 713.216 580.266667 750.933333 580.266667 788.650667 549.717333 819.2 512 819.2ZM512 614.4C493.1584 614.4 477.866667 583.850667 477.866667 546.133333 477.866667 546.133333 443.733333 238.933333 443.733333 238.933333 443.733333 201.216 474.282667 170.666667 512 170.666667 549.717333 170.666667 580.266667 201.216 580.266667 238.933333 580.266667 238.933333 546.133333 546.133333 546.133333 546.133333 546.133333 583.850667 530.8416 614.4 512 614.4Z"  ></path>' +
    '' +
    '</symbol>' +
    '' +
    '</svg>'
  var script = function() {
    var scripts = document.getElementsByTagName('script')
    return scripts[scripts.length - 1]
  }()
  var shouldInjectCss = script.getAttribute("data-injectcss")

  /**
   * document ready
   */
  var ready = function(fn) {
    if (document.addEventListener) {
      if (~["complete", "loaded", "interactive"].indexOf(document.readyState)) {
        setTimeout(fn, 0)
      } else {
        var loadFn = function() {
          document.removeEventListener("DOMContentLoaded", loadFn, false)
          fn()
        }
        document.addEventListener("DOMContentLoaded", loadFn, false)
      }
    } else if (document.attachEvent) {
      IEContentLoaded(window, fn)
    }

    function IEContentLoaded(w, fn) {
      var d = w.document,
        done = false,
        // only fire once
        init = function() {
          if (!done) {
            done = true
            fn()
          }
        }
        // polling for no errors
      var polling = function() {
        try {
          // throws errors until after ondocumentready
          d.documentElement.doScroll('left')
        } catch (e) {
          setTimeout(polling, 50)
          return
        }
        // no errors, fire

        init()
      };

      polling()
        // trying to always fire before onload
      d.onreadystatechange = function() {
        if (d.readyState == 'complete') {
          d.onreadystatechange = null
          init()
        }
      }
    }
  }

  /**
   * Insert el before target
   *
   * @param {Element} el
   * @param {Element} target
   */

  var before = function(el, target) {
    target.parentNode.insertBefore(el, target)
  }

  /**
   * Prepend el to target
   *
   * @param {Element} el
   * @param {Element} target
   */

  var prepend = function(el, target) {
    if (target.firstChild) {
      before(el, target.firstChild)
    } else {
      target.appendChild(el)
    }
  }

  function appendSvg() {
    var div, svg

    div = document.createElement('div')
    div.innerHTML = svgSprite
    svgSprite = null
    svg = div.getElementsByTagName('svg')[0]
    if (svg) {
      svg.setAttribute('aria-hidden', 'true')
      svg.style.position = 'absolute'
      svg.style.width = 0
      svg.style.height = 0
      svg.style.overflow = 'hidden'
      prepend(svg, document.body)
    }
  }

  if (shouldInjectCss && !window.__iconfont__svg__cssinject__) {
    window.__iconfont__svg__cssinject__ = true
    try {
      document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>");
    } catch (e) {
      console && console.log(e)
    }
  }

  ready(appendSvg)


})(window)