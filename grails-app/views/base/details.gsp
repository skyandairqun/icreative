<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 13-1-1
  Time: 下午3:38
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Product details here</title>
</head>

<body>
<div class="left_content">
    <div class="crumb_nav"><a href="index.htm">home</a> &gt;&gt; product name</div>

    <div class="title"><span class="title_icon"><g:img dir="images" file="bullet1.jpg" alt=""
                                                       title=""/></span>Product name</div>

    <div class="feat_prod_box_details">
        <div class="prod_img"><a href="details.htm"><g:img dir="images" file="prod1.gif" alt="" title=""
                                                           border="0"/></a> <br/>
            <br/>
            <a href="../images/big_pic.jpg" rel="lightbox"><g:img dir="images" file="zoom.gif" alt="" title=""
                                                                  border="0"/></a></div>

        <div class="prod_det_box">
            <div class="box_top"></div>

            <div class="box_center">
                <div class="prod_title">Details</div>

                <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.<br/>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.
                </p>

                <div class="price"><strong>PRICE:</strong> <span class="red">100 $</span></div>

                <div class="price"><strong>COLORS:</strong> <span class="colors"><g:img dir="images" file="color1.gif"
                                                                                        alt="" title=""
                                                                                        border="0"/></span> <span
                        class="colors"><g:img dir="images" file="color2.gif" alt="" title="" border="0"/></span> <span
                        class="colors"><g:img dir="images" file="color3.gif" alt="" title="" border="0"/></span></div>
                <a href="details.htm" class="more"><g:img dir="images" file="order_now.gif" alt="" title=""
                                                          border="0"/></a>

                <div class="clear"></div>
            </div>

            <div class="box_bottom"></div>
        </div>

        <div class="clear"></div>
    </div>

    <div id="demo" class="demolayout">
        <ul id="demo-nav" class="demolayout">
            <li><a class="active" href="http://www.865171.cntab1">More details</a></li>
            <li><a class="" href="http://www.865171.cntab2">Related books</a></li>
        </ul>

        <div class="tabs-container">
            <div style="display: block;" class="tab" id="tab1">
                <p class="more_details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                <ul class="list">
                    <li><a href="http://www.865171.cn">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                    <li><a href="http://www.865171.cn">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                    <li><a href="http://www.865171.cn">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                    <li><a href="http://www.865171.cn">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                </ul>

                <p class="more_details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
            </div>

            <div style="display: none;" class="tab" id="tab2">
                <div class="new_prod_box"><a href="details.htm">product name</a>

                    <div class="new_prod_bg"><a href="details.htm"><g:img dir="images" file="thumb1.gif" alt="" title=""
                                                                          class="thumb" border="0"/></a></div>
                </div>

                <div class="new_prod_box"><a href="details.htm">product name</a>

                    <div class="new_prod_bg"><a href="details.htm"><g:img dir="images" file="thumb2.gif" alt="" title=""
                                                                          class="thumb" border="0"/></a></div>
                </div>

                <div class="new_prod_box"><a href="details.htm">product name</a>

                    <div class="new_prod_bg"><a href="details.htm"><g:img dir="images" file="thumb3.gif" alt="" title=""
                                                                          class="thumb" border="0"/></a></div>
                </div>

                <div class="new_prod_box"><a href="details.htm">product name</a>

                    <div class="new_prod_bg"><a href="details.htm"><g:img dir="images" file="thumb1.gif" alt="" title=""
                                                                          class="thumb" border="0"/></a></div>
                </div>

                <div class="new_prod_box"><a href="details.htm">product name</a>

                    <div class="new_prod_bg"><a href="details.htm"><g:img dir="images" file="thumb2.gif" alt="" title=""
                                                                          class="thumb" border="0"/></a></div>
                </div>

                <div class="new_prod_box"><a href="details.htm">product name</a>

                    <div class="new_prod_bg"><a href="details.htm"><g:img dir="images" file="thumb3.gif" alt="" title=""
                                                                          class="thumb" border="0"/></a></div>
                </div>

                <div class="clear"></div>
            </div>
        </div>
    </div>

    <div class="clear"></div>
</div>
<!--end of left content-->
</body>
</html>