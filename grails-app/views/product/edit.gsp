<%@ page import="icreative.Product" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <ckeditor:resources/>
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
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
<a href="#edit-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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
<div id="edit-product" class="content scaffold-edit" role="main">
    <div class="form_subtitle"><g:message code="default.edit.label" args="[entityName]"/></div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${productInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${productInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form method="post">
        <g:hiddenField name="id" value="${productInstance?.id}"/>
        <g:hiddenField name="version" value="${productInstance?.version}"/>
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <auth:ifLoggedIn>
                <g:actionSubmit class="btnsubmit" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                formnovalidate=""
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                <g:actionSubmit class="btnsubmit" action="update"
                                value="${message(code: 'default.button.update.label', default: 'Update')}"/>

            </auth:ifLoggedIn>
        </fieldset>
    </g:form>
</div>
    </div>
</body>

</html>
