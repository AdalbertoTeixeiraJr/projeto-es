
<%@ page import="monitor.Monitor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'monitor.label', default: 'Monitor')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${monitorInstance}">
            <div class="errors">
                <g:renderErrors bean="${monitorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="disciplina"><g:message code="monitor.disciplina.label" default="Disciplina" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'disciplina', 'errors')}">
                                    <g:textField name="disciplina" value="${monitorInstance?.disciplina}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notaObtida"><g:message code="monitor.notaObtida.label" default="Nota Obtida" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'notaObtida', 'errors')}">
                                    <g:textField name="notaObtida" value="${fieldValue(bean: monitorInstance, field: 'notaObtida')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sexo"><g:message code="monitor.sexo.label" default="Sexo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'sexo', 'errors')}">
                                    <g:checkBox name="sexo" value="${monitorInstance?.sexo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"><g:message code="monitor.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'senha', 'errors')}">
                                    <g:textField name="senha" value="${monitorInstance?.senha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="filiacao"><g:message code="monitor.filiacao.label" default="Filiacao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'filiacao', 'errors')}">
                                    <g:textField name="filiacao" value="${monitorInstance?.filiacao}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="codigoDoProjeto"><g:message code="monitor.codigoDoProjeto.label" default="Codigo Do Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'codigoDoProjeto', 'errors')}">
                                    <g:textField name="codigoDoProjeto" value="${monitorInstance?.codigoDoProjeto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cra"><g:message code="monitor.cra.label" default="Cra" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'cra', 'errors')}">
                                    <g:textField name="cra" value="${fieldValue(bean: monitorInstance, field: 'cra')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cpf"><g:message code="monitor.cpf.label" default="Cpf" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'cpf', 'errors')}">
                                    <g:textField name="cpf" value="${monitorInstance?.cpf}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="login"><g:message code="monitor.login.label" default="Login" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'login', 'errors')}">
                                    <g:textField name="login" value="${monitorInstance?.login}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mediaFinal"><g:message code="monitor.mediaFinal.label" default="Media Final" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'mediaFinal', 'errors')}">
                                    <g:textField name="mediaFinal" value="${fieldValue(bean: monitorInstance, field: 'mediaFinal')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="identidade"><g:message code="monitor.identidade.label" default="Identidade" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'identidade', 'errors')}">
                                    <g:textField name="identidade" value="${monitorInstance?.identidade}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="unidade"><g:message code="monitor.unidade.label" default="Unidade" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'unidade', 'errors')}">
                                    <g:textField name="unidade" value="${monitorInstance?.unidade}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="avalicaoComplementar"><g:message code="monitor.avalicaoComplementar.label" default="Avalicao Complementar" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'avalicaoComplementar', 'errors')}">
                                    <g:textField name="avalicaoComplementar" value="${monitorInstance?.avalicaoComplementar}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="periodosMonitorVoluntario"><g:message code="monitor.periodosMonitorVoluntario.label" default="Periodos Monitor Voluntario" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'periodosMonitorVoluntario', 'errors')}">
                                    <g:textField name="periodosMonitorVoluntario" value="${monitorInstance?.periodosMonitorVoluntario}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="telFixo"><g:message code="monitor.telFixo.label" default="Tel Fixo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'telFixo', 'errors')}">
                                    <g:textField name="telFixo" value="${monitorInstance?.telFixo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="classificacao"><g:message code="monitor.classificacao.label" default="Classificacao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'classificacao', 'errors')}">
                                    <g:textField name="classificacao" value="${fieldValue(bean: monitorInstance, field: 'classificacao')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notaDisciplina"><g:message code="monitor.notaDisciplina.label" default="Nota Disciplina" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'notaDisciplina', 'errors')}">
                                    <g:textField name="notaDisciplina" value="${fieldValue(bean: monitorInstance, field: 'notaDisciplina')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="matricula"><g:message code="monitor.matricula.label" default="Matricula" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'matricula', 'errors')}">
                                    <g:textField name="matricula" value="${monitorInstance?.matricula}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="periodosMonitorBolsista"><g:message code="monitor.periodosMonitorBolsista.label" default="Periodos Monitor Bolsista" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'periodosMonitorBolsista', 'errors')}">
                                    <g:textField name="periodosMonitorBolsista" value="${monitorInstance?.periodosMonitorBolsista}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sobrenome"><g:message code="monitor.sobrenome.label" default="Sobrenome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'sobrenome', 'errors')}">
                                    <g:textField name="sobrenome" value="${monitorInstance?.sobrenome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="curso"><g:message code="monitor.curso.label" default="Curso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'curso', 'errors')}">
                                    <g:textField name="curso" value="${monitorInstance?.curso}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="monitor.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${monitorInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="professorOrientador"><g:message code="monitor.professorOrientador.label" default="Professor Orientador" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'professorOrientador', 'errors')}">
                                    <g:textField name="professorOrientador" value="${monitorInstance?.professorOrientador}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="monitor.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${monitorInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="celular"><g:message code="monitor.celular.label" default="Celular" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorInstance, field: 'celular', 'errors')}">
                                    <g:textField name="celular" value="${monitorInstance?.celular}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
