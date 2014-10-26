<div class="right_content">

<auth:ifLoggedIn>
    <div class="title"><span class="title_icon"><g:img dir="images" file="bullet3.jpg" alt=""
                                                       title=""/></span>系统管理</div>
    <div>
        <ul>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">

                <g:if test='${c.name != "Authentication" && c.name != "Base" && c.name != "Paypal" && c.name != "OpenFileManagerConnector"}'>

                    <li><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
                </g:if>

            </g:each>
        </ul>
    </div>


    <br>

</auth:ifLoggedIn>

    <g:if test="${request.getRequestURI().indexOf("product")>0}">
        <g:set var="position" value="Product"/>
    </g:if>
    <g:elseif test="${request.getRequestURI().indexOf("company_introduction")>0}">
        <g:set var="position" value="Company"/>
    </g:elseif>
    <g:elseif test="${request.getRequestURI().indexOf("category")>0}">
        <g:set var="position" value="Product"/>
    </g:elseif>
    <g:else>
        <g:set var="position" value="Others"/>
    </g:else>



        <ul class="right_menu">

            <g:if test="${position!="Product"}">
                <g:each in="${session.getAttribute("rightArticleList")}" status="i" var="article">
                    <h4><li  style="cursor:hand;font-weight: bolder" >
                        <a href="${session.getAttribute("mainSysConfig")?.absolute_url}/${article.perlink}" title="click">
                        ${article.title.toUpperCase()}
                    </a></li></h4>

                </g:each>
            </g:if>
            <g:else>

            <g:each in="${session.getAttribute("levelTopCategoryMapData")}" status="i" var="category">
                <h4>
                    %{--<li   <g:if test="${category?.following}"> style="cursor:hand;font-weight: bolder" </g:if>  >--}%
                    <li   style="cursor:hand;font-weight: bolder">
                    <a href="${session.getAttribute("mainSysConfig")?.absolute_url}/${category.perlink}"
                           title="click">
                    ${category.display_value.toUpperCase()}
                </a></li></h4>
                <g:if test="${category?.following}">
                    <dl>
                    <g:each in="${category.following}" status="j" var="level1category">
                        <dt>
                        <li   style="cursor:hand;font-weight: bold"   >
                        %{--<li  <g:if test="${level1category?.following}"> style="cursor:hand;font-weight: bold" </g:if>  >--}%
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a
                            href="${session.getAttribute("mainSysConfig")?.absolute_url}/${level1category.perlink}">
                        ${level1category.display_value.toUpperCase()}
                    </a>
                    </li></dt>

                        <g:if test="${level1category?.following}">
                            <g:each in="${level1category.following}" status="k" var="leve2category">
                                <dd>

                                    <li>
                                        &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;
                                        <a
                                       href="${session.getAttribute("mainSysConfig")?.absolute_url}/${leve2category.perlink}">
                                        ${leve2category.display_value.toUpperCase()}
                                    </a>
                                </li></dd>
                            </g:each>
                        </g:if>
                    </g:each>
                    </dl>
                </g:if>
            </g:each>
            </g:else>
        </ul>

</div>
<!--end of right content-->

<script type="text/javascript">

    $(document).ready(function () {
         //隐藏所有的dl
        $('dl').hide(0);
        //隐藏所有的dd
        $('dd').hide(0);
        $('dt').hide(0);

        //当标题被点击时（下文的this就是指当前的H3标题）

        $('h4').click(
                function () {
                    //如果当前标题下的dl关闭
                    if ($(this).next("dl").css("display") == "none") {
                        //移除所有标题的新css
                        $("h4").removeClass("on");
                        //打开当前标题下的dl
                        $(this).next("dl").slideDown("fast");
                        //给当前标题加新css
                        $(this).addClass("on");
                    }
                    //如果当前标题下的dl是最后一个，并且打开状态
                    else {
                        //关闭当前标题下的dl
                        $(this).next("dl").slideUp("fast");
                        //移除当前标题的新css
                        $(this).removeClass("on");
                    }
                });
        $('dt').click(
                function () {
                    //如果当前标题下的dd关闭
                    if ($(this).next("dd").css("display") == "none") {
                        //关闭所有dd
                        $("dd").slideUp("fast");
                        //移除所有dt的新css
                        $("dt").removeClass("on");
                        //打开当前dt下的dd
                        $(this).next("dd").slideDown("fast");
                        //给当前dt加新css
                        $(this).addClass("on");
                    }
                    else {
                        //关闭当前标题下的dd
                        $(this).next("dd").slideUp("fast");
                        //移除当前dt的新css
                        $(this).removeClass("on");

                    }
                }) ;
    })      ;
</script>
