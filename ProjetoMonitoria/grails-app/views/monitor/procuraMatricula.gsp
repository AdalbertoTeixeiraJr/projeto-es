<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Verifica Matricula Monitor</title>
  </head>
  <script type="text/javascript">
      function verifica(){
      window.location.href="[controller:'monitor',action:'verificar']"

  }</script>


<body>
<g:form name="formverifica" url="[controller:'monitor',action:'verificar']">
<fieldset class="cadastroMonitor">
<label for="matricula" class="matrMonitor">Matricula </label><input type="text" name="matricula" class="matrMonitor" maxlength="8"/>
<br/>
<input type="submit" name="procurar" value="Verificar" class="matrMonitor" onClick="verifica()"/><br/>
<a href="cadastro.gsp">Ficha Cadastral</a>
</fieldset>
</g:form>
     
  </body>
</html>
