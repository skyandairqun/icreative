<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        <g:layoutTitle default="Designed by icreative"/>
    </title>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'style.css')}"/>
    <g:javascript src="jquery-1.2.6.pack.js"/>
    <g:javascript src="jquery.min.js"/>
    <g:javascript src="jquery.backgroundpos.js"/>
    <g:javascript src="icreativemenu.js"/>
    <g:layoutHead/>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-44824022-1', 'videotek.com.hk');
        ga('send', 'pageview');

    </script>

</head>

<body>
<div id="wrap">
    <g:render template="/layouts/header"/>
    <div class="center_content cf">
        <div class="left_content">
            <g:layoutBody/>

        </div>
        <g:render template="/layouts/right"/>
        <div class="clear"></div>
    </div>

    <div class="clear"></div>
    <g:render template="/layouts/footer"/>
</div>
</body>
<script type="text/javascript">

    var tabber1 = new Yetii({
        id: 'demo'
    });

</script>
</html>