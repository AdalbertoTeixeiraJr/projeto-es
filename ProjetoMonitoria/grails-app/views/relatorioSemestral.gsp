<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css" media="screen">
      fieldset.cadastroMonitor{
	width:490px;
	font:10px verdana, arial, tahoma, sans-serif;
}
fieldset.telefone{
	width:230px;
	font: 10px verdana, arial, tahoma, sans-serif;
}
fieldset.sexo{
	width: 220px;
	font:bold 10px verdana, arial, tahoma, sans-serif;
}
fieldset.monitor{
	width:460px;
	font:bold 10px verdana, arial, tahoma, sans-serif;
}
fieldset.telaMatr{
        margin: 80px 20px 20px 80px;
        width:465px;
	    font:10px verdana, arial, tahoma, sans-serif;
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
label.matrMonitor{
   font: 25px,verdana, arial, tahoma, sans-serif;
}

label.pequeno{
	width:50px;
	font: 10px verdana , arial, tahoma, sans-serif;
}
label.minimo{
	width:25px;
	font: 10px verdana , arial, tahoma, sans-serif;

}

legend.monitor{
	font:10px verdana, arial, tahoma, sans-serif;
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
input.matrMonitor{
	width:90px;
	height:25px;
}
input.minimo{
	width:25px
}
input.pequeno{
	width:50px;
    padding: 5px 5px 5px 5px;
}



body {

margin:0;
padding:0;
background:#fff;
text-align:center; /* hack para o IE */
}
#tudo {
width: 500px;
margin:0 auto;
padding: 10px;
text-align:left; /* "remédio" para o hack do IE */
}
.#conteudo {
	background-color: #eee;
} 
    </style>
    <title>Relatório Semestral</title>
  </head>
  <body>

<h3>RELATÓRIO DE ATIVIDADES  DESENVOLVIDAS PELO(A) MONITOR</h3>
<form action="">
<fieldset class="cadastroMonitor">
<fieldset class="cadastroMonitor">
<legend class="monitor">IDENTIFICAÇÃO</legend>
<label for="nome" class="monitor">Monitor </label><input type="text" name="nome"class="grande" /><br/>
<label for="Sobrenome" class="monitor">Tipo de Contrato </label><input type="text" name="tipodeContrato"class="monitor"/>
<label for="curso" class="monitor">Curso </label><input type="text" name="curso"class="monitor"/><br/>
<label for="matricula" class="monitor">Matricula </label><input type="text" name="matricula" class="monitor" disabled ="disabled"/>
<label for="cpf" class="monitor">Disciplina </label><input type="text" name="disciplina"class="monitor"/>
<label for="email" class="monitor">Periodo Realização </label><input class="grande" type="text" name="periodoDeRealizacao" /><br/>
<label for="turma" class="monitor">Turma </label><input class="grande" type="text" name="turma" /><br/>
<label for="orientador" class="monitor">Professor(a) Orientador(a) </label><input class="grande" type="text" name="Orientador" /><br/>
<label for="projeto" class="monitor">Projeto </label><input class="grande" type="text" name="projeto" /><br/>
<label for="coordenadoraPRE" class="grande">Coordenadora de programas e Estágios da PRE/UFCG </label><input class="grande" type="text" name="coordenadoraPRE" /><br/>
<label for="coordenadorCEEI" class="grande">Coordenador(a) do Programa de Monitoria no CEEI </label><input class="grande" type="text" name="coordenadorCEEI" /><br/>
<label for="coordenadorDSC" class="grande">Coordenador(a) da Monitoria na Unidade Acadêmica do DSC </label><input class="grande" type="text" name="coordenadorDSC" /><br/>
</fieldset>
<fieldset class="cadastroMonitor">
<legend class="monitor">INTRODUÇÃO</legend>
<TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
</fieldset>

<fieldset class="cadastroMonitor">
<legend class="monitor">APRESENTAÇÃO DOS DADOS</legend>
<fieldset class="cadastroMonitor">
<legend class="monitor">Objetivo Geral da Disciplina</legend>
<TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
</fieldset>

<fieldset>
<legend class="monitor">Objetivo Especifico da Disciplina</legend>
<TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
</fieldset>
<fieldset>
<legend class="monitor">Descrição da Infra-Estrutura Disponivel Para Realização da Monitoria</legend>
<TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
</fieldset>
<fieldset>
<legend class="monitor">Atividades Realizadas Pelo(a) Monitor na Disciplina</legend>
<TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
</fieldset>
<fieldset>
<legend class="monitor">Freqüência e Treinamentos recebidas do orientador para realização da Monitoria</legend>
<TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
</fieldset>

</fieldset>
<fieldset>
<legend class="monitor">Avaliação da Disciplina</legend>
<fieldset>
<legend class="monitor">Avaliação Quantitativa do desempenho dos alunos</legend>
<label for="Sobrenome" class="monitor">Aprovados </label><input type="text" name="tipodeContrato"class="monitor"/><label for="Sobrenome" class="minimo"></label><input type="text" name="tipodeContrato"class="pequeno"value="     %"/><br/>
<label for="Sobrenome" class="monitor">Reprovados Nota</label><input type="text" name="tipodeContrato"class="monitor"/><label for="Sobrenome" class="minimo"></label><input type="text" name="tipodeContrato"class="pequeno"value="     %"/><br/>
<label for="Sobrenome" class="monitor">Trancamentos</label><input type="text" name="tipodeContrato"class="monitor"/><label for="Sobrenome" class="minimo"></label><input type="text" name="tipodeContrato"class="pequeno"value="     %"/><br/>
<label for="Sobrenome" class="monitor">Reprovados Falta</label><input type="text" name="tipodeContrato"class="monitor"/><label for="Sobrenome" class="minimo"></label><input type="text" name="tipodeContrato"class="pequeno"value="     %"/><br/>
<label for="Sobrenome" class="monitor">Total</label><input type="text" name="tipodeContrato"class="monitor"/><label for="Sobrenome" class="minimo"></label><input type="text" name="tipodeContrato"class="pequeno" value="     %"/><br/>
</fieldset>
<fieldset>
<legend class="monitor">Avaliação Qualitativa do desempenho dos alunos</legend>
<TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
</fieldset>
</fieldset>

<fieldset>
<legend class="monitor">Auto-Avaliação </legend>
<fieldset>
<legend class="monitor">Itens </legend>
<fieldset>
<legend class="monitor">Motivação</legend>
<input class="minimo" type="radio" name="tipoMonitor1" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Péssimo</label><input class="minimo" type="radio" name="tipoMonitor1" id="voluntario" value="ruim"><label for="Pessimo" class="pequeno">&nbsp;Ruim</label><input class="minimo" type="radio" name="tipoMonitor1" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Regular</label><input class="minimo" type="radio" name="tipoMonitor1" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Bom</label><input class="minimo" type="radio" name="tipoMonitor1" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Ótimo</label><br/>
</fieldset>
<fieldset>
<legend class="monitor">Disponibilidade</legend>
<input class="minimo" type="radio" name="tipoMonitor2" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Péssimo</label><input class="minimo" type="radio" name="tipoMonitor2" id="voluntario" value="ruim"><label for="Pessimo" class="pequeno">&nbsp;Ruim</label><input class="minimo" type="radio" name="tipoMonitor2" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Regular</label><input class="minimo" type="radio" name="tipoMonitor2" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Bom</label><input class="minimo" type="radio" name="tipoMonitor2" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Ótimo</label><br/>
</fieldset>
<fieldset>
<legend class="monitor">Iniciativa</legend>
<input class="minimo" type="radio" name="tipoMonitor3" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Péssimo</label><input class="minimo" type="radio" name="tipoMonitor3" id="voluntario" value="ruim"><label for="Pessimo" class="pequeno">&nbsp;Ruim</label><input class="minimo" type="radio" name="tipoMonitor3" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Regular</label><input class="minimo" type="radio" name="tipoMonitor3" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Bom</label><input class="minimo" type="radio" name="tipoMonitor3" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Ótimo</label><br/>
</fieldset>
<fieldset>
<legend class="monitor">Relacionamento com Alunos</legend>
<input class="minimo" type="radio" name="tipoMonitor4" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Péssimo</label><input class="minimo" type="radio" name="tipoMonitor4" id="voluntario" value="ruim"><label for="Pessimo" class="pequeno">&nbsp;Ruim</label><input class="minimo" type="radio" name="tipoMonitor4" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Regular</label><input class="minimo" type="radio" name="tipoMonitor4" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Bom</label><input class="minimo" type="radio" name="tipoMonitor4" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Ótimo</label><br/>
</fieldset>
<fieldset>
<legend class="monitor">Resposta ao Treinamento/Orientação</legend>
<input class="minimo" type="radio" name="tipoMonitor5" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Péssimo</label><input class="minimo" type="radio" name="tipoMonitor5" id="voluntario" value="ruim"><label for="Pessimo" class="pequeno">&nbsp;Ruim</label><input class="minimo" type="radio" name="tipoMonitor5" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Regular</label><input class="minimo" type="radio" name="tipoMonitor5" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Bom</label><input class="minimo" type="radio" name="tipoMonitor5" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Ótimo</label><br/>
</fieldset>
<fieldset>
<legend class="monitor">No geral, considera-se um monitor</legend>
<input class="minimo" type="radio" name="tipoMonitor6" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Péssimo</label><input class="minimo" type="radio" name="tipoMonitor6" id="voluntario" value="ruim"><label for="Pessimo" class="pequeno">&nbsp;Ruim</label><input class="minimo" type="radio" name="tipoMonitor6" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Regular</label><input class="minimo" type="radio" name="tipoMonitor6" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Bom</label><input class="minimo" type="radio" name="tipoMonitor6" id="voluntario" value="Pessimo"><label for="Pessimo" class="pequeno">&nbsp;Ótimo</label><br/>
</fieldset>
</fieldset>
<fieldset>
  <legend class="monitor">Considerações Finais </legend>
  <fieldset>
    <legend class="monitor">Do Monitor com Relação à Monitoria </legend>
    <TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
  </fieldset>
<fieldset>
<legend class="monitor">Do Papel da Monitoria para a Disciplina </legend>
<TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
</fieldset>
<fieldset>
<legend class="monitor">Do Professor Orientador para o Monitor </legend>
<TEXTAREA COLS=45 ROWS=8 NAME="comentario" class="grande"> Deixe seu comentário </TEXTAREA>
</fieldset>
</fieldset>
</fieldset>
</form>
<br/>
<p>Enviar cópia eletrônica para o Coordenador de Monitoria da sua UA<br/>
 Enviar cópia impressa, com o Plano de Ensino da Disciplina em anexo.
</p>
  </body>
</html>
