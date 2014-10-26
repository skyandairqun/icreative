<%@ page import="icreative.Article" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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

<div id="show-article" class="content scaffold-show" role="main">
   <br>
    <div class="clear"></div>

    <div class="contact_form">
        <div class="form_subtitle"><g:message code="default.show.label" args="[entityName]"/></div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <ol class="property-list article">

            <g:if test="${articleInstance?.title}">
                <li class="fieldcontain">
                    <span id="title-label" class="property-label"><g:message code="article.title.label"
                                                                             default="Title"/></span>

                    <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${articleInstance}"
                                                                                             field="title"/></span>

                </li>
            </g:if>

            <g:if test="${articleInstance?.content}">
                <li class="fieldcontain">
                    <span id="content-label" class="property-label"><g:message code="article.content.label"
                                                                               default="Content"/></span>

                    <span class="property-value" aria-labelledby="content-label">
                        ${articleInstance.content}
                    </span>

                </li>
            </g:if>

            <g:if test="${articleInstance?.keyWords}">
                <li class="fieldcontain">
                    <span id="keyWords-label" class="property-label"><g:message code="article.keyWords.label"
                                                                                default="Key Words"/></span>

                    <span class="property-value" aria-labelledby="keyWords-label"><g:fieldValue
                            bean="${articleInstance}" field="keyWords"/></span>

                </li>
            </g:if>

            <g:if test="${articleInstance?.description}">
                <li class="fieldcontain">
                    <span id="description-label" class="property-label"><g:message code="article.description.label"
                                                                                   default="Description"/></span>

                    <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                            bean="${articleInstance}" field="description"/></span>

                </li>
            </g:if>

            <g:if test="${articleInstance?.perlink}">
                <li class="fieldcontain">
                    <span id="perlink-label" class="property-label"><g:message code="article.perlink.label"
                                                                               default="Perlink"/></span>

                    <span class="property-value" aria-labelledby="perlink-label"><g:fieldValue bean="${articleInstance}"
                                                                                               field="perlink"/></span>

                </li>
            </g:if>

            <g:if test="${articleInstance?.createUser}">
                <li class="fieldcontain">
                    <span id="createUser-label" class="property-label"><g:message code="article.createUser.label"
                                                                                  default="Create User"/></span>

                    <span class="property-value" aria-labelledby="createUser-label"><g:fieldValue
                            bean="${articleInstance}" field="createUser"/></span>

                </li>
            </g:if>

            <g:if test="${articleInstance?.dateCreated}">
                <li class="fieldcontain">
                    <span id="dateCreated-label" class="property-label"><g:message code="article.dateCreated.label"
                                                                                   default="Date Created"/></span>

                    <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                            date="${articleInstance?.dateCreated}"/></span>

                </li>
            </g:if>

            <g:if test="${articleInstance?.lastUpdateUser}">
                <li class="fieldcontain">
                    <span id="lastUpdateUser-label" class="property-label"><g:message
                            code="article.lastUpdateUser.label" default="Last Update User"/></span>

                    <span class="property-value" aria-labelledby="lastUpdateUser-label"><g:fieldValue
                            bean="${articleInstance}" field="lastUpdateUser"/></span>

                </li>
            </g:if>

            <g:if test="${articleInstance?.lastUpdated}">
                <li class="fieldcontain">
                    <span id="lastUpdated-label" class="property-label"><g:message code="article.lastUpdated.label"
                                                                                   default="Last Updated"/></span>

                    <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                            date="${articleInstance?.lastUpdated}"/></span>

                </li>
            </g:if>

        </ol>
        <g:form>
            <fieldset class="buttons">
                <auth:ifLoggedIn>
                    <g:hiddenField name="id" value="${articleInstance?.id}"/>
                    <g:actionSubmit class="btnsubmit" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    <g:actionSubmit class="btnsubmit" action="edit"
                                    value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                </auth:ifLoggedIn>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
