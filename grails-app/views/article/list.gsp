<%@ page import="icreative.Article" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}"/>
    <title>%{--<g:message code="default.list.label" args="[entityName]"/>--}%News About Vdt</title>
</head>

<body>
<a href="#list-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>
<auth:ifLoggedIn>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <auth:ifLoggedIn>
                <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                      args="[entityName]"/></g:link></li>
            </auth:ifLoggedIn>
        </ul>
    </div>
</auth:ifLoggedIn>


<div id="list-article" class="content scaffold-list" role="main">
    <h3>NEWS REPORT</h3>
    <div class="contact_form">
      %{--  <div class="form_subtitle">--}%%{--<g:message code="default.list.label" args="[entityName]"/>--}%%{--</div>--}%
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table style="width: 100%">
            <thead>
            <tr style="word-wrap : normal ">
                %{--<g:sortableColumn property="dateCreated" title="${message(code: 'article.createDate.label', default: 'Created Date')}"/>
                <g:sortableColumn property="title"  title="${message(code: 'article.title.label', default: 'Title')}"/>--}%

                %{-- <g:sortableColumn property="content" title="${message(code: 'article.content.label', default: 'Content')}"/>--}%
                <auth:ifLoggedIn>
                    <g:sortableColumn property="dateCreated"
                                      title="${message(code: 'article.dateCreated.label', default: 'DateCreated')}"/>
                    <g:sortableColumn property="title"
                                      title="${message(code: 'article.title.label', default: 'Title')}"/>
                    <g:sortableColumn property="type"
                                      title="${message(code: 'article.type.label', default: 'Type')}"/>
                    <g:sortableColumn property="keyWords"
                                      title="${message(code: 'article.keyWords.label', default: 'Key Words')}"/>
                <g:sortableColumn property="description"
                                  title="${message(code: 'article.description.label', default: 'Description')}"/>
                </auth:ifLoggedIn>
                %{--<auth:ifLoggedIn>
              <g:sortableColumn property="perlink" title="${message(code: 'article.perlink.label', default: 'Perlink')}"/>
     </auth:ifLoggedIn>   --}%
                %{-- <g:sortableColumn property="createUser"
                                   title="${message(code: 'article.createUser.label', default: 'Create User')}"/>--}%

            </tr>
            </thead>
            <tbody>
            <g:each in="${articleInstanceList}" status="i" var="articleInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}" style="height: 30px">
                <td style="width: 80px">
                    <auth:ifLoggedIn>
                        <g:link action="show"
                                id="${articleInstance.id}"> <g:formatDate format="yyyy-MM-dd" date="${articleInstance.dateCreated}"/></g:link>
                    </auth:ifLoggedIn>
                    <auth:ifNotLoggedIn>
                        <a href="${application.contextPath}/${articleInstance.perlink}"> <g:formatDate format="yyyy-MM-dd" date="${articleInstance.dateCreated}"/></a>
                    </auth:ifNotLoggedIn>


                </td>
                <td>
                    <auth:ifLoggedIn>
                        <g:link action="show"
                                id="${articleInstance.id}">${fieldValue(bean: articleInstance, field: "title")}</g:link>
                    </auth:ifLoggedIn>
                    <auth:ifNotLoggedIn>
                        <a href="${application.contextPath}/${articleInstance.perlink}">${articleInstance.title}</a>
                    </auth:ifNotLoggedIn>
                </td>
                %{-- <td>${fieldValue(bean: articleInstance, field: "content")}</td>--}%
                    <auth:ifLoggedIn>
                        <td>${fieldValue(bean: articleInstance, field: "type")}</td>
                        <td>${fieldValue(bean: articleInstance, field: "keyWords")}</td>

                    <td  style="word-wrap: break-word;width: 150px">

                    <g:if test="${articleInstance.description.length()>100}"> ${articleInstance.description.substring(0,100)}... </g:if>
                    <g:if test="${articleInstance.description.length()<=100}"> ${fieldValue(bean: articleInstance, field: "description")} </g:if>
                    </td>
                    </auth:ifLoggedIn>
                    %{-- <auth:ifLoggedIn>
                         <td>${fieldValue(bean: articleInstance, field: "perlink")}</td>
                      </auth:ifLoggedIn>--}%
                    %{--  <td>${fieldValue(bean: articleInstance, field: "createUser")}</td>--}%

                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${articleInstanceTotal}"/>
        </div>
    </div>
</div>
</body>
</html>
