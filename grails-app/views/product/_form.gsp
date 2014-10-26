<%@ page import="icreative.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="product.name.label" default="Product Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'product.desc.name', default: 'name')}" name="name" required=""
                 value="${productInstance?.name}" size="80"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'picture_url', 'error')} required">
    <label for="picture_url">
        <g:message code="product.picture_url.label" default="Product Picture"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'product.desc.picture_url', default: 'picture_url')}" name="picture_url"
                 required="" value="${productInstance?.picture_url}" size="80"/>    <a target="_blank"
                                                                                       style="display:inline-block;margin-top:10px;; margin-left:auto; margin-right:auto"
                                                                                       href="${request.contextPath}/ck/ofm?fileConnector=${application.contextPath}/ck/ofm/filemanager&type=Image&viewMode=grid"
                                                                                       title="浏览服务器" hidefocus="true"
                                                                                       class="cke_dialog_ui_button" role="button"
                                                                                       aria-labelledby="cke_106_label"
                                                                                       id="cke_107_uiElement"><span
            id="cke_106_label" class="cke_dialog_ui_button">Browser Dic</span></a>
</div>


<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'thumb1_url', 'error')} required">
    <label for="picture_url">
        <g:message code="product.thumb1_url.label" default="Product thumb1"/>
    </label>
    <g:textField title="${message(code: 'product.desc.thumb1_url', default: 'thumb1_url')}" name="thumb1_url"
                  value="${productInstance?.thumb1_url}" size="80"/>    <a target="_blank"
                                                                                      style="display:inline-block;margin-top:10px;; margin-left:auto; margin-right:auto"
                                                                                      href="${request.contextPath}/ck/ofm?fileConnector=${application.contextPath}/ck/ofm/filemanager&type=Image&viewMode=grid"
                                                                                      title="浏览服务器" hidefocus="true"
                                                                                      class="cke_dialog_ui_button" role="button"
                                                                                      aria-labelledby="cke_106_label"
                                                                                      id="cke_107_uiElement"><span
            id="cke_106_label" class="cke_dialog_ui_button">Browser Dic</span></a>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'thumb2_url', 'error')} required">
    <label for="picture_url">
        <g:message code="product.thumb2_url.label" default="Product thumb2"/>
    </label>
    <g:textField title="${message(code: 'product.desc.thumb2_url', default: 'thumb2_url')}" name="thumb2_url"
                  value="${productInstance?.thumb2_url}" size="80"/>    <a target="_blank"
                                                                                      style="display:inline-block;margin-top:10px;; margin-left:auto; margin-right:auto"
                                                                                      href="${request.contextPath}/ck/ofm?fileConnector=${application.contextPath}/ck/ofm/filemanager&type=Image&viewMode=grid"
                                                                                      title="浏览服务器" hidefocus="true"
                                                                                      class="cke_dialog_ui_button" role="button"
                                                                                      aria-labelledby="cke_106_label"
                                                                                      id="cke_107_uiElement"><span
            id="cke_106_label" class="cke_dialog_ui_button">Browser Dic</span></a>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'thumb3_url', 'error')} required">
    <label for="picture_url">
        <g:message code="product.thumb3_url.label" default="Product thumb3"/>
    </label>
    <g:textField title="${message(code: 'product.desc.thumb3_url', default: 'thumb3_url')}" name="thumb3_url"
                  value="${productInstance?.thumb3_url}" size="80"/>    <a target="_blank"
                                                                                      style="display:inline-block;margin-top:10px;; margin-left:auto; margin-right:auto"
                                                                                      href="${request.contextPath}/ck/ofm?fileConnector=${application.contextPath}/ck/ofm/filemanager&type=Image&viewMode=grid"
                                                                                      title="浏览服务器" hidefocus="true"
                                                                                      class="cke_dialog_ui_button" role="button"
                                                                                      aria-labelledby="cke_106_label"
                                                                                      id="cke_107_uiElement"><span
            id="cke_106_label" class="cke_dialog_ui_button">Browser Dic</span></a>
</div>


<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
    <label for="price">
        <g:message code="product.price.label" default="Price(Number)"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'product.desc.price', default: 'price')}" name="price" required=""
                 value="${productInstance?.price}" size="80"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'off', 'error')} required">
    <label for="off">
        <g:message code="product.off.label" default="Off(Number)"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'product.desc.off', default: 'off')}" name="off" required=""
                 value="${productInstance?.off}" size="15"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'orderLevel', 'error')} required">
    <label for="orderLevel">
        <g:message code="product.orderLevel.label" default="Order By"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field title="${message(code: 'product.desc.orderLevel', default: 'orderLevel')}" type="number" name="orderLevel"
             required="" value="${fieldValue(bean: productInstance, field: 'orderLevel')}"
             size="80"/>
</div>


<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'intro', 'error')} ">
    <label for="intro">
        <g:message code="product.intro.label" default="Intro"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea title="${message(code: 'product.desc.intro', default: 'intro')}" name="intro" rows="3" cols="100"
                required="" value="${productInstance?.intro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'keyWords', 'error')} required">
    <label for="keyWords">
        <g:message code="product.keyWords.label" default="Key Words"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField title="${message(code: 'default.vo.wordsKey', default: 'keyWords')}" name="keyWords" required=""
                 value="${productInstance?.keyWords}" size="80"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
    <label for="description">
        <g:message code="product.description.label" default="Description"/>
        <span class="required-indicator">*</span>
    </label>


    <g:textField name="description" title="${message(code: 'default.vo.description', default: 'description')}"
                 required="" value="${productInstance?.description}" size="100"/>
</div>

%{--
<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'perlink', 'error')} required">
    <label for="perlink">
        <g:message code="product.perlink.label" default="Permalink"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="perlink" required="" value="${productInstance?.perlink}" size="80"/>
</div>
--}%


<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
    <label for="category">
        <g:message code="product.category.label" default="Category"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="category" title="${message(code: 'product.desc.category', default: 'category')}" name="category.id"
              from="${icreative.Category.list()}" optionKey="id" required=""
              value="${productInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'createUser', 'error')} " style="display: none">
    <label for="createUser">
        <g:message code="product.createUser.label" default="Create User"/>

    </label>
    <g:textField name="createUser" value="${productInstance?.createUser}" size="80"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'lastUpdateUser', 'error')} " style="display: none">
    <label for="lastUpdateUser">
        <g:message code="product.lastUpdateUser.label" default="Last Update User"/>

    </label>
    <g:textField name="lastUpdateUser" value="${productInstance?.lastUpdateUser}" size="80"/>
</div>


<div id="Tab">
    <div class="Menubox">
        <ul>
            <li id="menu1" onmouseover="setTab('menu', 1, 2)" class="hover">产品介绍</li>
            <li id="menu2" onmouseover="setTab('menu', 2, 2)">规格参数</li>
        </ul>
    </div>

    <div class="Contentbox">
        <div id="con_menu_1" class="hover"
             title="${message(code: 'product.desc.product_desc', default: 'product_desc')}">
            <div class="fieldcontain ${hasErrors(bean: productInstance, field: 'product_desc', 'error')} ">
                <ckeditor:editor name="product_desc" height="150px" width="647px">
                    ${productInstance?.product_desc}
                </ckeditor:editor>
            </div>
        </div>

        <div id="con_menu_2" style="display:none"
             title="${message(code: 'product.desc.specification', default: 'specification')}">
            <div class="fieldcontain ${hasErrors(bean: productInstance, field: 'specification', 'error')} ">
                <ckeditor:editor name="specification" height="250px" width="647px">
                    ${productInstance?.specification}
                </ckeditor:editor>

            </div>

        </div>
    </div>
</div>

