<%--
  Created by IntelliJ IDEA.
  User: gunner
  Date: 6/3/15
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width"/>
    <title>Studio Francesca - Premium Theme by WowThemes.net</title>
    <!-- CSS Files-->
    <link rel="stylesheet" href="stylesheets/style.css">

    <link rel="stylesheet" href="stylesheets/skins/blue.css">
    <!-- skin color -->
    <link rel="stylesheet" href="stylesheets/responsive.css">
    <!-- IE Fix for HTML5 Tags -->
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<!-- HIDDEN PANEL
================================================== -->
<div id="panel">
    <div class="row">
        <div class="twelve columns">
            <img src="images/info.png" class="pics" alt="info">
            <div class="infotext">
                Thank you for visiting my theme! Replace this with your message to visitors.
            </div>
        </div>
    </div>
</div>
<p class="slide">
    <a href="#" class="btn-slide"></a>
</p>
<!-- HEADER
================================================== -->
<div class="row">
    <div class="headerlogo four columns">
        <div class="logo">
            <a href="/index">
                <h4>AutoMobile</h4>
            </a>
        </div>
    </div>
    <div class="headermenu eight columns noleftmarg">
        <nav id="nav-wrap">
            <ul id="main-menu" class="nav-bar sf-menu">
                <li class="current">
                    <a href="/index">Home</a>
                    <ul>
                        <li><a href="index2.html">Without slider</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Portofolio</a>
                    <ul>
                        <li><a href="portofolio2.html">2 Columns</a></li>
                        <li><a href="portofolio3.html">3 Columns</a></li>
                        <li><a href="portofolio4.html">4 Columns</a></li>
                        <li><a href="portofoliodetail.html">Project Details</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Blog</a>
                    <ul>
                        <li><a href="blogpage1.html">Blog page style 1</a></li>
                        <li><a href="blogpage2.html">Blog page style 2</a></li>
                        <li><a href="blogpage3.html">Blog page style 3</a></li>
                        <li><a href="blogsinglepost.html">Single post</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Pages</a>
                    <ul>
                        <li><a href="about.html">About us</a></li>
                        <li><a href="services.html">Services</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Features</a>
                    <ul>
                        <li><a href="columns.html">Columns</a></li>
                        <li><a href="elements.html">Elements</a></li>
                        <li><a href="typography.html">Typography</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/contact">Contact</a>
                </li>
                <li>
                    <a href="/register">Register</a>
                </li>
            </ul>
        </nav>
    </div>
</div>
<div class="clear">
</div>

<!-- SUBHEADER
================================================== -->
<div id="subheader">
    <div class="row">
        <div class="twelve columns">
            <p class="left">
                CONTACT US
            </p>
            <p class="right">
                Get in touch today!
            </p>
        </div>
    </div>
</div>
<div class="hr">
</div>
<!-- CONTENT
================================================== -->
<div class="row">
    <!-- GOOGLE MAP IFRAME -->
    <div class="twelve columns">
        <iframe class="gmap" src="https://www.google.com.np/maps/@27.7136905,85.340724,15z?hl=en">
                <!--src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=disney+paris&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=39.371738,86.572266&amp;ie=UTF8&amp;hq=disney&amp;hnear=Paris,+%C3%8Ele-de-France,+France&amp;t=m&amp;fll=48.881877,2.535095&amp;fspn=0.512051,1.352692&amp;st=103241701817924407489&amp;rq=1&amp;ev=zo&amp;split=1&amp;ll=49.027964,2.772675&amp;spn=0.315159,0.585022&amp;z=10&amp;iwloc=D&amp;output=embed">-->
        </iframe>
    </div>
</div>
<div class="row">
    <!-- CONTACT FORM -->
    <div class="twelve columns">
        <div class="wrapcontact">
            <h5>SEND US A MESSAGE</h5>
            <div class="done">
                <div class="alert-box success">
                    Message has been sent! <a href="" class="close">x</a>
                </div>
            </div>
            <form method="post" action="contact.php" id="contactform">
                <div class="form">
                    <div class="six columns noleftmargin">
                        <label>Name</label>
                        <input type="text" name="name" class="smoothborder" placeholder="Your name *"/>
                    </div>
                    <div class="six columns">
                        <label>E-mail address</label>
                        <input type="text" name="email" class="smoothborder" placeholder="Your e-mail address *"/>
                    </div>
                    <label>Message</label>
                    <textarea name="comment" class="smoothborder ctextarea" rows="14" placeholder="Message, feedback, comments *"></textarea>
                    <input type="submit" id="submit" class="readmore" value="Submit">
                </div>
            </form>
        </div>
    </div>

</div>
<div class="hr">
</div>

<!-- FOOOTER
================================================== -->
<div id="footer">
    <footer class="row">
        <p class="back-top floatright">
            <a href="#top"><span></span></a>
        </p>
        <div class="four columns">
            <h1>ABOUT US</h1>
            Our goal is to keep clients satisfied!
        </div>
        <div class="four columns">
            <h1>GET SOCIAL</h1>
            <a class="social facebook" href="#"></a>
            <a class="social twitter" href="#"></a>
            <a class="social deviantart" href="#"></a>
            <a class="social flickr" href="#"></a>
            <a class="social dribbble" href="#"></a>
        </div>
        <div class="four columns">
            <h1 class="newsmargin">NEWSLETTER</h1>
            <div class="row collapse newsletter floatright">
                <div class="ten mobile-three columns">
                    <input type="text" class="nomargin" placeholder="Enter your e-mail address...">
                </div>
                <div class="two mobile-one columns">
                    <a href="#" class="postfix button expand">GO</a>
                </div>
            </div>
        </div>
    </footer>
</div>
<div class="copyright">
    <div class="row">
        <div class="six columns">
            &copy;<span class="small"> Copyright 2015 Your Agency Name</span>
        </div>
        <div class="six columns">
            <span class="small floatright"> Purchase "Studio Francesca" - WowThemes.net</span>
        </div>
    </div>
</div>
<!-- JAVASCRIPTS
================================================== -->
<!-- Javascript files placed here for faster loading -->
<script src="javascripts/foundation.min.js"></script>
<script src="javascripts/formvalidation.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
<script src="javascripts/jquery.tweet.js"></script>
<script src="javascripts/twitterusername.js"></script>

</body>
</html>