<%@ page import="icreative.Article" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    %{-- <g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}"/>--}%
    <meta name="keywords" content="${articleInstance?.keyWords}"/>
    <meta name="description" content="${articleInstance?.description}"/>
    <title>${articleInstance?.title}</title>
</head>

<body>

<div id="show-article" class="content scaffold-show" role="main">

    <div class="clear"></div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    %{--<div class="contact_form">--}%
        <div><p style="float: none;text-align: center; color: #993a4e;font-size: 19px;">${articleInstance?.title}</p>
        </div>
        <ol class="property-list article">
            <g:if test="${articleInstance?.content}">

                ${articleInstance.content}

            </g:if>
        </ol>

    %{--</div>--}%
</div>
</body>
</html>
