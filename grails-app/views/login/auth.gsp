<%--
  Created by IntelliJ IDEA.
  User: susan
  Date: 10/17/18
  Time: 9:59 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="headerFooter"/>
    %{--<asset:stylesheet src="jquery.fancybox.css"/>--}%
    %{--<asset:javascript src="application.js"/>--}%
    %{--<asset:javascript src="jquery-3.1.0.min.js"/>--}%
    %{--<asset:javascript src="jquery.fancybox.js"/>--}%
    <title>fancy box</title>
</head>

<body>
<script>
    $(function () {

        /*$("#fancy").on('click', function() {

            // $.fancybox.open('<div class="message"><h2>Hello!</h2><p>You are awesome!</p></div>');
            // $("#fancy").fancybox({
            //     'onStart': function() { $("#fancybox").css("display","block"); },
            //     'onClosed': function() { $("#fancybox").css("display","none"); }
            // });
            // $.fancybox({
            //     'content': $('#fancybox').html()
            // });

            // $("#fancybox").fancybox();

            // jQuery.fancybox.open({href: "#fancybox"});
        });*/



    });

    function fancy()
    {
        $.ajax({
            type:'POST',
            url:'${createLink(controller:'loginLogout', action: 'loginBox')}',
            data:"aa",
            success:function (data) {
                $.fancybox.open(data,{
                    // width: 400,
                    // height: 400,
                    autoSize: true,
                    touch:false
                });
            }
        });
        /*$("#fancybox").fancybox({
            'autoScale': true,
            'transitionIn': 'elastic',
            'transitionOut': 'elastic',
            'speedIn': 500,
            'speedOut': 300,
            'autoDimensions': true,
            'centerOnScroll': true
            // 'href' : '#fancybox'
        });*/
    }
</script>
%{--<a data-fancybox href="${createLink(controller: 'loginLogout' ,action: 'loginBox')}">fancy</a>--}%

<div class="navbar">

</div>
<div id="fancybox">
</div>

<input type="button" id="fancy" onclick="fancy()" value="Login"/>

</body>
<script>
</script>
</html>