<%@ page import="icreative.Menu" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'menu.label', default: 'Menu')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-menu" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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
    <div class="contact_form">
        <div class="form_subtitle"><g:message code="default.show.label" args="[entityName]"/></div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <ol class="property-list menu">

            <g:if test="${menuInstance?.levelNo}">
                <li class="fieldcontain">
                    <span id="levelNo-label" class="property-label"><g:message code="menu.levelNo.label"
                                                                               default="Level No"/></span>

                    <span class="property-value" aria-labelledby="levelNo-label"><g:fieldValue bean="${menuInstance}"
                                                                                               field="levelNo"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.display_value}">
                <li class="fieldcontain">
                    <span id="display_value-label" class="property-label"><g:message code="menu.display_value.label"
                                                                                     default="Displayvalue"/></span>

                    <span class="property-value" aria-labelledby="display_value-label"><g:fieldValue
                            bean="${menuInstance}" field="display_value"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.orderLevel}">
                <li class="fieldcontain">
                    <span id="orderLevel-label" class="property-label"><g:message code="menu.orderLevel.label"
                                                                               default="Order By"/></span>

                    <span class="property-value" aria-labelledby="orderLevel-label"><g:fieldValue bean="${menuInstance}"
                                                                                               field="orderLevel"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.keyWords}">
                <li class="fieldcontain">
                    <span id="keyWords-label" class="property-label"><g:message code="menu.keyWords.label"
                                                                                default="Key Words"/></span>

                    <span class="property-value" aria-labelledby="keyWords-label"><g:fieldValue bean="${menuInstance}"
                                                                                                field="keyWords"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.description}">
                <li class="fieldcontain">
                    <span id="description-label" class="property-label"><g:message code="menu.description.label"
                                                                                   default="Description"/></span>

                    <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                            bean="${menuInstance}" field="description"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.perlink}">
                <li class="fieldcontain">
                    <span id="perlink-label" class="property-label"><g:message code="menu.perlink.label"
                                                                               default="Perlink"/></span>

                    <span class="property-value" aria-labelledby="perlink-label"><g:fieldValue bean="${menuInstance}"
                                                                                               field="perlink"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.createUser}">
                <li class="fieldcontain">
                    <span id="createUser-label" class="property-label"><g:message code="menu.createUser.label"
                                                                                  default="Create User"/></span>

                    <span class="property-value" aria-labelledby="createUser-label"><g:fieldValue bean="${menuInstance}"
                                                                                                  field="createUser"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.position}">
                <li class="fieldcontain">
                    <span id="position-label" class="property-label"><g:message code="menu.position.label"
                                                                                default="Position"/></span>

                    <span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${menuInstance}"
                                                                                                field="position"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.lastUpdateUser}">
                <li class="fieldcontain">
                    <span id="lastUpdateUser-label" class="property-label"><g:message code="menu.lastUpdateUser.label"
                                                                                      default="Last Update User"/></span>

                    <span class="property-value" aria-labelledby="lastUpdateUser-label"><g:fieldValue
                            bean="${menuInstance}" field="lastUpdateUser"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.dateCreated}">
                <li class="fieldcontain">
                    <span id="dateCreated-label" class="property-label"><g:message code="menu.dateCreated.label"
                                                                                   default="Date Created"/></span>

                    <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                            date="${menuInstance?.dateCreated}"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.lastUpdated}">
                <li class="fieldcontain">
                    <span id="lastUpdated-label" class="property-label"><g:message code="menu.lastUpdated.label"
                                                                                   default="Last Updated"/></span>

                    <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                            date="${menuInstance?.lastUpdated}"/></span>

                </li>
            </g:if>

            <g:if test="${menuInstance?.menus}">
                <li class="fieldcontain">
                    <span id="menus-label" class="property-label"><g:message code="menu.menus.label"
                                                                             default="Menus"/></span>

                    <g:each in="${menuInstance.menus}" var="m">
                        <span class="property-value" aria-labelledby="menus-label"><g:link controller="menu"
                                                                                           action="show"
                                                                                           id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
                    </g:each>

                </li>
            </g:if>

            <g:if test="${menuInstance?.parentMenu}">
                <li class="fieldcontain">
                    <span id="parentMenu-label" class="property-label"><g:message code="menu.parentMenu.label"
                                                                                  default="Parent Menu"/></span>

                    <span class="property-value" aria-labelledby="parentMenu-label"><g:link controller="menu"
                                                                                            action="show"
                                                                                            id="${menuInstance?.parentMenu?.id}">${menuInstance?.parentMenu?.encodeAsHTML()}</g:link></span>

                </li>
            </g:if>

        </ol>
        <g:form>
            <fieldset class="buttons">
            <auth:ifLoggedIn>
                <g:hiddenField name="id" value="${menuInstance?.id}"/>
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
</body>
</html>
