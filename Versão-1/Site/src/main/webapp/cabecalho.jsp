<%-- 
    Document   : novojsp
    Created on : 26/04/2017, 23:00:45
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title> Aluga+ </title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet">
    </head>

    <body>
        <div class="jumbotron">
            <div class="container text-center">
                <h1> Aluga+ </h1>
                <p> Facilitando a sua locação. </p>
            </div>
        </div>

        <nav class = "navbar navbar-inverse">
            <div class ="container-fluid">
                <div class="navbar-header">
                    <button type="button" class ="navbar-toggle" data-tougle ="collapse" data-target ="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class = "navbar-brand" href ="index.jsp"> Logo </a>
                </div>
                <div class ="collapse navbar-collapse" id ="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"> <a href="index.jsp"> Home </a> </li>
                        <li> <a href="#"> A Empresa </a> </li>
                        <li> <a href="#"> Para Alugar </a> </li>
                        <li> <a href="#"> Notícia </a> </li>
                        <li> <a href="cadastro.jsp"> Pré Cadastro </a> </li>
                        <li> <a href="#"> Contato </a> </li>
                    </ul>
                    <ul class ="nav navbar-nav navbar-right">
                        <li> <a href="#"> <span class="glyphicon glyphicon-user"> </span> Sua Conta </a> </li>
                    </ul>
                </div>
            </div>   
        </nav>
    </body>
</html>