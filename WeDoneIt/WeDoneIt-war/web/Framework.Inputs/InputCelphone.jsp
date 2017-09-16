<%-- 
    Document   : InputCelphone
    Created on : 13/09/2017, 20:59:35
    Author     : Heitor Victor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="input-group input-group-sm ajuste">
    <input onkeydown="dateMask()" type="text" class="form-control" id="<c:out value='${param.name}'/>" name="<c:out value='${param.name}'/>" style="margin-left: 1%; width: 90%; margin-right: 1%;"/>
</div>
<script type="text/javascript">
    $("#<c:out value='${param.name}'/>").focus(function (){$("#<c:out value='${param.name}'/>").val("(")});
    function dateMask(){
        var v = $("#<c:out value='${param.name}'/>").val();
        if (v.match(/^\d{3}$/) !== null) {
            $("#<c:out value='${param.name}'/>").val(v + ')');
        } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
            $("#<c:out value='${param.name}'/>").val(v + '/');
        }
    }
</script>