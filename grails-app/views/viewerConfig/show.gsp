<%@ page import="icreative.ViewerConfig" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'viewerConfig.label', default: 'ViewerConfig')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-viewerConfig" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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

<div id="show-viewerConfig" class="content scaffold-show" role="main">
    <br>
    <div class="clear"></div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="contact_form">
        <div class="form_subtitle"><g:message code="default.show.label" args="[entityName]"/></div>
        <ol class="property-list viewerConfig">

            <g:if test="${viewerConfigInstance?.createUser}">
                <li class="fieldcontain">
                    <span id="createUser-label" class="property-label"><g:message
                            code="viewerConfig.createUser.label"
                            default="Create User"/></span>

                    <span class="property-value" aria-labelledby="createUser-label"><g:fieldValue
                            bean="${viewerConfigInstance}" field="createUser"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.dateCreated}">
                <li class="fieldcontain">
                    <span id="dateCreated-label" class="property-label"><g:message
                            code="viewerConfig.dateCreated.label"
                            default="Date Created"/></span>

                    <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                            date="${viewerConfigInstance?.dateCreated}"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.description}">
                <li class="fieldcontain">
                    <span id="description-label" class="property-label"><g:message
                            code="viewerConfig.description.label"
                            default="Description"/></span>

                    <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                            bean="${viewerConfigInstance}" field="description"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.isEnable}">
                <li class="fieldcontain">
                    <span id="isEnable-label" class="property-label"><g:message code="viewerConfig.isEnable.label"
                                                                                default="Is Enable"/></span>

                    <span class="property-value" aria-labelledby="isEnable-label"><g:fieldValue
                            bean="${viewerConfigInstance}" field="isEnable"/></span>

                </li>
            </g:if>


            <g:if test="${viewerConfigInstance?.target}">
                <li class="fieldcontain">
                    <span id="target-label" class="property-label"><g:message code="viewerConfig.target.label"
                                                                              default="Target"/></span>

                    <span class="property-value" aria-labelledby="target-label"><g:fieldValue
                            bean="${viewerConfigInstance}" field="target"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.keyWords}">
                <li class="fieldcontain">
                    <span id="keyWords-label" class="property-label"><g:message code="viewerConfig.keyWords.label"
                                                                                default="Key Words"/></span>

                    <span class="property-value" aria-labelledby="keyWords-label"><g:fieldValue
                            bean="${viewerConfigInstance}" field="keyWords"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.lastUpdateUser}">
                <li class="fieldcontain">
                    <span id="lastUpdateUser-label" class="property-label"><g:message
                            code="viewerConfig.lastUpdateUser.label" default="Last Update User"/></span>

                    <span class="property-value" aria-labelledby="lastUpdateUser-label"><g:fieldValue
                            bean="${viewerConfigInstance}" field="lastUpdateUser"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.lastUpdated}">
                <li class="fieldcontain">
                    <span id="lastUpdated-label" class="property-label"><g:message
                            code="viewerConfig.lastUpdated.label"
                            default="Last Updated"/></span>

                    <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                            date="${viewerConfigInstance?.lastUpdated}"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.perlink}">
                <li class="fieldcontain">
                    <span id="perlink-label" class="property-label"><g:message code="viewerConfig.perlink.label"
                                                                               default="Per Link"/></span>

                    <span class="property-value" aria-labelledby="perlink-label"><g:fieldValue
                            bean="${viewerConfigInstance}" field="perlink"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.picPath}">
                <li class="fieldcontain">
                    <span id="picPath-label" class="property-label"><g:message code="viewerConfig.picPath.label"
                                                                               default="Pic Path"/></span>

                    <span class="property-value" aria-labelledby="picPath-label">
                        <img src='${session.getAttribute("mainSysConfig")?.absolute_url}/${fieldValue(bean: viewerConfigInstance, field: "picPath")}'
                                                                                       title='${fieldValue(bean: viewerConfigInstance, field: "view_desc")}'
                                                                                       alt='${fieldValue(bean: viewerConfigInstance, field: "view_desc")}' style="width: 100px;height: 100px"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.position}">
                <li class="fieldcontain">
                    <span id="position-label" class="property-label"><g:message code="viewerConfig.position.label"
                                                                                default="Position"/></span>

                    <span class="property-value" aria-labelledby="position-label"><g:fieldValue
                            bean="${viewerConfigInstance}" field="position"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.title}">
                <li class="fieldcontain">
                    <span id="title-label" class="property-label"><g:message code="viewerConfig.title.label"
                                                                             default="Title"/></span>

                    <span class="property-value" aria-labelledby="title-label"><g:fieldValue
                            bean="${viewerConfigInstance}"
                            field="title"/></span>

                </li>
            </g:if>

            <g:if test="${viewerConfigInstance?.view_desc}">
                <li class="fieldcontain">
                    <span id="view_desc-label" class="property-label"><g:message code="viewerConfig.view_desc.label"
                                                                                 default="Viewdesc"/></span>

                    <span class="property-value" aria-labelledby="view_desc-label"><g:fieldValue
                            bean="${viewerConfigInstance}" field="view_desc"/></span>

                </li>
            </g:if>

        </ol>
        <g:form>
            <fieldset class="buttons">
                <auth:ifLoggedIn>
                    <g:hiddenField name="id" value="${viewerConfigInstance?.id}"/>
                    <g:actionSubmit class="btnsubmit" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    <g:actionSubmit class="btnsubmit" action="edit"
                                    value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                </auth:ifLoggedIn>>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
