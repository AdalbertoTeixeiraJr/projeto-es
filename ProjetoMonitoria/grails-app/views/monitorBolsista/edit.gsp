
<%@ page import="monitor.MonitorBolsista" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'monitorBolsista.label', default: 'MonitorBolsista')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${monitorBolsistaInstance}">
            <div class="errors">
                <g:renderErrors bean="${monitorBolsistaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${monitorBolsistaInstance?.id}" />
                <g:hiddenField name="version" value="${monitorBolsistaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nome"><g:message code="monitorBolsista.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${monitorBolsistaInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="sobrenome"><g:message code="monitorBolsista.sobrenome.label" default="Sobrenome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'sobrenome', 'errors')}">
                                    <g:textField name="sobrenome" value="${monitorBolsistaInstance?.sobrenome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="matricula"><g:message code="monitorBolsista.matricula.label" default="Matricula" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'matricula', 'errors')}">
                                    <g:textField name="matricula" value="${monitorBolsistaInstance?.matricula}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="curso"><g:message code="monitorBolsista.curso.label" default="Curso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'curso', 'errors')}">
                                    <g:textField name="curso" value="${monitorBolsistaInstance?.curso}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cpf"><g:message code="monitorBolsista.cpf.label" default="Cpf" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'cpf', 'errors')}">
                                    <g:textField name="cpf" value="${monitorBolsistaInstance?.cpf}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="email"><g:message code="monitorBolsista.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${monitorBolsistaInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="identidade"><g:message code="monitorBolsista.identidade.label" default="Identidade" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'identidade', 'errors')}">
                                    <g:textField name="identidade" value="${monitorBolsistaInstance?.identidade}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="senha"><g:message code="monitorBolsista.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'senha', 'errors')}">
                                    <g:textField name="senha" value="${monitorBolsistaInstance?.senha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="contacorrente"><g:message code="monitorBolsista.contacorrente.label" default="Contacorrente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'contacorrente', 'errors')}">
                                    <g:textField name="contacorrente" value="${monitorBolsistaInstance?.contacorrente}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="agencia"><g:message code="monitorBolsista.agencia.label" default="Agencia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'agencia', 'errors')}">
                                    <g:textField name="agencia" value="${monitorBolsistaInstance?.agencia}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="disciplina"><g:message code="monitorBolsista.disciplina.label" default="Disciplina" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'disciplina', 'errors')}">
                                    <g:textField name="disciplina" value="${monitorBolsistaInstance?.disciplina}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="notaObtida"><g:message code="monitorBolsista.notaObtida.label" default="Nota Obtida" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'notaObtida', 'errors')}">
                                    <g:textField name="notaObtida" value="${fieldValue(bean: monitorBolsistaInstance, field: 'notaObtida')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="sexo"><g:message code="monitorBolsista.sexo.label" default="Sexo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'sexo', 'errors')}">
                                    <g:textField name="sexo" value="${monitorBolsistaInstance?.sexo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="codigoDoProjeto"><g:message code="monitorBolsista.codigoDoProjeto.label" default="Codigo Do Projeto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'codigoDoProjeto', 'errors')}">
                                    <g:textField name="codigoDoProjeto" value="${monitorBolsistaInstance?.codigoDoProjeto}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nomeMae"><g:message code="monitorBolsista.nomeMae.label" default="Nome Mae" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'nomeMae', 'errors')}">
                                    <g:textField name="nomeMae" value="${monitorBolsistaInstance?.nomeMae}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cra"><g:message code="monitorBolsista.cra.label" default="Cra" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'cra', 'errors')}">
                                    <g:textField name="cra" value="${fieldValue(bean: monitorBolsistaInstance, field: 'cra')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="hashSenha"><g:message code="monitorBolsista.hashSenha.label" default="Hash Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'hashSenha', 'errors')}">
                                    <g:textField name="hashSenha" value="${monitorBolsistaInstance?.hashSenha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mediaFinal"><g:message code="monitorBolsista.mediaFinal.label" default="Media Final" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'mediaFinal', 'errors')}">
                                    <g:textField name="mediaFinal" value="${fieldValue(bean: monitorBolsistaInstance, field: 'mediaFinal')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="unidade"><g:message code="monitorBolsista.unidade.label" default="Unidade" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'unidade', 'errors')}">
                                    <g:textField name="unidade" value="${monitorBolsistaInstance?.unidade}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="avalicaoComplementar"><g:message code="monitorBolsista.avalicaoComplementar.label" default="Avalicao Complementar" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'avalicaoComplementar', 'errors')}">
                                    <g:textField name="avalicaoComplementar" value="${monitorBolsistaInstance?.avalicaoComplementar}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="periodosMonitorVoluntario"><g:message code="monitorBolsista.periodosMonitorVoluntario.label" default="Periodos Monitor Voluntario" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'periodosMonitorVoluntario', 'errors')}">
                                    <g:textField name="periodosMonitorVoluntario" value="${monitorBolsistaInstance?.periodosMonitorVoluntario}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="telFixo"><g:message code="monitorBolsista.telFixo.label" default="Tel Fixo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'telFixo', 'errors')}">
                                    <g:textField name="telFixo" value="${monitorBolsistaInstance?.telFixo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="classificacao"><g:message code="monitorBolsista.classificacao.label" default="Classificacao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'classificacao', 'errors')}">
                                    <g:textField name="classificacao" value="${fieldValue(bean: monitorBolsistaInstance, field: 'classificacao')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="notaDisciplina"><g:message code="monitorBolsista.notaDisciplina.label" default="Nota Disciplina" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'notaDisciplina', 'errors')}">
                                    <g:textField name="notaDisciplina" value="${fieldValue(bean: monitorBolsistaInstance, field: 'notaDisciplina')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="periodosMonitorBolsista"><g:message code="monitorBolsista.periodosMonitorBolsista.label" default="Periodos Monitor Bolsista" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'periodosMonitorBolsista', 'errors')}">
                                    <g:textField name="periodosMonitorBolsista" value="${monitorBolsistaInstance?.periodosMonitorBolsista}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="professorOrientador"><g:message code="monitorBolsista.professorOrientador.label" default="Professor Orientador" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'professorOrientador', 'errors')}">
                                    <g:textField name="professorOrientador" value="${monitorBolsistaInstance?.professorOrientador}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nomePai"><g:message code="monitorBolsista.nomePai.label" default="Nome Pai" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'nomePai', 'errors')}">
                                    <g:textField name="nomePai" value="${monitorBolsistaInstance?.nomePai}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="celular"><g:message code="monitorBolsista.celular.label" default="Celular" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monitorBolsistaInstance, field: 'celular', 'errors')}">
                                    <g:textField name="celular" value="${monitorBolsistaInstance?.celular}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
