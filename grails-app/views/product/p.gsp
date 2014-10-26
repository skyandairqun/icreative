<%@ page import="icreative.Product" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    %{-- <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>--}%
    <meta name="keywords" content="${productInstance?.keyWords}">
    <meta name="description" content="${productInstance?.description}">
    <title><g:if test="${productInstance?.name}">${productInstance?.name}</g:if></title>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'lightbox.css')}" media="screen"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'tab.js')}"></script>
</head>



<body>
<div class="crumb_nav"><a href="${createLink(uri: '/')}">Home</a> &gt;&gt;
    <a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${productInstance?.category?.perlink}">${productInstance?.category?.display_value}</a>
    %{--<g:link controller="category" action="show" id="${productInstance?.category?.id}">
        ${productInstance?.category?.encodeAsHTML()}</g:link>--}% &gt;&gt;${productInstance?.name}
</div>


<ul class="products_blist">
    <li>
        <table>
            <tr><td rowspan="5">
                <table >
                    <tr><td style="text-align: center"> <a href="#" class="big"><img class="shadowimg" id="bigThumbPic" src="${productInstance?.picture_url}" alt=" ${productInstance?.intro}" title=" ${productInstance?.intro}" width="480px" height="480px"/></a></td></tr>
                    <tr><td style="text-align: center;padding-top: 15px">
                        <g:if test="${productInstance?.thumb1_url!=''}">
                            <img class="shadowimg" src='${productInstance?.thumb1_url}'         onClick="bigThumb(this,200,200)"
                             style="width: 50px;height: 50px"/>
                        </g:if>
                        &nbsp;
                        <g:if test="${productInstance?.thumb2_url!=''}">
                        <img class="shadowimg" src='${productInstance?.thumb2_url}'      onClick="bigThumb(this,200,200)"
                             style="width: 50px;height: 50px"/>
                        </g:if>
                        &nbsp;
                        <g:if test="${productInstance?.thumb3_url!=''}">
                        <img class="shadowimg" src='${productInstance?.thumb3_url}'  onClick="bigThumb(this,200,200)"
                             style="width: 50px;height: 50px"/>
                        </g:if>
                    </td></tr>
                </table>

                &nbsp;
            </td></tr>
            <tr><td> <h4> ${productInstance?.name} </h4></td></tr>
            <tr><td> <h5>  ${productInstance?.intro}</h5></td></tr>
            <tr><td><div class="products_detailsp" > ${productInstance?.specification}</div></td></tr>
            <tr ><td style="display: none">   &nbsp;
                <paypal:button
                        itemName="${productInstance?.name}"
                        itemNumber="${productInstance?.id}"
                        transactionId="${payment?.transId}"
                        amount="${productInstance?.price}"
                        discountAmount="0"
                        buyerId="12"/></td></tr>
            <!--这里添加商品描述--！>
           <tr><td colspan="2">${productInstance?.description}</td></tr>
        </table>

        <div>



        </div>
    </li>
</ul>
<script type="text/javascript">
    function bigThumb(ImgD,width_s,height_s){
        var widthOld =  document.getElementById("bigThumbPic").width;
        var heightOld =  document.getElementById("bigThumbPic").height;
        document.getElementById("bigThumbPic").src = ImgD.src;
        document.getElementById("bigThumbPic").width    = widthOld;
        document.getElementById("bigThumbPic").height   = heightOld;

    }
</script>
</body>
</html>
