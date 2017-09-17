<%-- 
    Document   : InputZipCode
    Created on : 17/09/2017, 13:42:30
    Author     : Heitor Victor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="input-group input-group-sm ajuste">
    <input onkeydown="zipCodeMask(event)" type="text" maxlength="11" class="form-control" id="<c:out value='${param.name}'/>" name="<c:out value='${param.name}'/>" style="margin-left: 1%; width: 90%; margin-right: 1%;"/>
</div>

<script type="text/javascript">
    function zipCodeMask(e){
        if(e.keyCode === 8){return;}
        var v = $("#<c:out value='${param.name}'/>").val();
        if (v.match(/^\d{5}$/) !== null) {
            $("#<c:out value='${param.name}'/>").val(v + ' - ');
        }
    }
</script>

