<%@ page import="icreative.ViewerConfig" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'viewerConfig.label', default: 'ViewerConfig')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<a href="#edit-viewerConfig" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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

<div id="edit-viewerConfig" class="content scaffold-edit" role="main">
    <br>
    <div class="clear"></div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${viewerConfigInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${viewerConfigInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <div class="contact_form">
        <div class="form_subtitle"><g:message code="default.edit.label" args="[entityName]"/></div>
        <g:form method="post">
            <g:hiddenField name="id" value="${viewerConfigInstance?.id}"/>
            <g:hiddenField name="version" value="${viewerConfigInstance?.version}"/>
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <auth:ifLoggedIn>
                    <g:actionSubmit class="btnsubmit" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    formnovalidate=""
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    <g:actionSubmit class="btnsubmit" action="update"
                                    value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                </auth:ifLoggedIn>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
