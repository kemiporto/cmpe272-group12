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
            
            
        <div id="iterateEffects" class="container" style="max-width: 1000px">
            <!-- Tabs BODY section -->
            <ul class="nav nav-tabs">
            <li class="active"><a>Home</a></li>
            <li><a>Water Usage</a></li>
            <li><a>Save Water</a></li>
            <li><a>Read Your Water Bill</a></li>
            <li><a>About Us</a></li>
            <script>
                    $('#myTab a').click(function (e) {
                            e.preventDefault();
                            $(this).tab('show');
                    });
            </script>
            </ul>     
        </div>
    
    
<body style="background-color:#ffffff">

        <div id="pt-main" class="pt-perspective">
                <div class="pt-page pt-page-1"><%@ include file="Home.jsp" %></div>
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