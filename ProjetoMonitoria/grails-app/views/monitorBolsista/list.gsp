
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
                        
                            <g:sortableColumn property="disciplina" title="${message(code: 'monitorBolsista.disciplina.label', default: 'Disciplina')}" />
                        
                            <g:sortableColumn property="notaObtida" title="${message(code: 'monitorBolsista.notaObtida.label', default: 'Nota Obtida')}" />
                        
                            <g:sortableColumn property="contacorrente" title="${message(code: 'monitorBolsista.contacorrente.label', default: 'Contacorrente')}" />
                        
                            <g:sortableColumn property="sexo" title="${message(code: 'monitorBolsista.sexo.label', default: 'Sexo')}" />
                        
                            <g:sortableColumn property="senha" title="${message(code: 'monitorBolsista.senha.label', default: 'Senha')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${monitorBolsistaInstanceList}" status="i" var="monitorBolsistaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${monitorBolsistaInstance.id}">${fieldValue(bean: monitorBolsistaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: monitorBolsistaInstance, field: "disciplina")}</td>
                        
                            <td>${fieldValue(bean: monitorBolsistaInstance, field: "notaObtida")}</td>
                        
                            <td>${fieldValue(bean: monitorBolsistaInstance, field: "contacorrente")}</td>
                        
                            <td><g:formatBoolean boolean="${monitorBolsistaInstance.sexo}" /></td>
                        
                            <td>${fieldValue(bean: monitorBolsistaInstance, field: "senha")}</td>
                        
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
