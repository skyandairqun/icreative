<%@ page import="icreative.ViewerConfig" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'viewerConfig.label', default: 'ViewerConfig')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-viewerConfig" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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

<div id="list-viewerConfig" class="content scaffold-list" role="main">
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

            <g:sortableColumn property="picPath"
                              title="${message(code: 'viewerConfig.picPath.label', default: 'Pic')}"/>

            <g:sortableColumn property="title"
                              title="${message(code: 'viewerConfig.title.label', default: 'Title')}"/>

            <g:sortableColumn property="description"
                              title="${message(code: 'viewerConfig.description.label', default: 'Description')}"/>

            <g:sortableColumn property="isEnable"
                              title="${message(code: 'viewerConfig.isEnable.label', default: 'Is Enable')}"/>

            <g:sortableColumn property="keyWords"
                              title="${message(code: 'viewerConfig.keyWords.label', default: 'Key Words')}"/>


        </tr>
        </thead>
        <tbody>
        <g:each in="${viewerConfigInstanceList}" status="i" var="viewerConfigInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${viewerConfigInstance.id}">

                    <img src='${session.getAttribute("mainSysConfig")?.absolute_url}/${fieldValue(bean: viewerConfigInstance, field: "picPath")}'
                         title='${fieldValue(bean: viewerConfigInstance, field: "view_desc")}'
                         alt='${fieldValue(bean: viewerConfigInstance, field: "view_desc")}' style="width: 50px;height: 50px"/>
                            </g:link></td>

                <td>${fieldValue(bean: viewerConfigInstance, field: "title")}</td>

                <td>${fieldValue(bean: viewerConfigInstance, field: "description")}</td>

                <td>${fieldValue(bean: viewerConfigInstance, field: "isEnable")}</td>

                <td>${fieldValue(bean: viewerConfigInstance, field: "keyWords")}</td>


            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${viewerConfigInstanceTotal}"/>
    </div>
        </div>
</div>
</body>
</html>
