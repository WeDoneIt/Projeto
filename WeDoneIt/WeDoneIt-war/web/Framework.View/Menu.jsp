<%-- 
    Document   : Menu
    Created on : 26/09/2017, 20:17:44
    Author     : Heitor Victor
--%>
<%@page import="FrameWork_Menu.Opcoes"%>
<%@page import="FrameWork_Menu.Menu"%>
<%@page import="FrameWork_Menu.MontaMenu"%>
<%@page import="java.util.List"%>
<%@page import="FrameWork_Menu.Module"%>
<style>
    *{margin: 0px; padding: 0px;}
    .menu{height: 100%; position: fixed; background-color: #222; top: 0px; overflow: hidden; transition: all 0.2s; z-index: 0;}
    #principal{width: 300px; left: -300px;}
    ul{ list-style: none;}
    ul li a {display: block; font-size: 12px; font-family: "Arial"; padding: 10px; border-bottom: 1px solid #0066aa; 
             text-decoration: none; color: #ccc; transition:  all 0.2s}
    ul li span {float: right; padding-right: 10px;}
    ul li a:hover{ background-color: #0066aa; color: #222; text-decoration: none; font-weight: 800;}
    .voltar{margin-top: 50px; background-color: #000; color: #fff; border-left: solid 5px #777;}
    #chk{display: none;}
    #chk:checked ~ #principal{transform: translateX(300px)}
    #chk:checked ~ #bg{display: block;}
    #bg{background-color: rgba(0,0,0,0.6); width: 100%; height: 100%; left: 0px; top: 0px; position: fixed; display: none;}
    #cursos, #contato{ width: 250px; left: -250px; }
    #cursos:target, #contato:target{ transform: translateX(250px); }
</style>

<div id="bg"></div>
<!--<nav class="menu" id="principal">
    <ul>
        <li><a href="" class="voltar">Voltar</a></li>
<%
//    MontaMenu montaMenu = new MontaMenu();
//    List<Module> module = montaMenu.listaModulos();
//    for (int i = 0; i < module.size(); i++) {
%>
        <li><a href="#"><% // out.print(module.get(i).getName()); %></a></li>
<%
//    }
%>
    </ul>
</nav>-->

<nav class="menu" id="principal">
    <ul>
        <li><a href="" class="voltar">Voltar</a></li>
        <li><a href="#">Home</a></li>
        <li><a href="#">Fórum</a></li>
        <li><a href="#cursos">Cursos<span>+</span></a></li>
        <li><a href="#">Sobre</a></li>
        <li><a href="#contato">Contato<span>+</span></a></li>
    </ul>
</nav>    
    
<nav class="menu" id="cursos">
    <ul>
        <li><a href="#" class="voltar">Voltar</a></li>
        <li><a href="#">PHP</a></li>
        <li><a href="#">Ruby</a></li>
        <li><a href="#">Python</a></li>
    </ul>
</nav>

<nav class="menu" id="contato">
    <ul>
        <li><a href="#" class="voltar">Voltar</a></li>
        <li><a href="#">E-mail</a></li>
        <li><a href="#">Facebook</a></li>
        <li><a href="#">Twitter</a></li>
    </ul>
</nav>
