[#ftl]

[#assign user = currentUser]

[#assign content]
<p>${msg['user.login']}: ${user.login}</p>
<p>${msg['user.password']}: ${user.password}</p>
<p>${msg['user.creationDate']}: ${user.creationDate?string("dd-MM-yyyy")}</p>
[/#assign]

[#include "layout.ftl"/]