<%-- 
    Document   : DatePicker
    Created on : 11/09/2017, 21:58:51
    Author     : Heitor Victor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<div class="input-group input-group-sm ajuste">
    <input onkeydown="dateMask()" maxlength="10" type="text" class="form-control" id="<c:out value='${param.name}'/>" name="<c:out value='${param.name}'/>" style="margin-left: 1%; width: 90%; margin-right: 1%;"/>
</div>

<script type="text/javascript">
    $("#<c:out value='${param.name}'/>").datepicker();
    function dateMask(){
        var v = $("#<c:out value='${param.name}'/>").val();
        if (v.match(/^\d{2}$/) !== null) {
            $("#<c:out value='${param.name}'/>").val(v + '/');
        } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
            $("#<c:out value='${param.name}'/>").val(v + '/');
        }
    }
</script>