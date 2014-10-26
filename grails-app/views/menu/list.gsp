<%@ page import="icreative.Menu" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'menu.label', default: 'Menu')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-menu" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>

        <auth:ifLoggedIn>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </auth:ifLoggedIn>

    </ul>
</div>

<div id="list-menu" class="content scaffold-list" role="main">
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

            <g:sortableColumn property="display_value"
                              title="${message(code: 'menu.display_value.label', default: 'Displayvalue')}"/>
            <g:sortableColumn property="levelNo" title="${message(code: 'menu.levelNo.label', default: 'Level No')}"/>

            <g:sortableColumn property="orderLevel" title="${message(code: 'menu.orderLevel.label', default: 'Order By')}"/>

            <g:sortableColumn property="keyWords"
                              title="${message(code: 'menu.keyWords.label', default: 'Key Words')}"/>

            <g:sortableColumn property="description"
                              title="${message(code: 'menu.description.label', default: 'Description')}"/>


        </tr>
        </thead>
        <tbody>
        <g:each in="${menuInstanceList}" status="i" var="menuInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${menuInstance.id}">${fieldValue(bean: menuInstance, field: "display_value")}</g:link></td>

                <td>${fieldValue(bean: menuInstance, field: "levelNo")}</td>

                <td>${fieldValue(bean: menuInstance, field: "orderLevel")}</td>

                <td>${fieldValue(bean: menuInstance, field: "keyWords")}</td>

                <td  style="word-wrap: break-word;width: 200px">${fieldValue(bean: menuInstance, field: "description")}</td>



            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${menuInstanceTotal}"/>
    </div>
    </div>
</div>
</body>
</html>
