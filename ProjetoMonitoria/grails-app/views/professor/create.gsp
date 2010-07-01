
<%@ page import="professor.Professor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'professor.label', default: 'Professor')}" />
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
            <g:hasErrors bean="${professorInstance}">
            <div class="errors">
                <g:renderErrors bean="${professorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="professor.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: professorInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${professorInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sobrenome"><g:message code="professor.sobrenome.label" default="Sobrenome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: professorInstance, field: 'sobrenome', 'errors')}">
                                    <g:textField name="sobrenome" value="${professorInstance?.sobrenome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="professor.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: professorInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${professorInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="login"><g:message code="professor.login.label" default="Login" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: professorInstance, field: 'login', 'errors')}">
                                    <g:textField name="login" value="${professorInstance?.login}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"><g:message code="professor.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: professorInstance, field: 'senha', 'errors')}">
                                    <g:textField name="senha" value="${professorInstance?.senha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="matricula"><g:message code="professor.matricula.label" default="Matricula" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: professorInstance, field: 'matricula', 'errors')}">
                                    <g:textField name="matricula" value="${professorInstance?.matricula}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="disciplina"><g:message code="professor.disciplina.label" default="Disciplina" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: professorInstance, field: 'disciplina', 'errors')}">
                                    <g:textField name="disciplina" value="${professorInstance?.disciplina}" />
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
