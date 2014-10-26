<%@ page import="icreative.Category" %>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'display_value', 'error')} ">
    <label style="width: 200px" for="display_value">
        <g:message code="category.display_value.label" default="Display value"/>

    </label>
    <g:textField title="${message(code: 'category.desc.display_value', default: 'display_value')}" name="display_value"
                 required="" value="${categoryInstance?.display_value}" size="50"/>
</div>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'keyWords', 'error')} required">
    <label style="width: 200px" for="keyWords">
        <g:message code="category.keyWords.label" default="Key Words"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'default.vo.wordsKey', default: 'keyWords')}" name="keyWords" required=""
                 value="${categoryInstance?.keyWords}" size="80"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'description', 'error')} required">
    <label style="width: 200px" for="description">
        <g:message code="category.description.label" default="Description"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'default.vo.description', default: 'description')}" name="description"
                 required="" value="${categoryInstance?.description}" size="100"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'perlink', 'error')} required">
    <label style="width: 200px" for="perlink">
        <g:message code="category.perlink.label" default="Permalink"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="perlink" required="" value="${categoryInstance?.perlink}" size="55"/>
</div>--}%
<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'orderLevel', 'error')} required">
    <label style="width: 200px" for="orderLevel">
        <g:message code="category.orderLevel.label" default="Order By"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'category.desc.orderLevel', default: 'orderLevel')}" name="orderLevel" required=""
                 value="${categoryInstance?.orderLevel}" size="10"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'levelNo', 'error')} ">
    <label style="width: 200px" for="lastUpdateUser">
        <g:message code="category.levelNo.label" default="levelNo"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select title="${message(code: 'category.desc.levelNo', default: 'levelNo')}" name="levelNo"
              from="${categoryInstance.constraints.levelNo.inList}" value="${categoryInstance?.levelNo}"
              valueMessagePrefix="categoryInstance.levelNo" noSelection="['': '']"/>

    %{--    <g:textField name="levelNo" required="" value="${categoryInstance?.levelNo}" size="55"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'createUser', 'error')} " style="display: none">
    <label style="width: 200px" for="createUser">
        <g:message code="category.createUser.label" default="Create User"/>

    </label>
    <g:textField name="createUser" value="${categoryInstance?.createUser}" size="55"/>
</div>


<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'following', 'error')} ">
    <label style="width: 200px" for="following">
        <g:message code="category.following.label" default="Following"/>
    </label>
    <g:select title="${message(code: 'category.desc.following', default: 'following')}" name="following"
              from="${icreative.Category.list()}" multiple="multiple" optionKey="id" style="width: 300px"
              value="${categoryInstance?.following*.id}" class="many-to-many"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'lastUpdateUser', 'error')} ">
    <label style="width: 200px" for="lastUpdateUser">
        <g:message code="category.lastUpdateUser.label" default="Last Update User"/>

    </label>
    <g:textField name="lastUpdateUser" value="${categoryInstance?.lastUpdateUser}" size="55"/>
</div>--}%

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'products', 'error')} ">
    <label style="width: 200px" for="products">
        <g:message code="category.products.label" default="Products"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${categoryInstance?.products ?}" var="p">
            <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
        </g:each>

        <li class="add">
            <g:link title="${message(code: 'category.desc.product', default: 'product')}" controller="product"
                    action="create"
                    params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
        </li>
    </ul>

</div>

