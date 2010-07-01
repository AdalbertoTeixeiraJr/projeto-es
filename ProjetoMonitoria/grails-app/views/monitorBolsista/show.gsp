
<%@ page import="monitor.MonitorBolsista" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'monitorBolsista.label', default: 'MonitorBolsista')}" />
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
                            <td valign="top" class="name"><g:message code="monitorBolsista.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.nome.label" default="Nome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "nome")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.sobrenome.label" default="Sobrenome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "sobrenome")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.matricula.label" default="Matricula" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "matricula")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.curso.label" default="Curso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "curso")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.cpf.label" default="Cpf" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "cpf")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.email.label" default="Email" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "email")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.identidade.label" default="Identidade" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "identidade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.senha.label" default="Senha" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "senha")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.contacorrente.label" default="Contacorrente" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "contacorrente")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.agencia.label" default="Agencia" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "agencia")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.disciplina.label" default="Disciplina" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "disciplina")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.notaObtida.label" default="Nota Obtida" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "notaObtida")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.sexo.label" default="Sexo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "sexo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.codigoDoProjeto.label" default="Codigo Do Projeto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "codigoDoProjeto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.nomeMae.label" default="Nome Mae" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "nomeMae")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.cra.label" default="Cra" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "cra")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.hashSenha.label" default="Hash Senha" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "hashSenha")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.mediaFinal.label" default="Media Final" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "mediaFinal")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.unidade.label" default="Unidade" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "unidade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.avalicaoComplementar.label" default="Avalicao Complementar" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "avalicaoComplementar")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.periodosMonitorVoluntario.label" default="Periodos Monitor Voluntario" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "periodosMonitorVoluntario")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.telFixo.label" default="Tel Fixo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "telFixo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.classificacao.label" default="Classificacao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "classificacao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.notaDisciplina.label" default="Nota Disciplina" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "notaDisciplina")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.periodosMonitorBolsista.label" default="Periodos Monitor Bolsista" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "periodosMonitorBolsista")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.professorOrientador.label" default="Professor Orientador" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "professorOrientador")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.nomePai.label" default="Nome Pai" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "nomePai")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monitorBolsista.celular.label" default="Celular" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monitorBolsistaInstance, field: "celular")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${monitorBolsistaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
