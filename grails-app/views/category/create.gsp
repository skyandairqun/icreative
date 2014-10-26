<%@ page import="icreative.Category" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<a href="#create-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="clear"></div>

<div class="contact_form">

    <div id="create-category" class="content scaffold-create" role="main">
        <div class="form_subtitle"><g:message code="default.create.label" args="[entityName]"/></div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${categoryInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${categoryInstance}" var="error">
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
