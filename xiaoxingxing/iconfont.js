(function(window){var svgSprite='<svg><symbol id="icon-xingxing" viewBox="0 0 1024 1024"><path d="M887 430.2c3.4-3.5 1.4-9.4-3.4-10.1l-250.2-38.2c-2-0.3-3.7-1.6-4.5-3.4l-112.3-239c-2.2-4.6-8.7-4.6-10.9 0l-112.3 239c-0.9 1.8-2.5 3.1-4.5 3.4l-250.2 38.2c-4.8 0.7-6.8 6.6-3.4 10.1l181.4 185.7a6.2 6.2 0 0 1 1.6 5.2l-42.9 262.7c-0.8 4.9 4.4 8.6 8.8 6.2l224-123.7c1.8-1 4-1 5.8 0L738 890c4.4 2.4 9.6-1.3 8.8-6.2L704 621c-0.3-1.9 0.3-3.8 1.6-5.2L887 430.2z"  ></path></symbol></svg>';var script=function(){var scripts=document.getElementsByTagName("script");return scripts[scripts.length-1]}();var shouldInjectCss=script.getAttribute("data-injectcss");var ready=function(fn){if(document.addEventListener){if(~["complete","loaded","interactive"].indexOf(document.readyState)){setTimeout(fn,0)}else{var loadFn=function(){document.removeEventListener("DOMContentLoaded",loadFn,false);fn()};document.addEventListener("DOMContentLoaded",loadFn,false)}}else if(document.attachEvent){IEContentLoaded(window,fn)}function IEContentLoaded(w,fn){var d=w.document,done=false,init=function(){if(!done){done=true;fn()}};var polling=function(){try{d.documentElement.doScroll("left")}catch(e){setTimeout(polling,50);return}init()};polling();d.onreadystatechange=function(){if(d.readyState=="complete"){d.onreadystatechange=null;init()}}}};var before=function(el,target){target.parentNode.insertBefore(el,target)};var prepend=function(el,target){if(target.firstChild){before(el,target.firstChild)}else{target.appendChild(el)}};function appendSvg(){var div,svg;div=document.createElement("div");div.innerHTML=svgSprite;svgSprite=null;svg=div.getElementsByTagName("svg")[0];if(svg){svg.setAttribute("aria-hidden","true");svg.style.position="absolute";svg.style.width=0;svg.style.height=0;svg.style.overflow="hidden";prepend(svg,document.body)}}if(shouldInjectCss&&!window.__iconfont__svg__cssinject__){window.__iconfont__svg__cssinject__=true;try{document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>")}catch(e){console&&console.log(e)}}ready(appendSvg)})(window)