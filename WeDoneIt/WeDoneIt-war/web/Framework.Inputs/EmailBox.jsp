<%-- 
    Document   : EmailBox
    Created on : 12/09/2017, 20:47:47
    Author     : Heitor Victor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="form-group">
    <input type="email" class="form-control" id="<c:out value="${param.name}"/>" name="<c:out value="${param.name}"/>" aria-describedby="emailHelp" style="margin-left: 1%; width: 98%; margin-right: 1%; height: 35px; padding: 1px 1px 5px 10px;"/>
</div>

