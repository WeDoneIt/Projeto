<%-- 
    Document   : NumberBox
    Created on : 08/09/2017, 23:11:23
    Author     : Heitor Victor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="input-group input-group-sm ajuste">
    <input type="text" class="form-control number" id="<c:out value='${param.name}'/>" name="<c:out value='${param.name}'/>" style="margin-left: 1%; width: 90%; margin-right: 1%;"/><div id="erromsg" style="margin-left:10px; margin-right: 10px;"></div>
</div>

<script type="text/javascript">
   $("#erromsg").fadeOut();
    $(document).ready(function () {
        //called when key is pressed in textbox
        $("#<c:out value='${param.name}'/>").keypress(function (e) {
            //if the letter is not digit then display error and don't type anything
            var virgula = $("#SET0001_NUMBER").val();
            if(e.which == 44 && !virgula.includes(',')){}
            else if(e.which == 44 && virgula.includes(',')){
                return false;
            }
            else if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                $("#erromsg").html("<input type='button' class='btn btn-danger btn-sm' data-toggle='tooltip' data-placement='right' title='Tooltip on right' value='Este campo só aceita números'>").delay(5).show(function (){
                    $("#erromsg").delay(3000).fadeOut();
                });
                return false;
            }
        });
    });
</script>
