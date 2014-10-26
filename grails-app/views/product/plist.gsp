<%@ page import="icreative.Product" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <ckeditor:resources/>
</head>

<body>
<ul class="products_blist">
    <g:each in="${productInstanceListByLevel}" status="i" var="productInstance">

        <li>

            <table style="width: 100%;" >
                <tr><td rowspan="5" style="width: 200px">
                    <a href="${session.getAttribute("mainSysConfig")?.absolute_url}/${productInstance?.perlink}">
        <img  src="${productInstance?.picture_url}"  /></a></td></tr>
        <tr><td><h4>${fieldValue(bean: productInstance, field: "name")} </h4></td> </tr>
        <tr><td><h5>${productInstance?.intro}</h5></td> </tr>
        <tr><td><div class="products_blistp">  ${productInstance?.specification} </div></td> </tr>
        <tr><td><a href="${session.getAttribute("mainSysConfig")?.absolute_url}/${productInstance?.perlink}" class="details">Details</a>
                    <!--<a class="adisply" href="${session.getAttribute("mainSysConfig")?.absolute_url}/${productInstance?.perlink}" >Order</a>-->
                     </td> </tr>
            </table>
        </li>
    </g:each>

</ul>

<div class="pagination">
    <g:paginate total="${productInstanceTotal}"/>
</div>

</body>
</html>
