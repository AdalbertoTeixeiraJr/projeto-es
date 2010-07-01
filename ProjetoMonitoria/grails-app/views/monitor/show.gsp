
<%@ page import="monitor.Monitor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'monitor.label', default: 'Monitor')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.nome.label" default="Nome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "nome")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.sobrenome.label" default="Sobrenome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "sobrenome")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.matricula.label" default="Matricula" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "matricula")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.curso.label" default="Curso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "curso")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.cpf.label" default="Cpf" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "cpf")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.email.label" default="Email" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "email")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.identidade.label" default="Identidade" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "identidade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.senha.label" default="Senha" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "senha")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.disciplina.label" default="Disciplina" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "disciplina")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.notaObtida.label" default="Nota Obtida" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "notaObtida")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.sexo.label" default="Sexo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "sexo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.codigoDoProjeto.label" default="Codigo Do Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "codigoDoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.nomeMae.label" default="Nome Mae" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "nomeMae")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.cra.label" default="Cra" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "cra")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.hashSenha.label" default="Hash Senha" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "hashSenha")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.mediaFinal.label" default="Media Final" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "mediaFinal")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.unidade.label" default="Unidade" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "unidade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.avalicaoComplementar.label" default="Avalicao Complementar" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "avalicaoComplementar")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.periodosMonitorVoluntario.label" default="Periodos Monitor Voluntario" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "periodosMonitorVoluntario")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.telFixo.label" default="Tel Fixo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "telFixo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.classificacao.label" default="Classificacao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "classificacao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.notaDisciplina.label" default="Nota Disciplina" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "notaDisciplina")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.periodosMonitorBolsista.label" default="Periodos Monitor Bolsista" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "periodosMonitorBolsista")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.professorOrientador.label" default="Professor Orientador" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "professorOrientador")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.nomePai.label" default="Nome Pai" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "nomePai")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitor.celular.label" default="Celular" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorInstance, field: "celular")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${monitorInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
