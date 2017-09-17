<%-- 
    Document   : EmailBox
    Created on : 12/09/2017, 20:47:47
    Author     : Heitor Victor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="form-group">
    <input type="email" data-validation="[NOTEMPTY]" class="form-control" onchange="validateEmail();" id="<c:out value="${param.name}"/>" name="<c:out value="${param.name}"/>" aria-describedby="emailHelp" style="margin-left: 1%; width: 98%; margin-right: 1%; height: 35px; padding: 1px 1px 5px 10px;"/>
</div>

<script>
    function validateEmail(email) {
        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

//    if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
//			.test(formX.email.value))) {
//		blockAppend("email");
//		showDefaultError("INFORME_EMAIL");
//		return true;
//	} else {
//		checkAppend("email");
//	}

</script>