<%@ page import="icreative.SystemConfiguration" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'systemConfiguration.label', default: 'SystemConfiguration')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-systemConfiguration" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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

<div id="list-systemConfiguration" class="content scaffold-list" role="main">
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

            <g:sortableColumn property="absolute_url"
                              title="${message(code: 'systemConfiguration.absolute_url.label', default: 'Absoluteurl')}"/>

            <g:sortableColumn property="website_name"
                              title="${message(code: 'systemConfiguration.website_name.label', default: 'Websitename')}"/>

            <g:sortableColumn property="website_email"
                              title="${message(code: 'systemConfiguration.website_email.label', default: 'Websiteemail')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${systemConfigurationInstanceList}" status="i" var="systemConfigurationInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="sys"
                            id="${systemConfigurationInstance.id}">${fieldValue(bean: systemConfigurationInstance, field: "absolute_url")}</g:link></td>

                <td>${fieldValue(bean: systemConfigurationInstance, field: "website_name")}</td>

                <td>${fieldValue(bean: systemConfigurationInstance, field: "website_email")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${systemConfigurationInstanceTotal}"/>
    </div>
    </div>
</div>
</body>
</html>
