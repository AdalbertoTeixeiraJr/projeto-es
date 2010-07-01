<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastrar Monitor</title>
  </head>
  <body>
    <h1>Cadastrar MonitorSample line</h1>
    <form action="">

<fieldset class="cadastroMonitor">
<legend class="monitor">Informações Monitoria</legend>
<label for="matricula" class="monitor">Matrícula </label><input type="text" name="matricula" class="monitor"/>
<fieldset class="monitor">
<legend class="monitor">Tipo Monitor: </legend>
<input class="minimo" type="radio" title="Escolha uma opção" name="tipoMonitor" id="voluntario" value="Voluntario"><label for="voluntario" class="pequeno">&nbsp;Voluntario</label>
<input class="minimo" type="radio" title="Escolha uma opção" name="tipoMonitor" id="bolsista" value="Bolsista"><label for="bolsista" class="pequeno">&nbsp;Bolsista</label>
</fieldset>
<fieldset class="monitor">
<legend class="monitor">Informações Adicionais: </legend>
<label for="filiacao" class="monitor">Filiação </label><input type="text" name="filiacao" class="monitor"/>
<label for="disciplina" class="monitor">Disciplina </label><input type="text" name="disciplina"class="monitor"/><br/>
<label for="unidade" class="monitor">Unidade </label><input type="text" name="unidade" class="monitor"/>
<label for="codProjeto" class="monitor">Cod. Projeto </label><input type="text" name="codProjeto" class="monitor"/><br/>
<label for="profOrientador" class="monitor">Prof. Orientador </label><input type="text" name="profOrientador"/ class="grande"><br/>
</fieldset>

<fieldset class="monitor">
<legend class="monitor">Informações Acadêmicas</legend>
<label for="notaDisciplina" class="monitor">Nota Disciplina </label><input type="text"name="notaDisciplina" class="monitor"/>
<label for="notasObtidas" class="monitor">Nota Obtida </label><input type="text" name="notasObtidas" class="monitor"/><br/>
<label for="cra" class="minimo" >CRA</label><input class="pequeno" type="text" name="cra" disabled="disabled" class="monitor"/>
<label for="medFinal" class="monitor">Med Final </label><input class="pequeno" type="text" name="medFinal" disabled="disabled" class="monitor"/>
<label for="classificacao" class="monitor">Classificação</label><input class="minimo" type="text" name="classificacao" disabled="disabled" class="monitor"/><br/>
<label for="avaComplementares" class="monitor">Aval Complem </label><input type="text" name="avaComplementares"class="grande"/><br/>
</fieldset>
<br/>

<fieldset class="monitor">
<legend class="monitor">Se foi monitor(a), citar período(s):</legend>
<input class="minimo" type="checkbox" title="Já foi monitor voluntario?" name="monitores" id="fvoluntario" value="true"><label for="fvoluntario" class="minimo">&nbsp;Voluntário </label><input type="text" name="fvoluntt" class="grande"/><br/>
<input class="minimo" type="checkbox" title="Já foi monitor bolsista?" name="monitores" id="fbolsista" value="true"><label for="fbolsista" class="minimo">&nbsp;Bolsista  </label><input type="text" name="fbolsistt" class="grande"/>
</fieldset>
</fieldset>
<br/>
<fieldset class="cadastroMonitor">
<legend class="monitor">Informações Bancarias </legend>
<label for="agencia" class="monitor">Agencia </label><input class="pequeno" type="text" name="agencia" id="pequeno"/>
<label for="contacorrente" class="monitor">Conta Corrente </label><input class="medio" type="text" name="contacorrente" id="medio"/><br/>
</fieldset><br/>
<input type="submit" name="enviarInf" value="Enviar Dados"/><br/>

</form>
  </body>
</html>
