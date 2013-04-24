<%--
  Created by IntelliJ IDEA.
  User: hoshi~
  Date: 4/25/13
  Time: 12:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>$Username @ RinGo</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

<!-- <link rel="stylesheet" type="text/css" href="css/normalize.css"> -->
<link rel="stylesheet" type="text/css" href="css/fonts/fonts.css">
<link rel="stylesheet" type="text/css" href="css/metro-ui/modern.css">
<!-- <link rel="stylesheet" type="text/css" href="css/metro-ui/theme-dark.css"> -->
<link rel="stylesheet" type="text/css" href="css/metro-ui/modern-responsive.css">
<link rel="stylesheet" type="text/css" href="css/ringo-main.css">
<link rel="stylesheet" type="text/css" href="css/ringo/ui.css">

<style type="text/css">
        /*
         * Non-responsive rules
         */

    .page {
        border: none !important;
        outline: none !important;
    }
    .page.fill { padding: 8px; }
    .page.snapped {
        text-align: center;
        position: absolute;
        left: 0;
        top: 0;
    }

    #logo {
        display: inline-block;
        background-position: center center;
    }
    #logo * { display: none; }

    .app-bar ul { padding: 0; }
    .app-bar ul li {
        display: inline-block;
        padding: 0 4px;
    }

    #form-login { width: 100%; }
    #form-login table {
        width: auto;
        margin: 0 auto;
    }
    #form-login table tbody tr th:not([colspan]) { text-align: left; }

    .alt-login > a > i { font-size: 24pt; }

        /*
         * Metro UI CSS
         * (c) 2012-2013 by Sergey Pimenov
         * Licensed under the MIT License and Commercial
         *
         * Responsive-1200.less
         *
         */
        /* Large desktop */
        /*
        @media (min-width: 1200px) {
            #logo {
                background: url('./../img/ringo-logo-trans-72dpi.png') no-repeat !important;
                width: 288px !important;
                height: 216px !important;
            }


        }
        @media (min-width: 980px) {
            #logo {
                background: url('./../img/ringo-logo-trans-72dpi.png') no-repeat !important;
                width: 288px !important;
                height: 216px !important;
            }
        }
        */

        /*
         * Responsive rules
         */
    @media (min-width: 950px) {
        #logo {
            background: url('./img/ringo-logo-trans-72dpi.png') no-repeat !important;
            width: 288px !important;
            height: 216px !important;
        }

        .page.snapped .page-header .page-header-content { height: 200px !important; }
        .page { margin-bottom: 108px !important; }

        .app-bar {
            height: 64px !important;
            min-height: 64px !important;
        }
    }
    @media (min-width: 700px) and (max-width: 949px) {
        #logo {
            background: url('./img/ringo-logo-trans-36dpi.png') no-repeat !important;
            width: 144px !important;
            height: 108px !important;
        }

        div, span, a, p, td, th, input, button, select { font-size: 10pt !important; }

        body { padding-left: 0 !important; }

        #form-login input[type="text"],
        #form-login input[type="password"] { width: 100px; }

        .page.snapped .page-header .page-header-content { height: 100px !important; }
        .page.snapped { width: 25% !important; }
        .page.fill {
            width: 75% !important;
        }

        .app-bar {
            height: 64px !important;
            min-height: 64px !important;
        }
    }
    @media (min-width: 300px) and (max-width: 699px) {
        #logo {
            background: url('./img/ringo-logo-trans-36dpi.png') no-repeat !important;
            width: 144px !important;
            height: 108px !important;
        }

        div, span, a, p, td, th, input, button, select {
            font-size: 8pt !important;
        }

        #form-login input[type="text"],
        #form-login input[type="password"] { width: 100px; }

        .page.snapped .page-header .page-header-content { height: 100px !important; }
        .page.snapped {
            width: 25% !important;
            padding: 2px 2px 2px 6px;
        }
        .page.fill .page-header .page-header-content { height: 125px !important; }
        .page.fill {
            width: 75% !important;
            padding: 2px 6px 2px 2px;
        }

        .app-bar {
            height: 64px !important;
            min-height: 64px !important;
        }

        #form-login table {
            display: block !important;
            margin: 0 auto !important;
        }
        #form-login table tbody {
            width: 100% !important;
        }
        #form-login table tbody tr {
            display: block !important;
            width: 100% !important;
            border: none;
        }
        #form-login table tbody tr > * {
            display: list-item !important;
            list-style-type: none;
            width: 100% !important;
        }
    }
</style>

<!-- JavaScript extensions -->
<script src="js/core/js-ext.js" type="text/javascript"></script>

<!-- jQuery Initialize -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"
        type="text/javascript"></script>
<script type="text/javascript">
    <!--
    window.jQuery || document.write(
            '<script src="js/vendor/jquery-1.8.2.min.js" type="text/javascript"><\/script>'
    );
    // -->
</script>

<!-- jQuery Plugins-->
<script src="js/vendor/jquery.unevent.js" type="text/javascript"></script>
<script src="js/vendor/jquery.mousewheel.min.js" type="text/javascript"></script>
<script src="js/core/plugins.js" type="text/javascript"></script>

<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
<script type="text/javascript">
    <!--
    var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
    (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
        g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
        s.parentNode.insertBefore(g,s)}(document,'script'));
    // -->
</script>

<!-- Other JavaScript libraries -->
<script src="js/vendor/modernizr-2.6.2.min.js" type="text/javascript"></script>

<!-- Metro UI JavaScript libraries -->
<!--
<script src="js/metro-ui/dropdown.js" type="text/javascript"></script>
<script src="js/metro-ui/tile-slider.js" type="text/javascript"></script>
<script src="js/metro-ui/start-menu.js" type="text/javascript"></script>
<script src="js/metro-ui/tile-drag.js" type="text/javascript"></script>
-->

<!-- RinGo core libraries -->
<script src="js/core/ringo-base.js" type="text/javascript"></script>
</head>
<body class="ringocss metrouicss" lang="en-PH">
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->
<div class="page snapped menu-panel">
    <div class="page-header">
        <div class="page-header-content">
            <a href="#!" id="logo">
                <h1>RinGo</h1>
            </a>
        </div>
    </div>

    <div class="page-region">
        <div class="page-region-content">
            <form name="login" action="<c:url value="j_spring_security_check" />" method="POST" id="form-login">



                <table>
                    <tbody>
                    <tr>
                        <th><label for="login">Login</label></th>
                        <td><input type="text" id="login" name="j_username" placeholder="Login"></td>

                    </tr>
                    <tr>
                        <th><label for="pass">Password</label></th>
                        <td><input type="password" id="pass" name="j_password" placeholder="Password"></td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <button class="bg-color-ringo fg-color-white" name="submit" type="submit" value="submit">
                                <i class="ringo-icon square"></i> Submit
                            </button>
                        </th>
                    </tr>
                    <tr>
                        <th><label>Alternate login</label></th>
                        <td class="alt-login">
                            <a href="#!" title="Facebook login"><i class="ringo-icon facebook"></i></a>
                            <a href="#!" title="Twitter login"><i class="ringo-icon twitter"></i></a>
                            <a href="#!" title="Google+ login"><i class="ringo-icon google"></i></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>

<div class="page secondary fill">
    <div class="page-header">
        <div class="page-header-content">
            <h2>RinGo Home Page</h2>
        </div>
    </div>
    <div class="page-region">
        <div class="page-region-content">
            <article>
                <p>
                    Hello!!! Content goes here. Blah blah blah blah.
                </p>
                <p>
                    Don't worry. This is left aligned. I love cats. And <strong>catgirls</strong>.
                    This is my dummy text. Seriously, you have to be more intelligent than a cat
                    doing programming to actually read dummy text.
                </p>
                <p>
                    Can your cat do programming? If not, try calling ConCat Programming
                    Company now! Ranging from easy "Hello world" programs to smashing
                    real-world number-crunching colossal systems, it is guaranteed that your
                    cat can do coding <strong>PERFECTLY</strong> in
                    <strong><em>NO TIME</em></strong>. Dial <abbr
                        title="+63 939 481 37 92">this
                    number</abbr>
                    directly to
                    your
                    phone and let your cat do the talking! <em>NOTE: we use electric
                    guitars and high-power amps to
                    communicate with cats. We take
                    all information provided by your
                    cat as confidential. We are not
                    liable for anything going
                    wrong in your part. And if
                    you're taking your cat to
                    us, be sure that it's
                    <strong>potty-trained</strong>.</em>
                </p>
            </article>
        </div>
    </div>
</div>

<div class="app-bar fg-color-white">
    Copyright &copy; <a href="#!">awkwardusername</a> and <a href="#!">Temoto-kun</a>,
    2013.
    All
    Rights
    Reserved.
    <ul>
        <li><a href="#!">Help</a></li>
        <li><a href="#!">About</a></li>
        <li>
            <label for="lang"><a href="#!">Language</a></label>
            <select id="lang">
                <option value="en-PH" lang="en-PH">English (Philippines)</option>
                <option value="en-UK" lang="en-US">English (United States)</option>
                <option value="en-US" lang="en-UK">English (United Kingdom)</option>
                <option value="ja-JP" lang="ja-JP">&#x65E5;&#x672C;&#x8A9E;</option>
                <option value="1337">1337</option>
            </select>
        </li>
    </ul>
</div>

<!--
<div class="page secondary fixed-header">
<div class="page-header">
    <div class="page-header-content">
        <div class="user-login" data-role="dropdown">
            <a>
                <div class="name">
                    <span class="first-name">$Name.First</span>
                    <span class="last-name">$Name.Last</span>
                </div>
                <div class="avatar">
                    <i class="icon-user"></i>
                </div>
            </a>
            <ul class="dropdown-menu">
                <li><a href="#!">Settings</a></li>
                <li><a href="#!">Help</a></li>
                <li class="divider"></li>
                <li><a href="#!">Logout</a></li>
            </ul>
        </div>

        <h1 id="username">$Username</h1>
        <div id="date-scroller">
        </div>
    </div>
</div>

<div class="page-region">
<div id="content" class="page-region-content tiles">
<div class="tile-group tile-drag">
    <div class="tile icon">
        <div class="tile-content">
            <i class="icon-calculate"></i>
        </div>
        <div class="brand">
            <span class="name">Calculator</span>
        </div>
    </div>



    <a target="_blank" id="qq" href="/" onclick="console.log('clicked')" class="tile image outline-color-green">
        <div class="tile-content">
            <img src="images/myface.jpg" alt="">
        </div>
    </a>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/Mail128.png"/>
        </div>
        <div class="brand">
            <div class="badge">10</div>
            <div class="name">Mail</div>
        </div>
    </div>

    <div class="tile bg-color-orangeDark icon">
        <b class="check"></b>
        <div class="tile-content">
            <img src="images/Video128.png" alt="" />
        </div>
        <div class="brand">
            <span class="name">Video</span>
        </div>
    </div>

    <div class="tile double image">
        <div class="tile-content">
            <img src="images/5.jpg" alt="" />
        </div>
        <div class="brand">
            <span class="name">Pictures</span>
            <div class="badge bg-color-orange">5</div>
        </div>
    </div>

    <div class="tile bg-color-green icon">
        <div class="tile-content">
            <img src="images/Market128.png"/>
        </div>
        <div class="brand">
            <span class="name">Store</span>
            <span class="badge">6</span>
        </div>
    </div>

    <div class="tile bg-color-red icon">
        <div class="tile-content">
            <img src="images/Music128.png" alt="" />
        </div>
        <div class="brand">
            <span class="name">Music</span>
        </div>
    </div>

    <div class="tile double bg-color-blueDark">
        <div class="tile-content">
            <img src="images/michael.jpg" class="place-left"/>
            <h3 style="margin-bottom: 5px;">michael_angiulo</h3>
            <p>
                I just saw Thor last night. It was awesome! I think you'd love it.
            </p>
            <h5>RT @julie_green</h5>

        </div>
        <div class="brand">
            <span class="name">Tweet@rama</span>
        </div>
    </div>

    <div class="tile bg-color-darken icon">
        <div class="tile-content">
            <img src="images/YouTube128.png" alt="" />
        </div>
        <div class="brand">
            <span class="name">YouTube</span>
        </div>
    </div>

    <div class="tile double bg-color-green" data-role="tile-slider" data-param-period="3000">
        <div class="tile-content">
            <h2>mattberg@live.com</h2>
            <h5>Re: Wedding Annoucement!</h5>
            <p>
                Congratulations! I'm really excited to celebrate with you all. Thanks for...
            </p>
        </div>
        <div class="tile-content">
            <h2>tina@live.com</h2>
            <h5>Re: Wedding Annoucement!</h5>
            <p>
                Huh! Waw!!! I'm really excited to celebrate with you all. Thanks for...
            </p>
        </div>
        <div class="brand">
            <div class="badge">12</div>
            <img class="icon" src="images/Mail128.png"/>
        </div>
    </div>
    <div class="tile double image-slider" data-role="tile-slider" data-param-period="5000" data-param-direction="left">
        <div class="tile-content">
            <img src="images/1.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/2.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/3.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/4.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/5.jpg" alt="">
        </div>
    </div>

</div>

<div class="tile-group tile-drag">
    <div class="tile image outline-color-green">
        <div class="tile-content">
            <img src="images/myface.jpg" alt="">
        </div>
    </div>
</div>

<div class="tile-group tile-drag">
    <div class="tile bg-color-blue icon">
        <div class="tile-content">
            <img src="images/InternetExplorer128.png"/>
        </div>
        <div class="brand">
            <span class="name">Internet Explorer</span>
        </div>
    </div>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/excel2013icon.png"/>
        </div>
        <div class="brand">
            <span class="name">Excel 2013</span>
        </div>
    </div>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/word2013icon.png"/>
        </div>
        <div class="brand">
            <span class="name">Word 2013</span>
        </div>
    </div>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/onenote2013icon.png"/>
        </div>
        <div class="brand">
            <span class="name">OneNote 2013</span>
        </div>
    </div>
    <div class="tile double image-set">
        <div class="tile-content">
            <img src="images/1.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/2.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/3.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/4.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/5.jpg" alt="">
        </div>
        <div class="brand">
            <span class="name">Photos</span>
        </div>
    </div>
</div>

<div class="tile-group">
    <div class="tile double image">
        <div class="tile-content">
            <img src="images/4.jpg" alt="" />
        </div>
        <div class="brand bg-color-orange">
            <img class="icon" src="images/Rss128.png"/>
            <p class="text">This is a desert eagle. He is very hungry and angry bird.</p>
            <div class="badge">10</div>
        </div>
    </div>

    <div class="tile bg-color-blue icon">
        <div class="tile-content">
            <img src="images/InternetExplorer128.png"/>
        </div>
        <div class="brand">
            <span class="name">Internet Explorer</span>
        </div>
    </div>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/excel2013icon.png"/>
        </div>
        <div class="brand">
            <span class="name">Excel 2013</span>
        </div>
    </div>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/word2013icon.png"/>
        </div>
        <div class="brand">
            <span class="name">Word 2013</span>
        </div>
    </div>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/onenote2013icon.png"/>
        </div>
        <div class="brand">
            <span class="name">OneNote 2013</span>
        </div>
    </div>
</div>

<div class="tile-group tile-drag">
    <div class="tile double image">
        <div class="tile-content">
            <img src="images/4.jpg" alt="" />
        </div>
        <div class="brand bg-color-orange">
            <img class="icon" src="images/Rss128.png"/>
            <p class="text">This is a desert eagle. He is very hungry and angry bird.</p>
            <div class="badge">10</div>
        </div>
    </div>

    <div class="tile bg-color-blue icon">
        <div class="tile-content">
            <img src="images/InternetExplorer128.png"/>
        </div>
        <div class="brand">
            <span class="name">Internet Explorer</span>
        </div>
    </div>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/excel2013icon.png"/>
        </div>
        <div class="brand">
            <span class="name">Excel 2013</span>
        </div>
    </div>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/word2013icon.png"/>
        </div>
        <div class="brand">
            <span class="name">Word 2013</span>
        </div>
    </div>

    <div class="tile icon">
        <div class="tile-content">
            <img src="images/onenote2013icon.png"/>
        </div>
        <div class="brand">
            <span class="name">OneNote 2013</span>
        </div>
    </div>
</div>

<div class="tile-group">
    <div class="tile quadro double-vertical image-set">
        <div class="tile-content">
            <img src="images/1.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/2.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/3.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/4.jpg" alt="">
        </div>
        <div class="tile-content">
            <img src="images/5.jpg" alt="">
        </div>
        <div class="brand">
            <span class="name">Photos</span>
        </div>
    </div>
</div>
</div>
</div>
</div>
-->
</body>
</html>
