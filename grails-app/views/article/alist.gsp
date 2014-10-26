<%@ page import="icreative.Article" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}"/>
    <title>%{--<g:message code="default.list.label" args="[entityName]"/>--}%News About Vdt</title>
</head>

<body>

    <h3>NEWS REPORT</h3>

            <g:each in="${articleInstanceList}" status="i" var="articleInstance">
             <a href="${session.getAttribute("mainSysConfig")?.absolute_url}/${fieldValue(bean: articleInstance, field: "perlink")}">
                 <g:formatDate format="yyyy-MM-dd" date="${articleInstance.dateCreated}"/>
             </a>
             </g:each>

        <div class="pagination">
            <g:paginate total="${articleInstanceTotal}"/>
        </div>
    </div>
</div>
</body>
</html>
