<%-- 
    Document   : Index
    Created on : 07/09/2017, 20:37:30
    Author     : Heitor Victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Framework.Inputs/importHeader.jsp"/>
    </head>
    <body>
        <jsp:include page="Framework.Inputs/LabelBox.jsp">
            <jsp:param name="label" value="Input Text"/>
            <jsp:param name="for" value="SET0001_TEXT"/>
        </jsp:include>
        <jsp:include page="Framework.Inputs/TextBox.jsp">
            <jsp:param name="name" value="SET0001_TEXT"/>
        </jsp:include>
        <br/>
        <jsp:include page="Framework.Inputs/LabelBox.jsp">
            <jsp:param name="label" value="Input Number"/>
            <jsp:param name="for" value="SET0001_NUMBER"/>
        </jsp:include>
        <jsp:include page="Framework.Inputs/NumberBox.jsp">
            <jsp:param name="name" value="SET0001_NUMBER"/>
        </jsp:include>
        <br/>
        <jsp:include page="Framework.Inputs/LabelBox.jsp">
            <jsp:param name="label" value="Date Picker"/>
            <jsp:param name="for" value="SET0001_DATEPICKER"/>
        </jsp:include>
        <jsp:include page="Framework.Inputs/DatePicker.jsp">
            <jsp:param name="name" value="SET0001_DATEPICKER"/>
        </jsp:include>
        <br/>
        <jsp:include page="Framework.Inputs/LabelBox.jsp">
            <jsp:param name="label" value="Combo Box"/>
            <jsp:param name="for" value="SET0001_COMBOBOX"/>
        </jsp:include>
        <jsp:include page="Framework.Inputs/ComboBox.jsp">
            <jsp:param name="name" value="SET0001_COMBOBOX"/>
        </jsp:include>
        <br/>
        <jsp:include page="Framework.Inputs/LabelBox.jsp">
            <jsp:param name="label" value="E-mail"/>
            <jsp:param name="for" value="SET0001_EMAILBOX"/>
        </jsp:include>
        <jsp:include page="Framework.Inputs/EmailBox.jsp">
            <jsp:param name="name" value="SET0001_EMAILBOX"/>
        </jsp:include>

        <jsp:include page="Framework.Inputs/LabelBox.jsp">
            <jsp:param name="label" value="Input Celphone"/>
            <jsp:param name="for" value="SET0001_CELPHONE"/>
        </jsp:include>
        <jsp:include page="Framework.Inputs/InputCelphone.jsp">
            <jsp:param name="name" value="SET0001_CELPHONE"/>
        </jsp:include>
        <br/>
        <jsp:include page="Framework.Inputs/LabelBox.jsp">
            <jsp:param name="label" value="Input ZipCode/CEP"/>
            <jsp:param name="for" value="SET0001_ZIPCODE"/>
        </jsp:include>
        <jsp:include page="Framework.Inputs/InputZipCode.jsp">
            <jsp:param name="name" value="SET0001_ZIPCODE"/>
        </jsp:include>
    </body>
</html>
