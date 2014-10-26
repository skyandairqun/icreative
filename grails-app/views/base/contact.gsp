<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 13-1-1
  Time: 下午3:36
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Contact us</title>
</head>

<body>
<div class="left_content">
    <div class="title"><span class="title_icon"><g:img dir="images" file="bullet1.jpg" alt=""
                                                       title=""/></span>Contact Us</div>

    <div class="feat_prod_box_details">
        <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>

        <div class="contact_form">
            <div class="form_subtitle">all fields are requierd</div>

            <div class="form_row">
                <label class="contact"><strong>Name:</strong></label>
                <input type="text" class="contact_input"/>
            </div>

            <div class="form_row">
                <label class="contact"><strong>Email:</strong></label>
                <input type="text" class="contact_input"/>
            </div>

            <div class="form_row">
                <label class="contact"><strong>Phone:</strong></label>
                <input type="text" class="contact_input"/>
            </div>

            <div class="form_row">
                <label class="contact"><strong>Company:</strong></label>
                <input type="text" class="contact_input"/>
            </div>

            <div class="form_row">
                <label class="contact"><strong>Message:</strong></label>
                <textarea class="contact_textarea"></textarea>
            </div>

            <div class="form_row"><a href="http://www.865171.cn" class="contact">send</a></div>
        </div>
    </div>

    <div class="clear"></div>
</div>
<!--end of left content-->
</body>
</html>