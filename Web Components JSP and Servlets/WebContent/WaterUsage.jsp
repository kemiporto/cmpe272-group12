<html>
    <link href="./css/bootstrap.css" rel="stylesheet">
    <head>
    	<script src="js/jquery.js"></script>
        <script type="text/javascript">
            function navigateBack()
            {
                window.history.back();
            }
        </script>
        <script type="text/javascript">
            function getTitleBarNavigation()
            {
                var navigation = [];
                navigation.push( ["<a class='navbar-brand' href='index.jsp' >Home</a>"] );
                return navigation;
            }
        </script>
        
	<title>Visual Slideshow generated by VisualSlideshow.com</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Visual Slideshow, Photo Slide Show, Slideshow Builder" />
	<meta name="description" content="Visual Slideshow created with Visual Slideshow, a free wizard program that helps you easily generate beautiful web slideshow" />
	<!-- Start VisualSlideShow.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="engine/css/slideshow.css" media="screen" />
	<style type="text/css">.slideshow a#vlb{display:none}</style>
	<script type="text/javascript" src="engine/js/mootools.js"></script>
	<script type="text/javascript" src="engine/js/visualslideshow.js"></script>
	<!-- End VisualSlideShow.com HEAD section -->

        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>A Collection of Page Transitions</title>
        <meta name="description" content="A Collection of Page Transitions with CSS Animations" />
        <meta name="keywords" content="page transition, css animation, website, effect, css3, jquery" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/default.css" />
        <link rel="stylesheet" type="text/css" href="css/multilevelmenu.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <link rel="stylesheet" type="text/css" href="css/animations.css" />
        <script src="js/modernizr.custom.js"></script>
    </head>

    <%@ include file="TitleBar.html" %>
    
    
<body style="background-color:#ffffff">  
        
        <div class="container" style="max-width: 1000px">
    
            <!-- Tabs BODY section -->
            <ul id="iterateEffects" class="nav nav-tabs">
            <li><a href="index.jsp">Home</a></li>
            <li class="active"><a href="WaterUsage.jsp">Water Usage</a></li>
            <li><a href="SaveWater.jsp">Save Water</a></li>
            <li><a href="ReadYourBill.jsp">Read Your Water Bill</a></li>
            <li><a href="About.jsp">About Us</a></li>
            <script>
                    $('#myTab a').click(function (e) {
                            e.preventDefault();
                            $(this).tab('show');
                    });
            </script>
            </ul>     
            
            <table class="table table-striped table-bordered table-condensed"
                style="text-align: center; float: center; width: 800;">
            <tr>
                <td>
                <div >
                <body bgcolor=yellow textcolor=black>
                <p style="width: 200; font-size: 30; font-family: Georgia;">California is in a drought state of Emergency.</p>
                </div>
                </td>
                <td>
                <!-- Start VisualSlideShow.com BODY section -->
                <div id="show" class="slideshow">

                <div class="slideshow-images">
                <a href="#"><img id="slide-0" src="data/images/folsom_lake_before_and_after_2.jpg" alt="Folsom Lake Before And After 2" title="Folsom Lake Before And After 2" /></a>
                <a href="#"><img id="slide-1" src="data/images/folsom_lake_before_and_after.jpg" alt="Folsom Lake Before And After" title="Folsom Lake Before And After" /></a>
                <a href="#"><img id="slide-2" src="data/images/lake_oroville_before_and_after_2.jpg" alt="Lake Oroville Before And After 2" title="Lake Oroville Before And After 2" /></a>
                <a href="#"><img id="slide-3" src="data/images/lake_oroville_before_and_after_3.jpg" alt="Lake Oroville Before And After 3" title="Lake Oroville Before And After 3" /></a>
                <a href="#"><img id="slide-4" src="data/images/lake_oroville_before_and_after_4.jpg" alt="Lake Oroville Before And After 4" title="Lake Oroville Before And After 4" /></a>
                <a href="#"><img id="slide-5" src="data/images/lake_oroville_before_and_after.jpg" alt="Lake Oroville Before And After" title="Lake Oroville Before And After" /></a>
                </div>
                <div class="slideshow-thumbnails">
                <ul>
                <li><a href="#slide-0"><img src="data/thumbnails/folsom_lake_before_and_after_2.jpg" alt="Folsom Lake Before And After 2" /></a></li>
                <li><a href="#slide-1"><img src="data/thumbnails/folsom_lake_before_and_after.jpg" alt="Folsom Lake Before And After" /></a></li>
                <li><a href="#slide-2"><img src="data/thumbnails/lake_oroville_before_and_after_2.jpg" alt="Lake Oroville Before And After 2" /></a></li>
                <li><a href="#slide-3"><img src="data/thumbnails/lake_oroville_before_and_after_3.jpg" alt="Lake Oroville Before And After 3" /></a></li>
                <li><a href="#slide-4"><img src="data/thumbnails/lake_oroville_before_and_after_4.jpg" alt="Lake Oroville Before And After 4" /></a></li>
                <li><a href="#slide-5"><img src="data/thumbnails/lake_oroville_before_and_after.jpg" alt="Lake Oroville Before And After" /></a></li>
                </ul>
                </div>
                <a id="vlb" href="http://visualslideshow.com">Flash Slideshow Maker by VisualSlideshow.com v2.0</a>
                </div>
                <!-- End VisualSlideShow.com BODY section -->            
                </td>
            </tr>
            </table>
        </div>
        
        <div class="container" style="max-width: 1000px">
            <table class="table table-striped table-bordered table-condensed"
                style="text-align: center; float: center; width: 800;">
            <tr>
                <td>
                <div >
                    <header style="text-align: left; font-size: 30; font-family: Georgia;">About<header>
                    <p style="width: 210; font-size: 15; font-family: Georgia;">California is facing its worst drought in more than 100 years, and one with no end insight.Conserving water has never been so important.Everyone should do what they can to reduce the water use.</p>
                
                </div>
                </td>
                
                <td>
                <div >
                    <header style="text-align: left; font-size: 30; font-family: Georgia;">About<header>
                    <p style="width: 210; font-size: 15; font-family: Georgia;">California is facing its worst drought in more than 100 years, and one with no end insight.Conserving water has never been so important.Everyone should do what they can to reduce the water use.</p>
                
                </div>
                </td>
                
                <td>
                <div >
                    <header style="text-align: left; font-size: 30; font-family: Georgia;">About<header>
                    <p style="width: 210; font-size: 15; font-family: Georgia;">California is facing its worst drought in more than 100 years, and one with no end insight.Conserving water has never been so important.Everyone should do what they can to reduce the water use.</p>
                
                </div>
                </td>
                
                <td>
                <div >
                    <header style="text-align: left; font-size: 30; font-family: Georgia;">About<header>
                    <p style="width: 210; font-size: 15; font-family: Georgia;">California is facing its worst drought in more than 100 years, and one with no end insight.Conserving water has never been so important.Everyone should do what they can to reduce the water use.</p>
                
                </div>
                </td>
            </tr>
            </table>
        </div>
    
            <div id="pt-main" class="pt-perspective">
                    <div class="pt-page pt-page-1"><h1><span>A collection of</span><strong>Page</strong> Transitions</h1></div>
                    <div class="pt-page pt-page-2"><h1><span>A collection of</span><strong>Page</strong> Transitions</h1></div>
                    <div class="pt-page pt-page-3"><h1><span>A collection of</span><strong>Page</strong> Transitions</h1></div>
                    <div class="pt-page pt-page-4"><h1><span>A collection of</span><strong>Page</strong> Transitions</h1></div>
                    <div class="pt-page pt-page-5"><h1><span>A collection of</span><strong>Page</strong> Transitions</h1></div>
                    <div class="pt-page pt-page-6"><h1><span>A collection of</span><strong>Page</strong> Transitions</h1></div>
            </div>

            <div class="pt-message">
                    <p>Your browser does not support CSS animations.</p>
            </div>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
            <script src="js/jquery.dlmenu.js"></script>
            <script src="js/pagetransitions.js"></script>
</body>                       
	
</html>