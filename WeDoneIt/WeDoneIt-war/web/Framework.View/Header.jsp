<%-- 
    Document   : Default
    Created on : 25/09/2017, 20:06:25
    Author     : Heitor Victor
--%>
<style>
        *{margin: 0px; padding: 0px;}
        header{width: 100%; height: 50px; top: 0px; left: 0px; position: fixed; background-color: #222; border-bottom: 2px solid #0066aa; z-index: 900}
        .menu-icon{position: fixed; font-size: 25px; font-weight: bold; width: 40px; height: 40px; text-align: center; 
                   background-color: #222; color: #fff; cursor: pointer; transition: all  0.4s; left: 20px; top: 5px; z-index: 910}
        .menu-icon:hover{background-color: #fff; color: #222; z-index: 920}
        #chk{position: absolute;}
        #notification{height: 30px; width: 30px; float: right; margin: 10px 10px 5px 5px; color: #fff}
        #notification a span{ height: 30px; width: 30px; color: #fff}
        #users{height: 30px; width: 30px; background-color: #fff; float: right; margin: 10px 10px 5px 5px;}
</style>
<header>
    <div id="notification">
        <a href="#"><span class="glyphicon glyphicon-asterisk"></span></a>
    </div>
    <div id="users">
        
    </div>
</header>
<input type="checkbox" id="chk">
<label for="chk" class="menu-icon">&#9776;</label>
