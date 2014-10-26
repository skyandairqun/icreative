<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 13-1-1
  Time: 下午3:42
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to bizsub home site</title>
</head>

<body>
<div class="left_content">
    <div class="title"><span class="title_icon"><g:img dir="images" file="bullet1.jpg" alt=""
                                                       title=""/></span>My account</div>

    <div class="feat_prod_box_details">
        <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>

        <div class="contact_form">
            <div class="form_subtitle">login into your account</div>

            <form name="register" action="http://www.865171.cn">
                <div class="form_row">
                    <label class="contact"><strong>Username:</strong></label>
                    <input type="text" class="contact_input"/>
                </div>

                <div class="form_row">
                    <label class="contact"><strong>Password:</strong></label>
                    <input type="text" class="contact_input"/>
                </div>

                <div class="form_row">
                    <div class="terms">
                        <input type="checkbox" name="terms"/>
                        Remember me</div>
                </div>

                <div class="form_row">
                    <input type="submit" class="register" value="login"/>
                </div>
            </form>
        </div>
    </div>

    <div class="clear"></div>
</div>
<!--end of left content-->
</body>
</html>