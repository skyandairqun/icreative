<%@ page import="icreative.Category" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title>

        <g:if test="${categoryInstance?.display_value}">${categoryInstance?.display_value}</g:if>
    </title>
</head>

<body>

<div class="crumb_nav"><a href="${createLink(uri: '/')}">Home</a> &gt;&gt;
${categoryInstance?.display_value}
</div>

<div class="title"><span class="title_icon">

    <img src="${resource(dir: 'images', file: 'bullet1.gif')}" alt="" title=""/>
</span>${categoryInstance?.display_value} jewels</div>

<div class="new_products">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <g:each in="${productInstanceList}" status="i" var="p">
        <div class="new_prod_box">
            <a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${p?.perlink}">${p?.name}</a>

            <div class="new_prod_bg"><a href="${session.getAttribute("mainSysConfig")?.absolute_url}/${p?.perlink}"><img
                    src="${p?.picture_url}"
                    alt="${p?.name}"
                    title="${p?.name}"
                    width="210px"
                    height="210px"
                    class="thumb" border="0"/>
            </a>
            </div>
        </div>
    </g:each>

    <div class="pagination">
        <g:paginate total="${productInstanceTotal}"/>
    </div>

</div>

</body>
</html>
