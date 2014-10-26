<%@ page import="icreative.Menu" %>

<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'display_value', 'error')} required">
    <label for="display_value">
        <g:message code="menu.display_value.label" default="Displayvalue"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'menu.desc.displayValue', default: 'display_value')}" name="display_value"
                 required="" value="${menuInstance?.display_value}" size="100"/>
</div>



<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'keyWords', 'error')} required">
    <label for="keyWords">
        <g:message code="menu.keyWords.label" default="Key Words"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'default.vo.wordsKey', default: 'keyWords')}" name="keyWords" required=""
                 value="${menuInstance?.keyWords}"  size="80"/>
</div>



<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'parentMenu', 'error')} ">
    <label for="parentMenu">
        <g:message code="menu.parentMenu.label" default="Parent Menu"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select title="${message(code: 'menu.desc.parentMenu', default: 'parentMenu')}" noSelection="['': '']"
              id="parentMenu" name="parentMenu.id"
              from='${session.getAttribute("levelTopMenuMapData")}' optionKey="id"
              value="${menuInstance?.parentMenu?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'perlink', 'error')}">
    <label for="perlink">
        <g:message code="menu.perlink.label" default="Perlink"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'menu.desc.perLink', default: 'perLink')}" name="perlink"
                 value="${menuInstance?.perlink}" size="85"/>
</div>

<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'createUser', 'error')}" style="display:none;">

    <label for="createUser">
        <g:message code="menu.createUser.label" default="Create User"/>

    </label>
    <g:textField name="createUser" value="${menuInstance?.createUser}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'position', 'error')} ">
    <label for="position">
        <g:message code="menu.position.label" default="Position"/>

    </label>
    <g:textField title="${message(code: 'menu.desc.position', default: 'position')}" name="position"
                 value="${menuInstance?.position}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'lastUpdateUser', 'error')} " style="display: none">
    <label for="lastUpdateUser">
        <g:message code="menu.lastUpdateUser.label" default="Last Update User"/>

    </label>
    <g:textField name="lastUpdateUser" value="${menuInstance?.lastUpdateUser}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'menus', 'error')} " style="display: none">
    <label for="menus">
        <g:message code="menu.menus.label" default="Menus"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${menuInstance?.menus ?}" var="m">
            <li><g:link controller="menu" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="menu" action="create"
                    params="['menu.id': menuInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'menu.label', default: 'Menu')])}</g:link>
        </li>
    </ul>

</div>


<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'levelNo', 'error')} ">

    <label for="levelNo">
        <g:message code="menu.levelNo.label" default="Level No"/>
    </label>
    <g:select title="${message(code: 'menu.desc.levelNo', default: 'levelNo')}" name="levelNo"
              from="${menuInstance.constraints.levelNo.inList}" value="${menuInstance?.levelNo}"
              valueMessagePrefix="menu.levelNo" noSelection="['': '']"/>
</div>


<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'orderLevel', 'error')} required">

    <label for="orderLevel">
        <g:message code="menu.orderLevel.label" default="Order By"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'menu.desc.orderLevel', default: 'orderLevel')}" name="orderLevel" required=""
                 value="${menuInstance?.orderLevel}" size="10"/>
</div>

<div class="fieldcontain ${hasErrors(bean: menuInstance, field: 'description', 'error')} required">
    <label for="description">
        <g:message code="menu.description.label" default="Description"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea  cols="100" rows="2" title="${message(code: 'default.vo.description', default: 'description')}" name="description"
                 required="" value="${menuInstance?.description}"/>
</div>
