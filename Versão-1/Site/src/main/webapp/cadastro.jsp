<%-- 
    Document   : cadastro
    Created on : 26/04/2017, 23:03:53
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title> Cadastro </title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet">
    </head>

    <body>

<%@ include file = "cabecalho.jsp"%>

        <div class="container">
            <div class ="page-header">
                <h1> Pré Cadastro </h1>
            </div> 
        </div>

        <div class="container">
            <form action="NovoServlet" method="post" class="form-horizontal">

                <div class="form-group">
                    <label class="control-label col-sm-2" for="nome"> Nome:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name = "nome" id="nome" placeholder="Nome">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="contato"> Contato:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name = "contato" id="contato" placeholder="Contato">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="rua"> Rua:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name = "rua" id="rua" placeholder="Nome da Rua">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="bairro"> Bairro:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name = "bairro" id="bairro" placeholder="Nome do Bairro">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="numero"> Número:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name = "numero" id="numero" placeholder="Número do Imóvel">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="complemento"> Complemento:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name = "complemento" id="complemento" placeholder="Complemento">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="login"> Login:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name = "login" id="login" placeholder="Login de usuário">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="senha"> Senha:</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" name = "senha" id="senha" placeholder="Senha de usuário">
                    </div>
                </div>


                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox"> Lembrar senha</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Enviar</button>
                    </div>
                </div>

            </form>
        </div>

<%@ include file = "rodape.jsp"%>

    </body>
</html>

