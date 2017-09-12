<%-- 
    Document   : LabelBox
    Created on : 10/09/2017, 17:46:37
    Author     : Heitor Victor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<strong>
    <label for="<c:out value="${param.for}"/>" style="margin-left: 1%; width: 90%; margin-right: 1%; font-family: 'Arial'; font-size: 12pt; color: #aaa">
        <c:out value="${param.label}"/>
    </label>
</strong>
