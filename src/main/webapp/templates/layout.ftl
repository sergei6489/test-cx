[#ftl]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet"
          type="text/css"
          media="screen"
          href="/css/main.css"/>
    <script type="text/javascript"
            src="/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript"
            src="/js/app.js"></script>
    <title>Simple Circumflex Application</title>
  </head>
  <body>
    <div id="header">
      [#if currentUser??]
        <div class="user-info">
          <a href="/users/${currentUser.id}">${currentUser.login}</a>
        </div>
      [/#if]
    </div>
    <div id="outer">
      <div id="content">
        ${content}
      </div>
      <div id="footer">
        <span class="copyright">2008-${currentDate?string("yyyy")}</span> ©
        <a class="home" href="http://${headers['Host']!"localhost"}">
          ${headers['Host']!"localhost"}
        </a>
      </div>
    </div>
  </body>
</html>
