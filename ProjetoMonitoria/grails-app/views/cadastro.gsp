<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastro Monitor</title>
    <style type="text/css">
fieldset.cadastroMonitor{
	width:465px;
}
fieldset.telefone{
	width:230px;
}
fieldset.sexo{
	width: 220px;
}
fieldset.monitor{
	width:460px;
}
h1{
  font: 20px verdana, arial, tahoma, sans-serif;
  
}

label.monitor{
	width:110px;
	font: 10px verdana , arial, tahoma, sans-serif;
}

label.dec{
	width:450px;
	font: normal 8px verdana, arial, tahoma, sans-serif;
	font-size: 9px;
}
label dec{
	width:450px;
	font: normal 10px verdana, arial, tahoma, sans-serif;
	font-family: "Arial Black", Gadget, sans-serif;
}

label.medio{
	width:80px;
	font: 10px verdana , arial, tahoma, sans-serif;
}

label.pequeno{
	width:50px;
	font:bold;
	font: 10px verdana , arial, tahoma, sans-serif;
}
label.minimo{
	width:25px;
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
input.medio{
	width:80px
}
input.minimo{
	width:25px
}
input.pequeno{
	width:50px
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
    <h1>Cadastro Novo Monitor</h1>
    <form action="">
<fieldset class="cadastroMonitor">
<legend class="monitor"> Dados Cadastrais </legend>
<label for="nome" class="monitor">Nome </label><input type="text" name="nome"class="monitor" />
<label for="Sobrenome" class="monitor">Sobrenome </label><input type="text" name="sobrenome"class="monitor"/><br/>
<label for="curso" class="monitor">Curso </label><input type="text" name="curso"class="monitor"/>
<label for="matricula" class="monitor">Matricula </label><input type="text" name="matricula" class="monitor"/><br/>
<label for="cpf" class="monitor">C.P.F. </label><input type="text" name="cpf"class="monitor"/>
<label for="identidade" class="monitor">Identidade </label><input type="text" name="identidade"class="monitor"/><br/>
<label for="email" class="monitor">Email </label><input class="grande" type="text" name="email" /><br/>


<fieldset class="telefone">
<legend class="monitor">Telefone Contato </legend>
  <label for="celular" class="monitor">Celular </label><input type="text" name="celular" class="monitor"/><br>
  <label for="fixo"class="monitor">Fixo </label><input type="text" name="fixo" class="monitor"/><br>
</fieldset>
<fieldset class="sexo">
<legend class="monitor">Sexo: </legend>
<input class="minimo" type="radio" title="Escolha uma opção" name="sexoM" id="masculino" value="true"><label for="masculino" class="pequeno">&nbsp;Masculino</label><br/>
<input class="minimo" type="radio" title="Escolha uma opção" name="sexoF" id="feminino" value="false"><label for="feminino" class="pequeno">&nbsp;Feminino</label><br/>
</fieldset>

<fieldset>
<legend class="monitor">Informações de Acesso </legend>
<label for="login"class="monitor">Login </label><input type="text" name="login" class="monitor"/><br/>
<label for="senha"class="monitor">Senha </label><input type="password" name="senha" class="monitor"/><br/>
<label for="confirmarSenha" class="monitor">Confirmar Senha </label><input type="password" name="confirmarSenhar" class="monitor"/><br/>
</fieldset>
</fieldset>
<br/>
<fieldset class="cadastroMonitor">
<legend class="monitor">Informações Monitoria</legend>
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
<label for="decVerdade" class="dec" id="decVerdade">Declaro que todas as informações contidas nesse fomulário são verdadeiras</label><input class="minimo" type="checkbox" name="decVerdade" id="decVerdade" value ="true"/>
<br/>
<input type="submit" name="enviarInf" value="Enviar Dados"/><br/>

</form>
  </body>
</html>
