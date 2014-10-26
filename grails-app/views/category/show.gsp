<%@ page import="icreative.Category" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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


<div id="show-menu" class="content scaffold-show" role="main">
    <br>
    <div class="clear"></div>
<div class="contact_form">
    <div id="show-category" class="content scaffold-show" role="main">
        <div class="form_subtitle"><g:message code="default.show.label" args="[entityName]"/></div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <ol class="property-list category">

            <g:if test="${categoryInstance?.display_value}">
                <li class="fieldcontain">
                    <span id="display_value-label" class="property-label"><g:message code="category.display_value.label"
                                                                                     default="Display value"/></span>

                    <span class="property-value" aria-labelledby="display_value-label"><g:fieldValue
                            bean="${categoryInstance}" field="display_value"/></span>

                </li>
            </g:if>

            <g:if test="${categoryInstance?.orderLevel}">
                <li class="fieldcontain">
                    <span id="orderLevel-label" class="property-label"><g:message code="category.orderLevel.label"
                                                                               default="Order By"/></span>

                    <span class="property-value" aria-labelledby="orderLevel-label"><g:fieldValue
                            bean="${categoryInstance}"
                            field="orderLevel"/></span>

                </li>
            </g:if>

            <g:if test="${categoryInstance?.keyWords}">
                <li class="fieldcontain">
                    <span id="keyWords-label" class="property-label"><g:message code="category.keyWords.label"
                                                                                default="Key Words"/></span>

                    <span class="property-value" aria-labelledby="keyWords-label"><g:fieldValue
                            bean="${categoryInstance}"
                            field="keyWords"/></span>

                </li>
            </g:if>

            <g:if test="${categoryInstance?.description}">
                <li class="fieldcontain">
                    <span id="description-label" class="property-label"><g:message code="category.description.label"
                                                                                   default="Description"/></span>

                    <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                            bean="${categoryInstance}" field="description"/></span>

                </li>
            </g:if>

            <g:if test="${categoryInstance?.perlink}">
                <li class="fieldcontain">
                    <span id="perlink-label" class="property-label"><g:message code="category.perlink.label"
                                                                               default="PerLink"/></span>
                    <span class="property-value" aria-labelledby="perlink-label">
                        <a href="${application.contextPath}/${categoryInstance.perlink}">${categoryInstance.perlink}</a>
                    </span>
                    %{--   <span class="property-value" aria-labelledby="perlink-label"><g:fieldValue bean="${categoryInstance}"
                                                                                                  field="perlink"/></span>--}%

                </li>
            </g:if>

            <g:if test="${categoryInstance?.createUser}">
                <li class="fieldcontain">
                    <span id="createUser-label" class="property-label"><g:message code="category.createUser.label"
                                                                                  default="Create User"/></span>

                    <span class="property-value" aria-labelledby="createUser-label"><g:fieldValue
                            bean="${categoryInstance}"
                            field="createUser"/></span>

                </li>
            </g:if>

            <g:if test="${categoryInstance?.dateCreated}">
                <li class="fieldcontain">
                    <span id="dateCreated-label" class="property-label"><g:message code="category.dateCreated.label"
                                                                                   default="Date Created"/></span>

                    <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                            date="${categoryInstance?.dateCreated}"/></span>

                </li>
            </g:if>


            <g:if test="${categoryInstance?.following}">
                <li class="fieldcontain">
                    <span id="following-label" class="property-label"><g:message code="category.following.label"
                                                                                 default="Following"/></span>

                    <g:each in="${categoryInstance.following}" var="f">
                        <span class="property-value" aria-labelledby="following-label"><g:link controller="category"
                                                                                               action="show"
                                                                                               id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
                    </g:each>

                </li>
            </g:if>

            <g:if test="${categoryInstance?.lastUpdateUser}">
                <li class="fieldcontain">
                    <span id="lastUpdateUser-label" class="property-label"><g:message
                            code="category.lastUpdateUser.label"
                            default="Last Update User"/></span>

                    <span class="property-value" aria-labelledby="lastUpdateUser-label"><g:fieldValue
                            bean="${categoryInstance}" field="lastUpdateUser"/></span>

                </li>
            </g:if>

            <g:if test="${categoryInstance?.lastUpdated}">
                <li class="fieldcontain">
                    <span id="lastUpdated-label" class="property-label"><g:message code="category.lastUpdated.label"
                                                                                   default="Last Updated"/></span>

                    <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                            date="${categoryInstance?.lastUpdated}"/></span>

                </li>
            </g:if>

            <g:if test="${categoryInstance?.products}">
                <li class="fieldcontain">
                    <span id="products-label" class="property-label"><g:message code="category.products.label"
                                                                                default="Products"/></span>

                    <g:each in="${categoryInstance.products}" var="p">
                        <span class="property-value" aria-labelledby="products-label"><g:link controller="product"
                                                                                              action="show"
                                                                                              id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
                    </g:each>

                </li>
            </g:if>

        </ol>
        <g:form>
            <fieldset class="buttons">
            <auth:ifLoggedIn>
                <g:hiddenField name="id" value="${categoryInstance?.id}"/>
                <g:actionSubmit class="btnsubmit" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                <g:actionSubmit class="btnsubmit" action="edit"
                                value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                </fieldset>
            </auth:ifLoggedIn>
        </g:form>
    </div>
</div>
 </div>
</body>
</html>
