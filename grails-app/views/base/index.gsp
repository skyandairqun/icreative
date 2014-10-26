<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>welcome to videotek</title>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'style.css')}"/>
    <g:javascript src="jquery-1.2.6.pack.js"/>
    <g:javascript src="jquery.min.js"/>
    <g:javascript src="jquery.backgroundpos.js"/>
    <g:javascript src="icreativemenu.js"/>
</head>


<body>
<div id="index_home">
    <h1>
        <a href="#" title=""><g:img uri="/images/logo.png" alt="" title="" border="0"/></a>
    </h1>
    <div id="index_show">
        <ul>
            <g:each in='${session.getAttribute("homeViewerList")}' status="i" var='homeViewer'>
                <li> <a href='${fieldValue(bean: homeViewer, field: "perlink")}'
                        target='${fieldValue(bean: homeViewer, field: "target")}'>
                    <img src='${session.getAttribute("mainSysConfig")?.absolute_url}/${fieldValue(bean: homeViewer, field: "picPath")}'
                         title='${fieldValue(bean: homeViewer, field: "view_desc")}'
                         alt='${fieldValue(bean: homeViewer, field: "view_desc")}'/></a>  </li>
            </g:each>
        </ul>
    </div>
    <div id="menu">
        <ul id="index_menu">
            <g:each in="${session.getAttribute("levelTopMenuMapData")}" status="i" var="topMenu">
                <li>
                    <a
                       href=" ${session.getAttribute("mainSysConfig")?.absolute_url}/${fieldValue(bean: topMenu, field: "perlink")}">${fieldValue(bean: topMenu, field: "display_value")}</a>
                </li>
            </g:each>
        </ul>
    </div>
</div>
<script>
    $(function() {
//        $('.box_skitter_large').skitter({
//            numbers_align: 'center',
//            animation:"fade",
//            stop_over: false,
//            interval: 3000,
//			easing_default:"easeOutQuad",
//            hideTools: true
//        });
        var $epl = $('#index_show').find('li');
        var l=$epl.length-1;
        function ec(i){
            var $ep=$epl.eq(i);
            if(i == l)
                i = -1;
            i +=1;
            $ep.css('z-index','1');
            $epl.eq(i).css('z-index','99').delay(2000).fadeIn(999,function(){
                $ep.hide();
                ec(i)
            })
        }
        ec(0);
        $("#index_menu").delay(99).animate({
            top:0,
            opacity:"show"
        },"slow","easeOutQuad",function(){
            $("h1").animate({
                top:0,
                opacity:1
            },"slow","easeOutQuad")
        })
    });
</script>
</body>
</html>