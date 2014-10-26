<%@ page import="icreative.SystemConfiguration" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'systemConfiguration.label', default: 'SystemConfiguration')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-systemConfiguration" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                          default="Skip to content&hellip;"/></a>

<div id="show-systemConfiguration" class="content scaffold-show" role="main">
    <div class="clear"></div>

    <div class="contact_form">

        <div id="create-category" class="content scaffold-create" role="main">
            <div class="form_subtitle"><g:message code="default.show.label" args="[entityName]"/></div>



    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list systemConfiguration">

        <g:if test="${systemConfigurationInstance?.absolute_url}">
            <li class="fieldcontain">
                <span id="absolute_url-label" class="property-label"><g:message
                        code="systemConfiguration.absolute_url.label" default="Absoluteurl"/></span>

                <span class="property-value" aria-labelledby="absolute_url-label"><g:fieldValue
                        bean="${systemConfigurationInstance}" field="absolute_url"/></span>

            </li>
        </g:if>

        <g:if test="${systemConfigurationInstance?.website_name}">
            <li class="fieldcontain">
                <span id="website_name-label" class="property-label"><g:message
                        code="systemConfiguration.website_name.label" default="Websitename"/></span>

                <span class="property-value" aria-labelledby="website_name-label"><g:fieldValue
                        bean="${systemConfigurationInstance}" field="website_name"/></span>

            </li>
        </g:if>

        <g:if test="${systemConfigurationInstance?.website_description}">
            <li class="fieldcontain">
                <span id="website_description-label" class="property-label"><g:message
                        code="systemConfiguration.website_description.label" default="Websitedescription"/></span>

                <span class="property-value" aria-labelledby="website_description-label"><g:fieldValue
                        bean="${systemConfigurationInstance}" field="website_description"/></span>

            </li>
        </g:if>

        <g:if test="${systemConfigurationInstance?.website_keywords}">
            <li class="fieldcontain">
                <span id="website_keywords-label" class="property-label"><g:message
                        code="systemConfiguration.website_keywords.label" default="Websitekeywords"/></span>

                <span class="property-value" aria-labelledby="website_keywords-label"><g:fieldValue
                        bean="${systemConfigurationInstance}" field="website_keywords"/></span>

            </li>
        </g:if>

        <g:if test="${systemConfigurationInstance?.website_footer_des}">
            <li class="fieldcontain">
                <span id="website_footer_des-label" class="property-label"><g:message
                        code="systemConfiguration.website_footer_des.label" default="Websitefooterdes"/></span>

                <span class="property-value" aria-labelledby="website_footer_des-label"><g:fieldValue
                        bean="${systemConfigurationInstance}" field="website_footer_des"/></span>

            </li>
        </g:if>

        <g:if test="${systemConfigurationInstance?.website_email}">
            <li class="fieldcontain">
                <span id="website_email-label" class="property-label"><g:message
                        code="systemConfiguration.website_email.label" default="Websiteemail"/></span>

                <span class="property-value" aria-labelledby="website_email-label"><g:fieldValue
                        bean="${systemConfigurationInstance}" field="website_email"/></span>

            </li>
        </g:if>
        <g:if test="${systemConfigurationInstance?.isEnable}">
            <li class="fieldcontain">
                <span id="isEnable-label" class="property-label"><g:message code="systemConfiguration.isEnable.label"
                                                                            default="Is Enable"/></span>

                <span class="property-value" aria-labelledby="isEnable-label"><g:fieldValue
                        bean="${systemConfigurationInstance}" field="isEnable"/></span>

            </li>
        </g:if>

        <g:if test="${systemConfigurationInstance?.welcome}">
            <li class="fieldcontain">
                <span id="welcome-label" class="property-label"><g:message
                        code="systemConfiguration.welcome.label" default="Welcome"/></span>
                <br/>
                ${systemConfigurationInstance.welcome}
                %{--     <span class="property-value" aria-labelledby="welcome-label"><g:fieldValue
                             bean="${systemConfigurationInstance}" field="welcome"/></span>--}%

            </li>
        </g:if>
        <g:if test="${systemConfigurationInstance?.contact}">
            <li class="fieldcontain">
                <span id="contact-label" class="property-label"><g:message
                        code="systemConfiguration.contact.label" default="Contact"/></span>
                <br/>
                ${systemConfigurationInstance.contact}
                %{-- <span class="property-value" aria-labelledby="contact-label"><g:fieldValue
                         bean="${systemConfigurationInstance}" field="contact"/></span>--}%

            </li>
        </g:if>
    </ol>
    <g:form>
        <fieldset class="buttons">
            <auth:ifLoggedIn>
                <g:hiddenField name="id" value="${systemConfigurationInstance?.id}"/>
                <g:actionSubmit class="btnsubmit" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                <g:actionSubmit class="btnsubmit" action="edit"
                                value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
            </auth:ifLoggedIn>
        </fieldset>
    </g:form>
            </div>
</div>
</body>
</html>
