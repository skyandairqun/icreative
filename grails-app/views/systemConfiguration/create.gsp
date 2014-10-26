<%@ page import="icreative.SystemConfiguration" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'systemConfiguration.label', default: 'SystemConfiguration')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
    <ckeditor:resources/>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    </ul>
</div>
<a href="#create-systemConfiguration" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                            default="Skip to content&hellip;"/></a>

<div class="clear"></div>
 <br>
<div class="contact_form">
    <div id="create-menu" class="content scaffold-create" role="main">
        <div class="form_subtitle"><g:message code="default.create.label" args="[entityName]"/></div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${systemConfigurationInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${systemConfigurationInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form action="save">
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <auth:ifLoggedIn>
                    <g:submitButton name="create" class="btnsubmit"
                                    value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                </auth:ifLoggedIn>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
