<%@ page import="icreative.Category" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    %{--  <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>--}%
    <meta name="keywords" content="${categoryInstance?.keyWords}">
    <meta name="description" content="${categoryInstance?.description}">
    <title><g:if test="${categoryInstance?.display_value}">${categoryInstance?.display_value}</g:if></title>
</head>

<body>

<div class="crumb_nav"><a href="${createLink(uri: '/')}">Home</a> &gt;&gt;
${categoryInstance?.display_value}
</div>

<div class="title">%{--<span class="title_icon">

    <img src="${resource(dir: 'images', file: 'bullet1.jpg')}" alt="" title=""/>
</span>--}%</div>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ul class="products_blist">
    <g:each in="${productInstanceList}" status="i" var="productInstance">

        <li>

            <table style="width: 100%;" >
                <tr><td rowspan="5" style="width: 200px">    <a
                        href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${productInstance?.perlink}">
                    <img  src="${productInstance?.picture_url}"  /></a></td></tr>
                <tr><td><h4>${fieldValue(bean: productInstance, field: "name")} </h4></td> </tr>
                <tr><td><div class="products_blisth5">${productInstance?.intro}</div></td> </tr>
                <tr><td><div class="products_blistp" style="height: 100px;width:520px;overflow-y: hidden;">  ${productInstance?.specification} </div></td> </tr>
                <tr><td><a href="${session.getAttribute("mainSysConfig")?.absolute_url}/${productInstance?.perlink}" class="details">Details</a></td> </tr>
            </table>
        </li>
    </g:each>
</ul>
<div class="pagination">
    <g:paginate total="${productInstanceTotal}"/>
</div>



</body>
</html>
