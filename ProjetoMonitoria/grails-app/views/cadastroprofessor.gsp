<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastro Professor</title>
    <style>
      fieldset.cadastroMonitor{
	width:465px;
}
fieldset.monitor{
	width:460px;
}

label.monitor{
	width:110px;
	font: 10px verdana , arial, tahoma, sans-serif;
}

legend.monitor{
	font:bold 10px verdana, arial, tahoma, sans-serif;
}


input.monitor{
	width: 100px
}

input.grande{
	width:315px
}

      h1{
        font:20px verdana, arial, tahoma, sans-serif;
      }
      body {
        margin:0;
        padding:50px;
        background:#fff;
        text-align:center; /* hack para o IE */
      }
      #tudo {
        width: 500px;
        margin:0 auto;
        text-align:left; /* "remédio" para o hack do IE */
      }
      #conteudo {
	background-color: #FFF;
      }
    </style>
  </head>
  <body>
    <h1>Cadastro Professor </h1>
   <g:form url="[controller:'professor',action:'save']">
     <fieldset class="cadastroMonitor">
      <legend class="monitor"> Dados Cadastrais </legend>
      <label for="nome" class="monitor">Nome </label><input type="text" name="nome"class="monitor" />
      <label for="Sobrenome" class="monitor">Sobrenome </label><input type="text" name="sobrenome"class="monitor"/><br/>
      <label for="disciplina" class="monitor">Disciplina </label><input type="text" name="disciplina"class="monitor"/>
      <label for="matricula" class="monitor">Matricula </label><input type="text" name="matricula" class="monitor"/><br/>
      <label for="email" class="monitor">Email </label><input class="grande" type="text" name="email" /><br/>
        <fieldset>
          <legend class="monitor">Informações de Acesso </legend>
          <label for="senha"class="monitor">Senha </label><input type="password" name="senha" class="monitor"/><br/>
          <label for="confirmarSenha" class="monitor">Confirmar Senha </label><input type="password" name="confirmarSenhar" class="monitor"/><br/>
        </fieldset>
     </fieldset>
     <br/>
     <input type="submit" name="enviarInf" value="Enviar Dados"/><br/>
   </g:form>
  </body>
</html>
