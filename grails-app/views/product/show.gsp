<%@ page import="icreative.Product" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <style type="text/css">

    a:link, a:visited {
        font-size: 12px;
        color: #666;
        text-decoration: none;
    }

    a:hover {
        color: #ff0000;
        text-decoration: underline;
    }

    #Tab {
        margin: 0 auto;
        width: 100%;
        border: 1px solid #BCE2F3;
    }

    .Menubox {
        height: 28px;
        width: 100%;
        border-bottom: 1px solid #64B8E4;
    }

    .Menubox ul {
        list-style: none;
        margin: 7px 40px;
        padding: 0;
        position: absolute;
    }

    .Menubox ul li {
        float: left;
        background: #64B8E4;
        line-height: 20px;
        display: block;
        cursor: pointer;
        width: 65px;
        text-align: center;
        color: #fff;
        font-weight: bold;
        border-top: 1px solid #64B8E4;
        border-left: 1px solid #64B8E4;
        border-right: 1px solid #64B8E4;
    }

    .Menubox ul li.hover {
        background: #fff;
        border-bottom: 1px solid #fff;
        color: #147AB8;
    }

    .Contentbox {
        clear: both;
        margin-top: 0px;
        border-top: none;
        height: 181px;
        padding-top: 8px;
        height: 100%;
    }

    .Contentbox ul {
        list-style: none;
        margin: 7px;
        padding: 0;
    }

    .Contentbox ul li {
        line-height: 24px;
        border-bottom: 1px dotted #ccc;
    }
    </style>
    <script>
        <!--
        function setTab(name, cursel, n) {
            for (i = 1; i <= n; i++) {
                var menu = document.getElementById(name + i);
                var con = document.getElementById("con_" + name + "_" + i);
                menu.className = i == cursel ? "hover" : "";
                con.style.display = i == cursel ? "block" : "none";
            }
        }
        //-->
    </script>
</head>

<body>
<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <auth:ifLoggedIn>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </auth:ifLoggedIn>
    </ul>
</div>
<br>
<div class="clear"></div>

<div class="contact_form">
<div id="show-product" class="content scaffold-show" role="main">
<div class="form_subtitle"><g:message code="default.show.label" args="[entityName]"/></div>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ol class="property-list product">

    <g:if test="${productInstance?.name}">
        <li class="fieldcontain">
            <span id="name-label" class="property-label"><g:message code="product.name.label"
                                                                    default="Name"/></span>

            <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productInstance}"
                                                                                    field="name"/></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.price}">
        <li class="fieldcontain">
            <span id="price-label" class="property-label"><g:message code="product.price.label"
                                                                     default="Price"/></span>

            <span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInstance}"
                                                                                     field="price"/></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.off}">
        <li class="fieldcontain">
            <span id="off-label" class="property-label"><g:message code="product.off.label" default="Off"/></span>

            <span class="property-value" aria-labelledby="off-label"><g:fieldValue bean="${productInstance}"
                                                                                   field="off"/></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.intro}">
        <li class="fieldcontain">
            <span id="intro-label" class="property-label"><g:message code="product.intro.label"
                                                                     default="Intro"/></span>

            <span class="property-value" aria-labelledby="intro-label"><g:fieldValue bean="${productInstance}"
                                                                                     field="intro"/></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.orderLevel}">
        <li class="fieldcontain">
            <span id="orderLevel-label" class="property-label"><g:message code="product.orderLevel.label"
                                                                       default="Order By"/></span>

            <span class="property-value" aria-labelledby="orderLevel-label"><g:fieldValue bean="${productInstance}"
                                                                                       field="orderLevel"/></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.keyWords}">
        <li class="fieldcontain">
            <span id="keyWords-label" class="property-label"><g:message code="product.keyWords.label"
                                                                        default="Key Words"/></span>

            <span class="property-value" aria-labelledby="keyWords-label"><g:fieldValue bean="${productInstance}"
                                                                                        field="keyWords"/></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.perlink}">
        <li class="fieldcontain">
            <span id="perlink-label" class="property-label"><g:message code="product.perlink.label"
                                                                       default="Perlink"/></span>

            <span class="property-value" aria-labelledby="perlink-label">
                <a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${productInstance.perlink}">${productInstance.perlink}</a>
                %{--  <g:fieldValue bean="${productInstance}"
                                                                                         field="perlink"/>--}%

            </span>

        </li>
    </g:if>



    <g:if test="${productInstance?.category}">
        <li class="fieldcontain">
            <span id="category-label" class="property-label"><g:message code="product.category.label"
                                                                        default="Category"/></span>

            <span class="property-value" aria-labelledby="category-label"><g:link controller="category"
                                                                                  action="show"
                                                                                  id="${productInstance?.category?.id}">${productInstance?.category?.encodeAsHTML()}</g:link></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.createUser}">
        <li class="fieldcontain">
            <span id="createUser-label" class="property-label"><g:message code="product.createUser.label"
                                                                          default="Create User"/></span>

            <span class="property-value" aria-labelledby="createUser-label"><g:fieldValue bean="${productInstance}"
                                                                                          field="createUser"/></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.dateCreated}">
        <li class="fieldcontain">
            <span id="dateCreated-label" class="property-label"><g:message code="product.dateCreated.label"
                                                                           default="Date Created"/></span>

            <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                    date="${productInstance?.dateCreated}"/></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.lastUpdateUser}">
        <li class="fieldcontain">
            <span id="lastUpdateUser-label" class="property-label"><g:message code="product.lastUpdateUser.label"
                                                                              default="Last Update User"/></span>

            <span class="property-value" aria-labelledby="lastUpdateUser-label"><g:fieldValue
                    bean="${productInstance}" field="lastUpdateUser"/></span>

        </li>
    </g:if>

    <g:if test="${productInstance?.lastUpdated}">
        <li class="fieldcontain">
            <span id="lastUpdated-label" class="property-label"><g:message code="product.lastUpdated.label"
                                                                           default="Picture_Thumb"/></span>

            <span class="property-value" aria-labelledby="lastUpdated-label">
                <table border="1">
                    <tr><td rowspan="3"><img  src='${productInstance?.picture_url}'
                                             style="width: 150px;height: 150px"/></td> <td><img alt="thumb1_url"  src='${productInstance?.thumb1_url}' style="width: 50px;height: 50px"/></td>  </tr>
                    <tr><td><img alt="thumb2_url"  src='${productInstance?.thumb2_url}' style="width: 50px;height: 50px"/></td></tr>
                    <tr><td><img alt="thumb3_url"   src='${productInstance?.thumb3_url}' style="width: 50px;height: 50px"/></td></tr>
                </table>



            </span>

        </li>
    </g:if>







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
    %{-- <div id="Tab">
         <div class="Menubox">
             <ul>
                 <li id="menu1" onmouseover="setTab('menu', 1, 2)" class="hover">  产品介绍  </li>
                 <li id="menu2" onmouseover="setTab('menu', 2, 2)">  规格参数  </li>
             </ul>
         </div>--}%

    %{--<div class="Contentbox">
        <div id="con_menu_1" class="hover">
            <div class="fieldcontain ${hasErrors(bean: productInstance, field: 'product_desc', 'error')} ">
                <g:if test="${productInstance?.product_desc}">
                    ${productInstance?.product_desc}
                </g:if>
            </div>
        </div>

        <div id="con_menu_2" style="display:none">
            <div class="fieldcontain ${hasErrors(bean: productInstance, field: 'specification', 'error')} ">
                <g:if test=" ${productInstance?.specification}">
                    ${productInstance?.specification}
                </g:if>
            </div>

        </div>
    </div>--}%
    %{--</div>--}%

</ol>
<g:form>
    <fieldset class="buttons">
        <g:if test="${request.session.getAttribute('grails-authentication.authenticatedUser')}">
            <g:hiddenField name="id" value="${productInstance?.id}"/>
            <g:actionSubmit class="btnsubmit" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            <g:actionSubmit class="btnsubmit" action="edit"
                            value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
        </g:if>
    </fieldset>
</g:form>
</div>
</div>
</body>
</html>
