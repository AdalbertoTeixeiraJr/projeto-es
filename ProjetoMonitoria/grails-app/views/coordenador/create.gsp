
<%@ page import="coordenador.Coordenador" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'coordenador.label', default: 'Coordenador')}" />
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
            <g:hasErrors bean="${coordenadorInstance}">
            <div class="errors">
                <g:renderErrors bean="${coordenadorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="coordenador.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: coordenadorInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${coordenadorInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sobrenome"><g:message code="coordenador.sobrenome.label" default="Sobrenome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: coordenadorInstance, field: 'sobrenome', 'errors')}">
                                    <g:textField name="sobrenome" value="${coordenadorInstance?.sobrenome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="coordenador.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: coordenadorInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${coordenadorInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"><g:message code="coordenador.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: coordenadorInstance, field: 'senha', 'errors')}">
                                    <g:textField name="senha" value="${coordenadorInstance?.senha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="matricula"><g:message code="coordenador.matricula.label" default="Matricula" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: coordenadorInstance, field: 'matricula', 'errors')}">
                                    <g:textField name="matricula" value="${coordenadorInstance?.matricula}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="disciplina"><g:message code="coordenador.disciplina.label" default="Disciplina" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: coordenadorInstance, field: 'disciplina', 'errors')}">
                                    <g:textField name="disciplina" value="${coordenadorInstance?.disciplina}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hashSenha"><g:message code="coordenador.hashSenha.label" default="Hash Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: coordenadorInstance, field: 'hashSenha', 'errors')}">
                                    <g:textField name="hashSenha" value="${coordenadorInstance?.hashSenha}" />
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
