<html>
<head>
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="jquery-3.1.0.min.js"/>
    <asset:javascript src="bootstrap.css"/>
    <asset:stylesheet src="main.css"/>
    <asset:stylesheet src="jquery.fancybox.css"/>
    <asset:javascript src="jquery.fancybox.js"/>
    <style>
    body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
    }

    .topnav {
        overflow: hidden;
        background-color: #333;
    }

    .topnav a {
        float: left;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }

    .topnav a:hover {
        background-color: #ddd;
        color: black;
    }

    .topnav a.active {
        background-color: #4CAF50;
        color: white;
    }
    </style>
    <script>
        $(function () {
            $(".topnav #home").addClass('active');
            $(".topnav a").on("click",function () {
                $(".topnav a").removeClass('active');
                $(this).addClass('active');
            })
        });
    </script>
    <g:layoutHead/>
</head>
<body>
%{--<div class="header">--}%
    <div class="topnav">
        <a id="home" href="#home">Home</a>
        <a href="#news">News</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
    </div>
%{--</div>--}%
<g:layoutBody/>
<div class="footer">
    ffff
</div>
</body>
</html>