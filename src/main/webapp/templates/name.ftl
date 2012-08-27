[#ftl]

[#assign content]
<h1>Hello ${name}</h1>
<form action="/hello"
      method="post">

 <label for="n">${msg['name']}</label>
 <input type="text"
        id="n"
        name="n"
        placeholder="${msg['name.placeholder']}"/>
</form>

[/#assign]

[#include "layout.ftl"/]