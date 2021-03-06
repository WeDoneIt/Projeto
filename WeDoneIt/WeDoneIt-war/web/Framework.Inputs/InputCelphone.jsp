<%-- 
    Document   : InputCelphone
    Created on : 13/09/2017, 20:59:35
    Author     : Heitor Victor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="input-group input-group-sm ajuste">
    <input maxlength="17" type="text" class="form-control" id="<c:out value='${param.name}'/>" name="<c:out value='${param.name}'/>" style="margin-left: 1%; width: 90%; margin-right: 1%;"/><div id="NOTY_<c:out value='${param.name}'/>" style="margin-left:10px; margin-right: 10px;"></div>
</div>

<script type="text/javascript">
    $("#NOTY_<c:out value='${param.name}'/>").fadeOut();
    $(document).ready(function () {
        //called when key is pressed in textbox
        $("#<c:out value='${param.name}'/>").keypress(function (e) {
            //if the letter is not digit then display error and don't type anything
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                $("#NOTY_<c:out value='${param.name}'/>").html("<input type='button' class='btn btn-danger btn-sm' data-toggle='tooltip' data-placement='right' title='Tooltip on right' value='Este campo s� aceita n�meros'>").delay(5).show(function () {
                    $("#NOTY_<c:out value='${param.name}'/>").delay(3000).fadeOut();
                });
                return false;
            }
            if (e.keyCode === 8) {
                return;
            }
            var v = $("#<c:out value='${param.name}'/>").val();
            if (v.match(/^\d{0}$/) !== null) {
                $("#<c:out value='${param.name}'/>").val(v + '(');
            } else if (v.match(/\d{2}$/) !== null && v.length < 4) {
                $("#<c:out value='${param.name}'/>").val(v + ') ');
            } else if (v.match(/\d{5}$/) !== null) {
                $("#<c:out value='${param.name}'/>").val(v + ' - ');
            }
        });
    });
</script>
