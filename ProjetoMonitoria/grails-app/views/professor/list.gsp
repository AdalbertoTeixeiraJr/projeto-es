
<%@ page import="professor.Professor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'professor.label', default: 'Professor')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'professor.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'professor.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="sobrenome" title="${message(code: 'professor.sobrenome.label', default: 'Sobrenome')}" />
                        
                            <g:sortableColumn property="email" title="${message(code: 'professor.email.label', default: 'Email')}" />
                        
                            <g:sortableColumn property="login" title="${message(code: 'professor.login.label', default: 'Login')}" />
                        
                            <g:sortableColumn property="senha" title="${message(code: 'professor.senha.label', default: 'Senha')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${professorInstanceList}" status="i" var="professorInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${professorInstance.id}">${fieldValue(bean: professorInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: professorInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: professorInstance, field: "sobrenome")}</td>
                        
                            <td>${fieldValue(bean: professorInstance, field: "email")}</td>
                        
                            <td>${fieldValue(bean: professorInstance, field: "login")}</td>
                        
                            <td>${fieldValue(bean: professorInstance, field: "senha")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${professorInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
