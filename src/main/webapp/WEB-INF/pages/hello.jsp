<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>${username} @ RinGo</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <meta name="application-name" content="RinGo">
    <meta name="msapplication-tooltip" content="A simple, lightweight blogging framework written in Java.">
    <meta name="msapplication-navbutton-color" content="#9c6">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/fonts/fonts.css">
    <link rel="stylesheet" type="text/css" href="css/metro-ui/modern.css">
    <!-- <link rel="stylesheet" type="text/css" href="css/metro-ui/theme-dark.css"> -->
    <link rel="stylesheet" type="text/css" href="css/metro-ui/modern-responsive.css">
    <link rel="stylesheet" type="text/css" href="css/ringo/content.css">
    <link rel="stylesheet" type="text/css" href="css/ringo-main.css">
    <link rel="stylesheet" type="text/css" href="css/ringo/ui.css">
    <link rel="shortcut icon" href="favicon.ico">
    <style type="text/css">
        .page .page-header .page-header-content {
            height: 150px;
            min-height: 150px;
        }
        .page.fixed-header .page-region { padding-top: 190px; }

        #date-scroller {
            position: absolute;
            padding: 120px;
        }
        #date-scroller > ul > li { display: inline-block; }
        #date-scroller > ul > li > * {
            display: block;
            line-height: 0.95;
        }
        #date-scroller > ul > li > .day { font-size: 125%; }
        #date-scroller > .year { font-size: 225%; }
        #date-scroller > ul > li > .month { font-size: 100%; }

        .date-container > h2,
        .date-container > h3,
        .date-container > h4 { display: inline-block; }

        .ringocss .tile > .tile-content > p,
        .ringocss .tile > .tile-content span.desc {
            opacity: 0.5;
        }

        .ringocss .charms {
            max-width: 250px;
            min-width: 0 !important;
            width: 0;
        }

        #content-preview > #content-icon {
            font-size: 48px;
        }
    </style>

    <!-- JavaScript extensions -->
    <script src="js/core/js-ext.js" type="text/javascript"></script>

    <!-- jQuery Initialize -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"
            type="text/javascript"></script>
    <script type="text/javascript">
        window.jQuery ||
        document.write(
                '<script src="js/vendor/jquery-1.8.2.min.js" type="text/javascript"><\/script>'
        );
    </script>

    <!-- jQuery Plugins-->
    <script src="js/vendor/jquery.unevent.js" type="text/javascript"></script>
    <script src="js/vendor/jquery.mousewheel.min.js" type="text/javascript"></script>
    <!-- <script src="js/core/plugins.js" type="text/javascript"></script> -->

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
    <script src="js/vendor/metro-ui/dropdown.js" type="text/javascript"></script>
    <script src="js/vendor/metro-ui/tile-slider.js" type="text/javascript"></script>
    <script src="js/vendor/metro-ui/start-menu.js" type="text/javascript"></script>
    <!-- <script src="js/vendor/metro-ui/tile-drag.js" type="text/javascript"></script> -->

    <!-- RinGo core libraries -->
    <script src="js/core/ringo-base.js" type="text/javascript"></script>

    <!-- Event hooks -->
    <script type="text/javascript">
        var r = RinGo.InstanceImpl;

        $(document).ready(function() {
            r.attach("date-scroller", "username", "content", true);
            if(r.getUser() == -1) { // if this is not current logged user's profile
                $("#username").hide();
                $(r.getScroller()).css({
                    fontSize: "250%",
                    lineHeight: "1.0",
                    padding: "40px"
                });
                $(r.getScroller()).find("> .year").css({
                    fontSize: "150%"
                });
            }

            $("#username").css({
                bottom: '-' + $("#" + r.getScroller().id + " > *").css("height")
            });
            $(r.getScroller()).hide();

            console.log("EVENT: RinGo initialization done.")
        });

        $(document).on('scroll', function() {
            r.setScrollerVisible(true);
        });

        $(document).on('scroll', function(e) {
            r.setScrollerVisible(false);
            console.log("EVENT: User scroll done.")
        }, r.getHideDelay()); // getUiObject goes out of scope here.
    </script>
</head>
<body class="ringocss metrouicss">
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
<div class="page secondary fixed-header">
<div class="page-header">
    <div class="page-header-content menu-panel">
        <div class="user-login" data-role="dropdown">
            <a>
                <div class="name">
                    <span class="first-name">$You</span>
                    <span class="last-name">$YourStatus</span>
                </div>
                <div class="avatar">
                    <!--<img src="images/myface.jpg"/>-->
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

        <h1 id="username" class="username">${username}</h1>
        <h2 id="status" class="status">$Status</h2>
        <div id="date-scroller">
        </div>
    </div>
</div>

<div class="page-region">
<div id="content" class="page-region-content tiles">

<script type="text/javascript">
    <!--
    var content = $("#content");
    var today = new Date(2013, 04, 20);
    /*
     $.getJSON("data.json", function(json) {
     globalJson = json;
     });
     */

    $.getJSON("data.json", function(json) {
        var user = json.currentUser;
        var status = json.currentStatus;

        var view = {
            user: json.currentView.user,
            squares: json.currentView.squares
        };

        $(".first-name").html(user);
        $(".last-name").html(status);

        $(".username").html(view.user);
        $(".status").html(view.status);

        content.html('');
        for(var i = today.getDate() - 3; i <= today.getDate() + 3; i++) {
            var curr = new Date(today.getFullYear(), today.getMonth(), i);
            var year = new String(curr.getFullYear());
            var month = curr.getMonth();
            var months = [
                "",
                "January",
                "February",
                "March",
                "April",
                "May",
                "Jun",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December"
            ];
            var date = new String(curr.getDate());
            var dateStr = year + month.pad(2) + date;
            if(view.squares[dateStr] !== undefined) {
                var disp = $('<div class="tile-group tile-drag"></div>');
                var dispDate = $(
                        '<div class="date-container">' +
                                '<h2>' + date + '</h2>' +
                                '<h3>' + months[month] + '</h3>' +
                                '<h4>' + year + '</h4>' +
                                '</div>'
                );
                disp.append(dispDate);

                // TODO: sort squares by time :/
                for(var index in view.squares[dateStr]) {
                    var square = view.squares[dateStr][index];
                    var tile =
                            $('<a class="tile accent' + square.accent + '" href="#!"></a>');
                    var tileContent = $('<div class="tile-content"></div>');
                    var tileInfo = $('<div class="brand"></div>');
                    var tileTitle = $('<span class="name"></span>');
                    var tileBadge = $('<div class="badge"></div>')
                    var tileIcon = $('<i class="ringo-icon ' + square.type + '"></i>');

                    switch(square.size) {
                        case "single": break;
                        case "double": tile.addClass("double"); break;
                    }

                    switch(square.type) {
                        case "text":
                            if(square.title != null) {
                                tileContent.append('<h2>' + square.title + '</h2>');
                                if(square.subtitle != null)
                                    tileContent.append('<h3>' + square.subtitle + '</h3>');
                            }
                            tileContent.append('<p>' + square.content + '</p>');
                            break;
                        case "link":
                            if(square.title != null) {
                                tileContent.append('<h2>' + square.title + '</h2>');
                                if(square.subtitle != null)
                                    tileContent.append('<h3>' + square.subtitle + '</h3>');
                            }
                            tileContent.append('<p>' + square.desc + '</p>');
                            tileTitle.append(square.url);
                            tileInfo.append(tileTitle);
                            break;
                        case "playlist":
                            var list = $('<ul class="unstyled"></ul>');
                            for(var item in square.content) {
                                var itemIcon = $('<i class="ringo-icon"></i>');
                                var listItem = $('<li><i class="ringo-icon '
                                        + square.content[item].type + '"></i> '
                                        + square.content[item].title + '</li>'
                                );
                                if(square.content[item].subtitle !== undefined)
                                    listItem.append('<span class="desc place-right">' +
                                            square.content[item].subtitle +
                                            '</span>'
                                    );
                                list.append(listItem);
                            }
                            tileContent.append(list);
                            tileTitle.append(square.title);
                            tileInfo.append(tileTitle);
                            break;
                    }

                    tileBadge.append(tileIcon);
                    tileInfo.append(tileBadge);
                    tile.append(tileContent);
                    tile.append(tileInfo);
                    disp.append(tile);
                }

                content.append(disp);
            }
        }
    });
    // -->
</script>

<!-- Date -->
<div class="tile-group tile-drag">
    <div class="date-container">
        <h2>20</h2>
        <h3>April</h3>
        <h4>2013</h4>
    </div>

    <!-- Text Content -->
    <a class="tile accent1" href="#!">
        <!-- Content Type Icon -->
        <div class="tile-content">
            <h2>Text Content Title</h2>
            <p>
                Blah Blah Blah Blah text.
            </p>
        </div>
        <div class="brand">
					<span class="name">
						<!-- Content Title -->
						<!--Text Content Title-->
					</span>
            <div class="badge"><i class="ringo-icon text" title="Text"></i></div>
        </div>
    </a>

    <!-- Link Content -->
    <!-- Changes content to Link URL on hover -->
    <a class="tile accent2" href="#!">
        <!-- Content Type Icon -->
        <div class="tile-content">
            <h2>LinkTitle</h2>
            <p>
                Description of the link. Blah Blah blah.
            </p>
        </div>
        <div class="brand">
					<span class="name">
						<!-- Content Title -->
						www.linktitle.com
					</span>
            <div class="badge"><i class="ringo-icon link" title="Link"></i></div>
        </div>
    </a>

    <!-- Audio/Video Playlist Content -->
    <a class="tile double accent7" href="#!">
        <!-- Content Type Icon -->
        <div class="tile-content">
            <ul class="unstyled">
                <li><i class="ringo-icon music"></i> Passenger
                    <span class="desc place-right">06:08</span>
                </li>
                <li><i class="ringo-icon music"></i> Korea
                    <span class="desc place-right">03:23</span>
                </li>
                <li><i class="ringo-icon video"></i> Pr0n-01
                    <span class="desc place-right">2:30:07</span>
                </li>
                <li><i class="ringo-icon audio"></i> Wave-02
                    <span class="desc place-right">00:05</span>
                </li>
                <li><i class="ringo-icon video"></i> JAV-01
                    <span class="desc place-right">5:16:50</span>
                </li>
            </ul>
        </div>
        <div class="brand">
					<span class="name">
						<!-- Content Title -->
						Playlist Content Title
					</span>
            <div class="badge"><i class="ringo-icon playlist" title="Playlist"></i></div>
        </div>
    </a>

    <!-- Folder Content -->
    <a class="tile double image-set accent9" href="#!">
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
            <span class="name">Folder</span>
            <div class="badge"><i class="ringo-icon folder" title="Folder"></i></div>
        </div>
    </a>

    <!-- Quadro for ads? -->
</div>

<div class="tile-group tile-drag">
    <div class="date-container">
        <h2>21</h2>
        <h3>April</h3>
        <h4>2013</h4>
    </div>

    <!-- Image Content -->
    <a class="tile double image accent3" href="#!">
        <div class="tile-content">
            <img src="images/5.jpg" alt="" />
        </div>
        <div class="brand">
            <span class="name">Image Content Title</span>
            <div class="badge"><i class="ringo-icon image" title="Image"></i></div>
        </div>
    </a>

    <!-- Audio Content -->
    <a class="tile double image accent6" href="#!">
        <div class="tile-content">
            <img src="images/5.jpg" alt="" />
        </div>
        <div class="brand">
            <span class="name">Audio Content Title</span>
            <div class="badge"><i class="ringo-icon audio" title="Audio"></i></div>
        </div>
    </a>

    <!-- Video Content -->
    <a class="tile double icon accent5" href="#!">
        <!-- Content Type Icon -->
        <div class="tile-content">
            <i></i>
        </div>
        <div class="brand">
					<span class="name">
						<!-- Content Title -->
						Video Content Title
					</span>
            <div class="badge"><i class="ringo-icon video" title="Video"></i></div>
        </div>
    </a>

    <!-- File Content -->
    <!-- Changes content to Link URL on hover -->
    <a class="tile icon accent8" href="#!">
        <!-- Content Type Icon -->
        <div class="tile-content">
            <i class="ringo-icon file"></i>
            <!-- <i class="icon-file"></i> -->
        </div>
        <div class="brand">
					<span class="name">
						<!-- Content Title -->
						filename.dat
					</span>
            <div class="badge"><i class="ringo-icon file" title="File"></i></div>
        </div>
    </a>

    <!-- Image Gallery Content -->
    <a href="#!" class="tile double image-slider accent4" data-role="tile-slider" data-param-period="5000" data-param-direction="left">
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
					<span class="name">
						<!-- Content Title -->
						Image Gallery Title
					</span>
            <div class="badge"><i class="ringo-icon gallery" title="Gallery"></i></div>
        </div>
    </a>

    <!-- Date Content -->
    <a class="tile date accent10" href="#!">
        <!-- Content Type Icon -->
        <div class="tile-content">
            <h2 class="day">Thursday</h2>
            <h3 class="date">14</h3>
            <h4 class="month">March</h4><h4 class="year">2013</h4>
        </div>
        <div class="brand">
					<span class="name">
						<!-- Content Title -->
						White Day
					</span>
            <div class="badge"><i class="ringo-icon date" title="Date"></i></div>
        </div>
    </a>

    <div href="#!" class="tile" id="phantom">
        <div class="tile-content">
            <i class="ringo-icon plus"></i>
        </div>
    </div>
    <!-- Quadro for ads? -->
</div>

<!-- Sidebar -->
<div class="charms accent1" id="content-preview">
    <i id="content-icon"></i>
    <div id="content-container">

    </div>
</div>
<!--
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

-->
</div>
</div>
</div>

<!-- When add tile is clicked. -->
<script type="text/javascript">
    var phantomTile = $("#phantom");

    function showChoices() {
        var content = $(this).find(".tile-content");
        var icons = ["Text", "Link", "Date", "Image", "Space", "Audio", "Video", "File", "Folder"];
        $(content).html('');

        for(var i = 0, iconLen = icons.length; i < iconLen; i++) {
            var uiName = icons[i].toLowerCase();
            var option = $('<a href="#!" id="phantom-tile-option-' + uiName + '" class="options"' + (icons[i] != "Space" ? ' title="' + icons[i] : '') + '"></a>');
            option.html('<i class="ringo-icon ' + uiName + '"></i>');

            $(option).fadeTo(250, 0.5).appendTo(content);
            if((i + 1) % 3 == 0)
                $("<br>").appendTo(content);
        }

        phantomTile.unbind('click');
        phantomTile.bind('mouseleave', hideChoices);
    }

    function hideChoices() {
        var content = $(phantomTile).find(".tile-content");
        $(content).html('');
        $('<i class="ringo-icon plus"></i>').fadeIn(250).appendTo(content);

        phantomTile.bind('click', showChoices);
        phantomTile.unbind('mouseleave');
    }

    phantomTile.bind('click', showChoices);
    $("#phantom-tile-option-space").live('click', hideChoices);

    $("a").live('click', function() {
        if($(this).attr("href") == "#!") {
            // event
            if($(this).hasClass("tile")) {
                // from tile
                var sidebar = $("#content-preview");
                var sidebarContentContainer = sidebar.find("#content-container");
                var sidebarContentIcon = sidebar.find("#content-icon");


                for(var i = 0; i < 10; i++) {
                    var className = "accent" + i;
                    if($(this).hasClass(className))
                        sidebar.addClass(className);
                    else
                        sidebar.removeClass(className);
                }

                var icon = $(this).find(".badge").find("i");
                var content;
                content = $(this).find(".tile-content").html();

                if(content != sidebarContentContainer.html()) {
                    if(sidebar.css('width') == '250px') {
                        sidebarContentIcon.attr('class', icon.attr('class'));
                        sidebarContentContainer.html(content);
                    }
                    else {
                        sidebar.animate({width: '250px', padding: '30px'}, 300,
                                function() {
                                    sidebarContentIcon.attr('class', icon.attr('class'));
                                    sidebarContentContainer.html(content);
                                });
                    }
                }
                else {
                    sidebarContentContainer.html('');
                    sidebarContentIcon.removeAttr('class');
                    sidebar.animate({width: 0, padding: 0}, 300);
                }
            }
        }
        return false;
    });
</script>
</body>
</html>
