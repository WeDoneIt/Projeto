<%-- 
    Document   : TextBox
    Created on : 07/09/2017, 20:32:57
    Author     : heito
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .ajuste{
        margin-left: 2.5%;
        width: 95%;
    }
    
</style>

<div class="input-group input-group-sm ajuste">
    <input type="text" class="form-control" id="<c:out value='${param.name}'/>" name="<c:out value='${param.name}'/>"/>
</div>
