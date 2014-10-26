<%@ page import="icreative.Article" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
    <ckeditor:resources/>
</head>

<body>
<a href="#create-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="create-article" class="content scaffold-create" role="main">
    <div class="clear"></div>
    <br>
    <div class="contact_form">
        <div class="form_subtitle"><g:message code="default.create.label" args="[entityName]"/></div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${articleInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${articleInstance}" var="error">
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
                    <g:submitButton name="save" class="btnsubmit"
                                    value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                </auth:ifLoggedIn>
            </fieldset>
        </g:form>
    </div>
</div>

</body>
</html>
