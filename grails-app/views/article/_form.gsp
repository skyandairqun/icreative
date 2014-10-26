<%@ page import="icreative.Article" %>



<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'title', 'error')} required">
    <label for="title">
        <g:message code="article.title.label" default="Title"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField   title="${message(code: 'article.desc.title', default: 'title')}"   name="title" required="" value="${articleInstance?.title}" size="110"/>
</div>



<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'content', 'error')} required"  title="${message(code: 'article.desc.content', default: 'content')}" >
    <label for="content">
        <g:message code="article.content.label" default="Content"/>
        <span class="required-indicator">*</span>
    </label>

    <ckeditor:editor name="content">
        ${articleInstance?.content}
    </ckeditor:editor>

</div>


<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'keyWords', 'error')} required">
    <label for="keyWords">
        <g:message code="article.keyWords.label" default="Key Words"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'default.vo.wordsKey', default: 'keyWords')}"  name="keyWords" required="" value="${articleInstance?.keyWords}" size="90"/>
</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'description', 'error')} required">
    <label for="description">
        <g:message code="article.description.label" default="Description"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea  title="${message(code: 'default.vo.description', default: 'description')}"   name="description" rows="3" cols="110" required="" value="${articleInstance?.description}"/>
    %{--    <g:textField name="description" required="" value="${articleInstance?.description}"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'type', 'error')} ">
    <label for="type">
        <g:message code="article.type.label" default="Type"/>

    </label>
    <g:select  title="${message(code: 'article.desc.type', default: 'type')}"   name="type" from="${articleInstance.constraints.type.inList}" value="${articleInstance?.type}"
               valueMessagePrefix="article.type" noSelection="['': '']"/>
</div>
%{--<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'perlink', 'error')} required">
    <label for="perlink">
        <g:message code="article.perlink.label" default="Perlink"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="perlink" required="" value="${articleInstance?.perlink}"/>
</div>--}%

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'dateCreated', 'error')} ">
    <label for="createUser">
        <g:message code="article.createUser.label" default="Date Created"/>

    </label>

    <g:datePicker name="dateCreated"  value="${articleInstance?.dateCreated}" />
</div>

%{--<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'lastUpdateUser', 'error')} ">
    <label for="lastUpdateUser">
        <g:message code="article.lastUpdateUser.label" default="Last Update User"/>

    </label>
    <g:textField name="lastUpdateUser" value="${articleInstance?.lastUpdateUser}"/>
</div>--}%

