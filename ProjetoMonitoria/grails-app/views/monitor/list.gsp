
<%@ page import="monitor.Monitor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'monitor.label', default: 'Monitor')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'monitor.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'monitor.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="sobrenome" title="${message(code: 'monitor.sobrenome.label', default: 'Sobrenome')}" />
                        
                            <g:sortableColumn property="matricula" title="${message(code: 'monitor.matricula.label', default: 'Matricula')}" />
                        
                            <g:sortableColumn property="curso" title="${message(code: 'monitor.curso.label', default: 'Curso')}" />
                        
                            <g:sortableColumn property="cpf" title="${message(code: 'monitor.cpf.label', default: 'Cpf')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${monitorInstanceList}" status="i" var="monitorInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${monitorInstance.id}">${fieldValue(bean: monitorInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: monitorInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: monitorInstance, field: "sobrenome")}</td>
                        
                            <td>${fieldValue(bean: monitorInstance, field: "matricula")}</td>
                        
                            <td>${fieldValue(bean: monitorInstance, field: "curso")}</td>
                        
                            <td>${fieldValue(bean: monitorInstance, field: "cpf")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${monitorInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
