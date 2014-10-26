<%@ page import="icreative.Category" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <auth:ifLoggedIn>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </auth:ifLoggedIn>
    </ul>
</div>

<div id="list-category" class="content scaffold-list" role="main">
    <div class="clear"></div>
    <br>
    <div class="contact_form">
        <div class="form_subtitle"><g:message code="default.list.label" args="[entityName]"/></div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table style="width: 100%">
        <thead>
        <tr>

            <g:sortableColumn property="display value"
                              title="${message(code: 'category.display_value.label', default: 'Display Value')}"/>

            <g:sortableColumn property="keyWords"
                              title="${message(code: 'category.keyWords.label', default: 'Key Words')}"/>

            <g:sortableColumn property="description"
                              title="${message(code: 'category.description.label', default: 'Description')}"/>

            <g:sortableColumn property="perlink"
                              title="${message(code: 'category.perlink.label', default: 'Permalink')}"/>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'category.dateCreated.label', default: 'Date Created')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "display_value")}</g:link></td>

                <td>${fieldValue(bean: categoryInstance, field: "keyWords")}</td>

                <td>${fieldValue(bean: categoryInstance, field: "description")}</td>

                <td>${fieldValue(bean: categoryInstance, field: "perlink")}</td>

                <td><g:formatDate date="${categoryInstance.dateCreated}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${categoryInstanceTotal}"/>
    </div>
    </div>
</div>
</body>
</html>
