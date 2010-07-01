
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
                        
                            <g:sortableColumn property="disciplina" title="${message(code: 'monitor.disciplina.label', default: 'Disciplina')}" />
                        
                            <g:sortableColumn property="notaObtida" title="${message(code: 'monitor.notaObtida.label', default: 'Nota Obtida')}" />
                        
                            <g:sortableColumn property="sexo" title="${message(code: 'monitor.sexo.label', default: 'Sexo')}" />
                        
                            <g:sortableColumn property="senha" title="${message(code: 'monitor.senha.label', default: 'Senha')}" />
                        
                            <g:sortableColumn property="filiacao" title="${message(code: 'monitor.filiacao.label', default: 'Filiacao')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${monitorInstanceList}" status="i" var="monitorInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${monitorInstance.id}">${fieldValue(bean: monitorInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: monitorInstance, field: "disciplina")}</td>
                        
                            <td>${fieldValue(bean: monitorInstance, field: "notaObtida")}</td>
                        
                            <td><g:formatBoolean boolean="${monitorInstance.sexo}" /></td>
                        
                            <td>${fieldValue(bean: monitorInstance, field: "senha")}</td>
                        
                            <td>${fieldValue(bean: monitorInstance, field: "filiacao")}</td>
                        
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
