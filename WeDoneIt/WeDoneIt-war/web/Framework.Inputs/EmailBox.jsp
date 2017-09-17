<%-- 
    Document   : EmailBox
    Created on : 12/09/2017, 20:47:47
    Author     : Heitor Victor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="input-group input-group-sm ajuste">
    <input type="text" class="form-control" id="<c:out value='${param.name}'/>" name="<c:out value='${param.name}'/>" style="margin-left: 1%; width: 90%; margin-right: 1%;"/>
</div>

