<%-- 
    Document   : Index
    Created on : 07/09/2017, 20:37:30
    Author     : heito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/LayoutDefault.css">
        <script type="text/javascript" src="js/jQuery.js" ></script>
    </head>
    <body>
        <jsp:include page="Framework.Inputs/TextBox.jsp">
            <jsp:param name="name" value="SET0001_NOME"/>
        </jsp:include>
        <br/>
        <br/>
        <br/>
        <%@ include file="Framework.Inputs/NumberBox.jsp" %>
    </body>
</html>
