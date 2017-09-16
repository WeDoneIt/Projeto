<%-- 
    Document   : ComboBox
    Created on : 11/09/2017, 22:15:11
    Author     : Heitor Victor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<select class="form-control"  id="<c:out value='${param.name}'/>" name="<c:out value='${param.name}'/>" style="margin-left: 1%; width: 98%; margin-right: 1%; height: 35px; padding: 1px 1px 5px 10px;">
    <option value="1" >John Resig</option>
    <option value="2" >Maria Joaquina</option>
    <option value="3" >Michael Jackson</option>
</select>
    