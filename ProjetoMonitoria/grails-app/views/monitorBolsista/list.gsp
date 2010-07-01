
<%@ page import="monitor.MonitorBolsista" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'monitorBolsista.label', default: 'MonitorBolsista')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'monitorBolsista.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'monitorBolsista.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="sobrenome" title="${message(code: 'monitorBolsista.sobrenome.label', default: 'Sobrenome')}" />
                        
                            <g:sortableColumn property="matricula" title="${message(code: 'monitorBolsista.matricula.label', default: 'Matricula')}" />
                        
                            <g:sortableColumn property="curso" title="${message(code: 'monitorBolsista.curso.label', default: 'Curso')}" />
                        
                            <g:sortableColumn property="cpf" title="${message(code: 'monitorBolsista.cpf.label', default: 'Cpf')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${monitorBolsistaInstanceList}" status="i" var="monitorBolsistaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${monitorBolsistaInstance.id}">${fieldValue(bean: monitorBolsistaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: monitorBolsistaInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: monitorBolsistaInstance, field: "sobrenome")}</td>
                        
                            <td>${fieldValue(bean: monitorBolsistaInstance, field: "matricula")}</td>
                        
                            <td>${fieldValue(bean: monitorBolsistaInstance, field: "curso")}</td>
                        
                            <td>${fieldValue(bean: monitorBolsistaInstance, field: "cpf")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${monitorBolsistaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
