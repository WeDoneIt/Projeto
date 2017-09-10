<%-- 
    Document   : NumberBox
    Created on : 08/09/2017, 23:11:23
    Author     : heito
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .ajuste{
        margin-left: 2.5%;
        width: 95%;
    }
    
</style>

<div class="input-group input-group-sm ajuste">
    <input type="text" class="form-control" id="<c:out value='${param.name}'/>" name="<c:out value='${param.name}'/>"/><div id="erromsg" style="margin-left:10px;"></div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        //called when key is pressed in textbox
        $("#<c:out value='${param.name}'/>").keypress(function (e) {
            //if the letter is not digit then display error and don't type anything
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                $("#erromsg").html("<input type='button' class='btn btn-danger btn-sm' data-toggle='tooltip' data-placement='right' title='Tooltip on right' value='Este campo só aceita números'>").delay(5).show(function (){
                    $("#erromsg").delay(3000).fadeOut();
                });
                return false;
            }
        });
    });
   
</script>
