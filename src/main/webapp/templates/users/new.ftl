[#ftl]

[#assign content]

[#assign errors = flash['errors']![]/]

[#if errors?size > 0]
  <ul>
  [#list errors as e]
    <li>${e}</li>
  [/#list]
  </ul>
[/#if]

<form action="/users"
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
           value="${msg['create']}"
  </dl>
</form>
[/#assign]

[#include "layout.ftl"/]