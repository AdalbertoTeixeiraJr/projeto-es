
<%@ page import="funcionario.Funcionario" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'funcionario.label', default: 'Funcionario')}" />
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
            <g:hasErrors bean="${funcionarioInstance}">
            <div class="errors">
                <g:renderErrors bean="${funcionarioInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="funcionario.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: funcionarioInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${funcionarioInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sobrenome"><g:message code="funcionario.sobrenome.label" default="Sobrenome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: funcionarioInstance, field: 'sobrenome', 'errors')}">
                                    <g:textField name="sobrenome" value="${funcionarioInstance?.sobrenome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"><g:message code="funcionario.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: funcionarioInstance, field: 'senha', 'errors')}">
                                    <g:textField name="senha" value="${funcionarioInstance?.senha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="matricula"><g:message code="funcionario.matricula.label" default="Matricula" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: funcionarioInstance, field: 'matricula', 'errors')}">
                                    <g:textField name="matricula" value="${funcionarioInstance?.matricula}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hashSenha"><g:message code="funcionario.hashSenha.label" default="Hash Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: funcionarioInstance, field: 'hashSenha', 'errors')}">
                                    <g:textField name="hashSenha" value="${funcionarioInstance?.hashSenha}" />
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
