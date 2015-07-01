<%--
  Created by IntelliJ IDEA.
  User: gunner
  Date: 6/3/15
  Time: 1:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width"/>
    <title>Register User</title>
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
<!--
<div id="subheader" class="blogstyle">
	<div class="row">
		<div class="eight columns">
			<p class="bread leftalign">
				 You are here: <a href="index.html"> Home</a> / <a href="elements.html">Elements</a>
			</p>
		</div>
		<div class="four columns">
			<div class="row collapse">
				<div class="ten mobile-three columns">
					<input type="text" class="nomargin" placeholder="Search...">
				</div>
				<div class="two mobile-one columns">
					<a href="#" class="postfix button expand">Go</a>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="hr">
</div>
-->
<!-- CONTENT
================================================== -->

<div class="row">
    <hr>
    <!-- FORMS-->
    <div class="seven columns">
        <h5>Register User</h5>
        <form method="post" action="/register" >
            <fieldset>
                <legend>Register User</legend>
                <div class="row">
                    <div class="five columns">
                        <label>First Name</label>
                        <input type="text" class="smoothborder" name="firstname" placeholder="First Name"/>
                        <label>Last Name</label>
                        <input type="text" class="smoothborder" name="lastname" placeholder="Last Name"/>
                        <label>Gender</label>
                        <input type="text" class="smoothborder" name="gender" placeholder="Gender"/>
                        <label>Email</label>
                        <input type="text" class="smoothborder" name="email" placeholder="Email"/>
                        <label>Password</label>
                        <input type="password" class="smoothborder" name="password" placeholder="password"/>
                        <label>Address</label>
                        <input type="text" class="smoothborder" placeholder="Street (e.g. 123 Siphal Road)"/>
                        <div class="row">
                            <div class="eight columns">
                                <input type="text" placeholder="City" class="smoothborder"/>
                            </div>
                            <div class="eight columns">
                                <input type="text" placeholder="District" class="smoothborder"/>
                            </div>
                        </div>
                        <label>Home/Office Phone</label>
                        <input type="text" class="smoothborder" name="landlinephone"/>
                        <label>Mobile No.</label>
                        <input type="text" class="smoothborder" name="mobilephone"/>

                    </div>
                </div>
                <input type="submit" id="submit" class="readmore" value="Submit">
                <input type="reset" id="reset" class="readmore" value="Reset">
                <label></label>
            </fieldset>
        </form>
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
            &copy;<span class="small"> Copyright 2015 Auto Mobile </span>
            Online Store</div>
        <div class="six columns">
            <span class="small floatright"> Kathmandu, Nepal</span>
        </div>
    </div>
</div>
<!-- JAVASCRIPTS
================================================== -->
<!-- Javascript files placed here for faster loading -->
<script src="javascripts/foundation.min.js"></script>
<script src="javascripts/jquery.easing.1.3.js"></script>
<script src="javascripts/elasticslideshow.js"></script>
<script src="javascripts/jquery.carouFredSel-6.0.5-packed.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
</body>
</html>
