
<%@ page import="coordenador.Coordenador" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'coordenador.label', default: 'Coordenador')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'coordenador.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'coordenador.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="sobrenome" title="${message(code: 'coordenador.sobrenome.label', default: 'Sobrenome')}" />
                        
                            <g:sortableColumn property="email" title="${message(code: 'coordenador.email.label', default: 'Email')}" />
                        
                            <g:sortableColumn property="senha" title="${message(code: 'coordenador.senha.label', default: 'Senha')}" />
                        
                            <g:sortableColumn property="matricula" title="${message(code: 'coordenador.matricula.label', default: 'Matricula')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${coordenadorInstanceList}" status="i" var="coordenadorInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${coordenadorInstance.id}">${fieldValue(bean: coordenadorInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: coordenadorInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: coordenadorInstance, field: "sobrenome")}</td>
                        
                            <td>${fieldValue(bean: coordenadorInstance, field: "email")}</td>
                        
                            <td>${fieldValue(bean: coordenadorInstance, field: "senha")}</td>
                        
                            <td>${fieldValue(bean: coordenadorInstance, field: "matricula")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${coordenadorInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
