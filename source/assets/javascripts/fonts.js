  WebFontConfig = {
      google: { families: [ 'Open+Sans+Condensed:300,700:latin',
                            'Open+Sans:400,700,400italic,700italic:latin',
                            'Ubuntu+Mono:400,400italic,700,700italic:latin'] }
  };
  (function() {
    var wf = document.createElement('script');
    wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })();
