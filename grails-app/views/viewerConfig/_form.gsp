<%@ page import="icreative.ViewerConfig" %>

<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="viewerConfig.title.label" default="Title"/>

    </label>
    <g:textField title="${message(code: 'viewerConfig.desc.title', default: 'title')}" name="title" value="${viewerConfigInstance?.title}" size="100"/>
</div>

<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'view_desc', 'error')} ">
    <label for="view_desc">
        <g:message code="viewerConfig.view_desc.label" default="Viewdesc"/>

    </label>
    <g:textField title="${message(code: 'viewerConfig.desc.view_desc', default: 'view_desc')}" name="view_desc" value="${viewerConfigInstance?.view_desc}" size="100"/>
</div>


<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'perlink', 'error')} " >
    <label for="perlink">
        <g:message code="viewerConfig.perlink.label" default="Per Link"/>

    </label>
    <g:textField title="${message(code: 'viewerConfig.desc.perLink', default: 'perLink')}"  name="perlink" value="${viewerConfigInstance?.perlink}"size="100"/>
</div>

<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'createUser', 'error')} " style="display:none;">
    <label for="createUser">
        <g:message code="viewerConfig.createUser.label" default="Create User"/>

    </label>
    <g:textField name="createUser" value="${viewerConfigInstance?.createUser}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'isEnable', 'error')} ">
    <label for="isEnable">
        <g:message code="viewerConfig.isEnable.label" default="Is Enable"/>

    </label>
    <g:select title="${message(code: 'viewerConfig.desc.isEanble', default: 'isEnable')}"    name="isEnable" from="${viewerConfigInstance.constraints.isEnable.inList}"
              value="${viewerConfigInstance?.isEnable}"
              valueMessagePrefix="viewerConfig.isEnable" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'target', 'error')} ">
    <label for="Target">
        <g:message code="viewerConfig.target.label" default="Target"/>

    </label>
    <g:select  title="${message(code: 'viewerConfig.desc.target', default: 'target')}"   name="target" from="${viewerConfigInstance.constraints.target.inList}"
               value="${viewerConfigInstance?.target}"
               valueMessagePrefix="viewerConfig.target" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'type', 'error')} ">
    <label for="Type">
        <g:message code="viewerConfig.target.label" default="Type"/>

    </label>
    <g:select  title="${message(code: 'viewerConfig.desc.type', default: 'type')}"   name="type" from="${viewerConfigInstance.constraints.type.inList}"
               value="${viewerConfigInstance?.type}"
               valueMessagePrefix="viewerConfig.type" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'position', 'error')} ">
    <label for="position">
        <g:message code="viewerConfig.position.label" default="Position"/>

    </label>
    <g:select title="${message(code: 'viewerConfig.desc.position', default: 'position')}"  name="position" from="${viewerConfigInstance.constraints.position.inList}"
              value="${viewerConfigInstance?.position}"
              valueMessagePrefix="viewerConfig.position" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'keyWords', 'error')} ">
    <label for="keyWords">
        <g:message code="viewerConfig.keyWords.label" default="Key Words"/>

    </label>
    <g:textField  title="${message(code: 'default.vo.wordsKey', default: 'keyWords')}"  name="keyWords" value="${viewerConfigInstance?.keyWords}" size="90"/>
</div>

<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'lastUpdateUser', 'error')} " style="display: none">
    <label for="lastUpdateUser">
        <g:message code="viewerConfig.lastUpdateUser.label" default="Last Update User"/>

    </label>
    <g:textField name="lastUpdateUser" value="${viewerConfigInstance?.lastUpdateUser}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'picPath', 'error')} ">
    <label for="picPath">
        <g:message code="viewerConfig.picPath.label" default="Pic Path"/>

    </label>
    <g:textField  title="${message(code: 'viewerConfig.desc.picPath', default: 'picPath')}"  name="picPath" value="${viewerConfigInstance?.picPath}" size="60"/><a target="_blank"
                                                                                                                                                         style="display:inline-block;margin-top:10px;; margin-left:auto; margin-right:auto"
                                                                                                                                                         href="${request.contextPath}/ck/ofm?fileConnector=${application.contextPath}/ck/ofm/filemanager&type=Image&viewMode=grid"
                                                                                                                                                         title="浏览服务器" hidefocus="true"
                                                                                                                                                         class="cke_dialog_ui_button" role="button"
                                                                                                                                                         aria-labelledby="cke_106_label"
                                                                                                                                                         id="cke_107_uiElement"><span
            id="cke_106_label" class="cke_dialog_ui_button">Browser Dic</span></a>
</div>






<div class="fieldcontain ${hasErrors(bean: viewerConfigInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="viewerConfig.description.label" default="Description"/>

    </label>
    <g:textArea cols="90" rows="3"  title="${message(code: 'default.vo.description', default: 'description')}"  name="description" value="${viewerConfigInstance?.description}"/>
</div>
