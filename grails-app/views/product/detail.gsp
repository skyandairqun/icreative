<%@ page import="icreative.Product" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title>

        <g:if test="${productInstance?.name}">
            ${productInstance?.name}
        </g:if>
        <g:elseif test="">
            <g:message code="default.show.label" args="[entityName]"/>
        </g:elseif>
    </title>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'lightbox.css')}" media="screen"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'tab.js')}"></script>
</head>

<body>
<div class="crumb_nav"><a href="${createLink(uri: '/')}">Home</a> &gt;&gt;
    <a href="${session.getAttribute("mainSysConfig")?.absolute_url}/${productInstance?.category?.perlink}">${productInstance?.category?.display_value}</a>
    %{--<g:link controller="category" action="show" id="${productInstance?.category?.id}">
        ${productInstance?.category?.encodeAsHTML()}</g:link>--}% &gt;&gt;${productInstance?.name}
</div>

<div class="title">
    <span class="title_icon">
        <img src="${resource(dir: 'images', file: 'bullet1.jpg')}" alt="" title=""/></span>${productInstance?.name}
</div>

<div class="feat_prod_box_details">
    <div class="prod_img"><a href=""><img width="270" src="${productInstance?.picture_url}" alt="" title="" border="0"/>
    </a> <br/>
        <br/>
        <a href="${resource(dir: 'images', file: 'big_pic.jpg')}" rel="lightbox"><img
                src="${resource(dir: 'images', file: 'zoom.gif')}" alt="" title="" border="0"/></a></div>

    <div class="prod_det_box">
        <div class="box_top"></div>

        <div class="box_center">
            <div class="prod_title">Details</div>

            <p class="details">
                <g:if test="${productInstance?.description}">${productInstance?.description}</g:if>
            </p>

            <div class="price"><strong>PRICE:</strong> <span class="red"><g:if
                    test="${productInstance?.price}">${productInstance?.price} $</g:if></span></div>
            <paypal:button
                    itemName="${productInstance?.name}"
                    itemNumber="${productInstance?.id}"
                    transactionId="${payment?.transId}"
                    amount="${productInstance?.price}"
                    discountAmount="0"
                    buyerId="12"/>
            <div class="clear"></div>
        </div>

        <div class="box_bottom"></div>
    </div>

</div>

<div id="demo" class="demolayout">
    <ul id="demo-nav" class="demolayout">
        <li class="active"><a class="active" href="">Product Description</a></li>
        <li><a class="" href="">Specification</a></li>
    </ul>

    <div class="tabs-container">
        <div style="display: block;" class="tab" id="tab1">
            <g:if test="${productInstance?.product_desc}">
                ${productInstance?.product_desc}
            </g:if>
        </div>

        <div style="display: none;" class="tab" id="tab2">
            <g:if test="${productInstance?.specification}">
                ${productInstance?.specification}
            </g:if>
        </div>
    </div>
</div>

<div class="clear"></div>
</body>
</html>
