%{--
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

<div class="crumb_nav"> <a href="${createLink(uri: '/')}">Home</a> &gt;&gt;
${categoryInstance?.display_value}
</div>
<div class="title"><span class="title_icon">

    <img src="${resource(dir:'images',file:'bullet1.jpg')}" alt="" title="" /></span>${categoryInstance?.display_value} jewels</div>

<div class="new_products">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
--}%
%{--
    <span id="products-label" class="property-label"><g:message code="category.products.label"
                                                                default="Products"/></span>--}%%{--


<g:each in="${productInstanceList}" status="i" var="p">
    <div class="new_prod_box">
        <a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${p?.perlink}">${p?.name}</a>
        <div class="new_prod_bg"> <a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${p?.perlink}"><img src="${p?.picture_url}" alt="${p?.name}" title="${p?.name}" width="115px" class="thumb" border="0" /></a>
        </div>
    </div>
 </g:each>

    <div class="pagination">
        <g:paginate total="${productInstanceTotal}"/>
    </div>

        --}%
%{--<g:if test="${categoryInstance?.products}">
                <g:each in="${categoryInstance.products}" var="p">
                    <div class="new_prod_box">
                        <a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${p?.perlink}">${p?.name}</a>
                        <div class="new_prod_bg"> <a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${p?.perlink}"><img src="${p?.picture_url}" alt="${p?.name}" title="${p?.name}" width="115px" class="thumb" border="0" /></a>
                        </div>
                    </div>

                --}%%{--
--}%
%{--    <span class="property-value" aria-labelledby="products-label"><g:link controller="product"
                                                                                          action="show"
                                                                                          id="${p.id}">${p?.encodeAsHTML()}</g:link></span>--}%%{--
--}%
%{--
                </g:each>
        </g:if>--}%%{--

    </div>

--}%
%{--<div id="show-category" class="content scaffold-show" role="main">

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

        <g:if test="${categoryInstance?.orderByLevel}">
            <li class="fieldcontain">
                <span id="orderByLevel-label" class="property-label"><g:message code="category.orderByLevel.label"
                                                                           default="Order By"/></span>

                <span class="property-value" aria-labelledby="orderByLevel-label"><g:fieldValue bean="${categoryInstance}"
                                                                                           field="orderByLevel"/></span>

            </li>
        </g:if>

        <g:if test="${categoryInstance?.keyWords}">
            <li class="fieldcontain">
                <span id="keyWords-label" class="property-label"><g:message code="category.keyWords.label"
                                                                            default="Key Words"/></span>

                <span class="property-value" aria-labelledby="keyWords-label"><g:fieldValue bean="${categoryInstance}"
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
                                                                           default="Permalink"/></span>

                <span class="property-value" aria-labelledby="perlink-label"><g:fieldValue bean="${categoryInstance}"
                                                                                           field="perlink"/></span>

            </li>
        </g:if>

        <g:if test="${categoryInstance?.createUser}">
            <li class="fieldcontain">
                <span id="createUser-label" class="property-label"><g:message code="category.createUser.label"
                                                                              default="Create User"/></span>

                <span class="property-value" aria-labelledby="createUser-label"><g:fieldValue bean="${categoryInstance}"
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
                <span id="lastUpdateUser-label" class="property-label"><g:message code="category.lastUpdateUser.label"
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
            <g:hiddenField name="id" value="${categoryInstance?.id}"/>
            <g:link class="edit" action="edit" id="${categoryInstance?.id}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>--}%%{--

</body>
</html>
--}%
