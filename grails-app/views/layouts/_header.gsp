<%@ page import="org.springframework.util.CollectionUtils" %>
<div class="header">

      <div id="menu">
        <div class="logo"><a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}">
            <g:img uri="/images/logo.png" alt="" title="" border="0"/></a>

              <table>

                  <tr><td>
                      <span id="headerSpan" >中文版 &nbsp;&nbsp; <a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}">ENGLISH</a></span><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_5861967'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s5.cnzz.com/stat.php%3Fid%3D5861967%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>
                  </td>
                  </tr>

                  <tr><td>
                  <div>
                  <script>
                      (function() {
                          var cx = '007534160538296053162:vgipoi0rbpm';
                          var gcse = document.createElement('script');
                          gcse.type = 'text/javascript';
                          gcse.async = true;
                          gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                                  '//www.google.com/cse/cse.js?cx=' + cx;
                          var s = document.getElementsByTagName('script')[0];
                          s.parentNode.insertBefore(gcse, s);
                      })();
                  </script>
                  <gcse:search></gcse:search>
              </div></td></tr>
              </table>
        </div>


        <div id="headerdiv" >
             <img src="${session.getAttribute("mainSysConfig")?.absolute_url}/images/c1.jpg" id="banner" alt="">
            <div class="headerSmallDiv" id='headerSmallDiv'>
                <g:if test="${request.getRequestURI().indexOf("product")>0}">
                    <g:set var="pic_type" value="Product"/>
                </g:if>
                <g:if test="${request.getRequestURI().indexOf("category")>0}">
                    <g:set var="pic_type" value="Product"/>
                </g:if>
                <g:elseif test="${request.getRequestURI().indexOf("company_introduction")>0}">
                    <g:set var="pic_type" value="Company"/>
                </g:elseif>
                <g:else>
                    <g:set var="pic_type" value="Others"/>
                </g:else>
                <g:each in='${session.getAttribute("headerSmallList")}' status="i" var='rightsmall'>
                    <g:if test="${pic_type.equals(fieldValue(bean: rightsmall, field: "type").toString())}" >

                    <a href='${fieldValue(bean: rightsmall, field: "perlink")}'
                       target='${fieldValue(bean: rightsmall, field: "target")}'>
                        <img style="display: none;width: 250px;height: 200px" src='${session.getAttribute("mainSysConfig")?.absolute_url}/${fieldValue(bean: rightsmall, field: "picPath")}'
                             title='${fieldValue(bean: rightsmall, field: "view_desc")}%{--+${pic_type}+${request.getRequestURI().indexOf("product")>0}--}%'
                             alt='${fieldValue(bean: rightsmall, field: "view_desc")}+${pic_type}'/></a>

                    </g:if>
                </g:each>

            </div>

        </div>
          <ul id="menuul">
              <g:each in="${session.getAttribute("levelTopMenuMapData")}" status="i" var="topMenu">
                  <li>
                      <a class="drop"
                         href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${fieldValue(bean: topMenu, field: "perlink")}">${fieldValue(bean: topMenu, field: "display_value")}</a>
                      <g:if test="${topMenu?.menus}">
                          <div class="dropdown_1column align_right">
                              <div class="div">
                                  <ul>
                                      <g:each in='${topMenu.menus}' status="j" var="childMenu">
                                          <a href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${fieldValue(bean: childMenu, field: "perlink")}">${fieldValue(bean: childMenu, field: "display_value")}</a>
                                      </g:each>
                                  </ul>
                              </div>
                          </div>
                      </g:if>
                  </li>
              </g:each>

              %{--<auth:ifLoggedIn>
                  <li>
                      <a class="drop" href="#">Maintain</a>
                      <div class="
                       align_right">
                          <div class="div">
                              <ul class="simple">
                                  <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">
                                      <g:if test='${c.name != "Authentication" && c.name != "Base" && c.name != "Paypal" && c.name != "OpenFileManagerConnector"}'>
                                          <li class="controller"><g:link
                                                  controller="${c.logicalPropertyName}">${c.name}</g:link></li>
                                      </g:if>
                                  </g:each>
                              </ul>
                          </div>
                      </div>
                  </li>
              </auth:ifLoggedIn>--}%
          </ul>
     %{--   <span id="rightPicPanlMenu">
            <img src=" ${session.getAttribute("mainSysConfig")?.absolute_url}/images/prev.gif" alt="prev" onclick="javascript:clickPrev()" title="">
            <img src="${session.getAttribute("mainSysConfig")?.absolute_url}/images/next.gif" style="float:right" alt="next" onclick="javascript:clickNext()" title="">
            </span>--}%
          </div>
</div>

<script type="text/javascript">

    var $epl;
    var l;
    var il=0;
    function ec(i){
        var $ep=$epl.eq(i);
        if(i == l)
            i = -1;
        i +=1;
        il=i;
        $ep.css('z-index','1');
        $epl.eq(i).css('z-index','99').delay(2000).fadeIn(999,function(){
            $ep.hide();
            ec(i)
        })
    }
    $(function(){
        $epl = $('.headerSmallDiv a').hide();
        $('.headerSmallDiv img').show();
        l=$epl.length-1;
        ec(il);
    })

    $(function(){
        $("#menuul a").last().css("margin","0")
        count = $("#banner_list a").length;
        total = $(".headerSmallDiv img").length;
    })

</script>