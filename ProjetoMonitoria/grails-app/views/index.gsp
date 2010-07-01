<html>
    <head>
        <title>Sistema Monitoria UFCG</title>
		<meta name="layout" content="main" />
		<style type="text/css" media="screen">

			#nav {
				margin-top:20px;
				margin-left:30px;
				width:228px;
				float:left;
			}
			.homePagePanel * {
				margin:0px;
                          
			}
			.homePagePanel .panelBody ul {
				list-style-type:none;
				margin-bottom:10px;
			}
			.homePagePanel .panelBody h1 {
				text-transform:uppercase;
				font-size:1.1em;
				margin-bottom:10px;
			}
			.homePagePanel .panelBody {
			    background: url(images/leftnav_midstretch.png) repeat-y top;
				margin:0px;
				padding:15px;
			}
			.homePagePanel .panelBtm {
                                background: url(images/leftnav_btm.png) no-repeat top;
				height:20px;
				margin:0px;
			}

			.homePagePanel .panelTop {
                                background: url(images/leftnav_top.png) no-repeat top;
				height:11px;
				margin:0px;
			}
			h2 {
				margin-top:15px;
				margin-bottom:15px;
				font-size:1.2em;
                                
                                text-align:center
			}
			#pageBody {
				margin-left:280px;
				margin-right:20px;
			}
		</style>
    </head>
    <script type="text/javascript">
      function direciona(){window.location.href="[controller:'redireciona',action:'login'"}

    <body>
		<div id="nav">
			<div class="homePagePanel">
				<div class="panelTop">

				</div>
				<div class="panelBody">
                                  <h2>Acessar Sistema</h2>
                                  <br>
                                  <g:form name="formlogin" url="[controller:'redireciona',action:'login'">
                                    <fieldset>
                                      
                                          <label for="login" class="login" id="login">Login: </label><input type="text" class="login" name="login" id="login"/><br/>
                                          <label for="senha" class="login" id="login">Senha: </label><input type="password" class="login"name="senha" id="login"/><br/>
                                                                                 
                                    </fieldset>

                                    <p align="center"><input type="submit" name="submitlogin" id="login" value="Entrar" onclick="direciona()"><br/></p>
                                    </g:form>
                                  <br>
                                  <h1>Não possui conta Monitoria?</h1>
                                  <br>
                                  <a href="cadastro.gsp">Clique Aqui</a>
                                  <input type="submit" class="criarConta" id="criarConta" name="criarConta" value="Criar Conta"/>
                                  <br/>
                                   <a href="cadastroprofessor.gsp">Cadastro de Professores no sistema</a>
				</div>
				<div class="panelBtm">
				</div>
			</div>


		</div>
		<div id="pageBody">
	        <h1>Sistema Monitoria UFCG</h1>
                <p>O Projeto de Monitoria do CEEI - 2010 :</p><br/>
                <h3>Iniciação à Docência e Melhoria do Ensino de Graduação no âmbito do CEEI/UFCG - 2010</h3><br/>
                <p>Disponibiliza 129 vagas para monitores:<br/>
                <h1>39 vagas contempladas com bolsas</h1><br/>
                <h1>90 vagas para voluntários (não remuneradas).</h1><br/>
                  O projeto inclui 49 disciplinas ofertadas pelas unidades acadêmicas de Engenharia Elétrica - DEE e de
                Sistemas e Computação - DSC e envolve 43 professores dessas unidades.

                <p>A seleção de monitores para o projeto é regido por:</p><br/>
                EDITAL PRE N0 016/2010 - PROCESSO SELETIVO DE MONITORES
                  <g:link>http://www.ufcg.edu.br</g:link>
                  <br/>
                  <p>Informações sobre Disciplinas, Vagas, Horários e Locais de Provas encontra-se no  Edital
                Complementar de cada unidade acadêmica.</p>
                  <br/>

                <p>Fiquem atentos para o *Período de Inscrição (1 a 3 de março de 2010)* e
procurem mais informações nas secretarias do DEE e do DSC ou com os
coordenadores de monitoria de cada unidade.</p><br/>

                

                <h2>DEE: <a href="http://www.uol.com.br">Prof. Euzeli Cipriano</a></h2>
                <h2>DSC: <a href="http://www.dsc.ufcg.edu.br/~livia">Profª Lívia Sampaio</a> </h2><br/>

                  <h3>Não percam oportunidade!<br>
                      Enriqueçam seus currículos!</h3><br>

	        <div id="controllerList" class="dialog">
                  <h2>Available Controllers:</h2>
	            <ul>
	              <g:each var="c" in="${grailsApplication.controllerClasses}">
	                    <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
	              </g:each>
	            </ul>
	        </div>
		</div>
    </body>
</html>