[#ftl]

[#assign error = flash["error"]!/]

[#assign content]
[#if error??]<p>${error}</p>[/#if]
<form action="/login"
      method="post">
  <dl>
    <dt><label for="l">${msg['user.login']}</label></dt>
    <dd>
      <input id="l"
             name="l"
             size="15"
             type="text"/>
    </dd>
    <dt><label for="p">${msg['user.password']}</label></dt>
    <dd>
      <input id="p"
             name="p"
             size="15"
             type="password"/>
    </dd>
    <input type="submit"
           value="${msg['login']}"
  </dl>
</form>
[/#assign]

[#include "layout.ftl"/]