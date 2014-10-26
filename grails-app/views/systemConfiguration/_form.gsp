<%@ page import="icreative.SystemConfiguration" %>



<div class="fieldcontain ${hasErrors(bean: systemConfigurationInstance, field: 'absolute_url', 'error')} required">
    <label for="absolute_url">
        <g:message code="systemConfiguration.absolute_url.label" default="Absoluteurl"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field title="${message(code: 'systemConfiguration.desc.absolute_url', default: 'absolute_url')}" type="url"
             required="" name="absolute_url" value="${systemConfigurationInstance?.absolute_url}" size="55"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemConfigurationInstance, field: 'website_name', 'error')} required">
    <label for="website_name">
        <g:message code="systemConfiguration.website_name.label" default="Websitename"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'systemConfiguration.desc.website_name', default: 'website_name')}"
                 name="website_name" required="" maxlength="200" value="${systemConfigurationInstance?.website_name}"
                 size="55"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemConfigurationInstance, field: 'website_description', 'error')} required">
    <label for="website_description">
        <g:message code="systemConfiguration.website_description.label" default="Websitedescription"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField
            title="${message(code: 'systemConfiguration.desc.website_description', default: 'website_description')}"
            name="website_description" required="" value="${systemConfigurationInstance?.website_description}"
            size="55"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemConfigurationInstance, field: 'website_keywords', 'error')} required">
    <label for="website_keywords">
        <g:message code="systemConfiguration.website_keywords.label" default="Websitekeywords"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'systemConfiguration.desc.website_keywords', default: 'website_keywords')}"
                 name="website_keywords" required="" maxlength="200"
                 value="${systemConfigurationInstance?.website_keywords}" size="55"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemConfigurationInstance, field: 'website_footer_des', 'error')} required">
    <label for="website_footer_des">
        <g:message code="systemConfiguration.website_footer_des.label" default="Websitefooterdes"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea title="${message(code: 'systemConfiguration.desc.website_footer_des', default: 'website_footer_des')}"
                name="website_footer_des" cols="55" rows="5" maxlength="5000" required=""
                value="${systemConfigurationInstance?.website_footer_des}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemConfigurationInstance, field: 'website_email', 'error')} required">
    <label for="website_email">
        <g:message code="systemConfiguration.website_email.label" default="Websiteemail"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field title="${message(code: 'systemConfiguration.desc.website_email', default: 'email')}" type="email"
             name="website_email" required="" value="${systemConfigurationInstance?.website_email}"
             size="55"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemConfigurationInstance, field: 'isEnable', 'error')} ">
    <label for="isEnable">
        <g:message code="systemConfiguration.isEnable.label" default="Is Enable"/>

    </label>
    <g:select title="${message(code: 'systemConfiguration.desc.isEnable', default: 'isEnable')}" name="isEnable"
              from="${systemConfigurationInstance.constraints.isEnable.inList}"
              value="${systemConfigurationInstance?.isEnable}"
              valueMessagePrefix="systemConfiguration.isEnable" noSelection="['': '']"/>
</div>


<div class="fieldcontain ${hasErrors(bean: systemConfigurationInstance, field: 'welcome', 'error')} required"
     title="${message(code: 'systemConfiguration.desc.welcome', default: 'welcome')}">
    <label for="welcome">
        <g:message code="systemConfiguration.welcome.label" default="Welcome Message"/>
        <span class="required-indicator">*</span>
    </label>
    <ckeditor:editor name="welcome" height="150px" width="100%">
        ${systemConfigurationInstance?.welcome}
    </ckeditor:editor>
    %{--  <g:textArea name="welcome" cols="55" rows="5" maxlength="500" required=""
                  value="${systemConfigurationInstance?.welcome}"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: systemConfigurationInstance, field: 'contact', 'error')} required"
     title="${message(code: 'systemConfiguration.desc.contact', default: 'Contact')}">
    <label for="contact">
        <g:message code="systemConfiguration.contact.label" default="Contact"/>
        <span class="required-indicator">*</span>
    </label>
    <ckeditor:editor name="contact" height="150px" width="100%">
        ${systemConfigurationInstance?.contact}
    </ckeditor:editor>
    %{--    <g:textArea name="contact" cols="55" rows="5" maxlength="500" required=""
                    value="${systemConfigurationInstance?.contact}"/>--}%
</div>
