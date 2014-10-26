<%@ page import="icreative.Product" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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

<div id="list-product" class="content scaffold-list" role="main">
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

            <g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}"/>

            <g:sortableColumn property="price" title="${message(code: 'product.price.label', default: 'Price')}"/>

            <g:sortableColumn property="off" title="${message(code: 'product.off.label', default: 'Off')}"/>

            <g:sortableColumn property="intro" title="${message(code: 'product.intro.label', default: 'Intro')}"/>

            <g:sortableColumn property="specification"
                              title="${message(code: 'product.specification.label', default: 'Thumbnail')}"/>

            <g:sortableColumn property="orderLevel"
                              title="${message(code: 'product.orderLevel.label', default: 'Order By')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${productInstanceList}" status="i" var="productInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link></td>

                <td>${fieldValue(bean: productInstance, field: "price")}</td>

                <td>${fieldValue(bean: productInstance, field: "off")}</td>

                <td>${fieldValue(bean: productInstance, field: "intro")}</td>

                <td><img width="100" height="100" src="${productInstance?.picture_url}" alt="" title="" border="0"/></td>

                <td>${fieldValue(bean: productInstance, field: "orderLevel")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${productInstanceTotal}"/>
    </div>
        </div>
</div>
</body>
</html>
