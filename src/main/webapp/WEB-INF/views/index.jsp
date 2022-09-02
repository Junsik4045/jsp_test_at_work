<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>jQuery UI Signature Basics</title>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/south-street/jquery-ui.css" rel="stylesheet">
<link href="css/jquery.signature.css" rel="stylesheet">
<style>
        .kbw-signature {
            width: 300px; height: 150px;
        }

</style>
<!--[if IE]>
<script src="excanvas.js"></script>
<![endif]-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="js/jquery.signature.js"></script>
<!-- jquery modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<script type="text/javascript">
   $(document).ready(function(){
        $('#show').click(function() {
            $('#thing').show();
        })

        $('#hide').click(function() {
            $('#thing').hide();
        })


        var sig = $('#sig').signature().hide();

        $('#showSign').click(function() {
            $('#sig').show();
        })

         $('#hideSign').click(function() {
            $('#sig').hide();
        })

        $('a[href="#ex7"]').click(function(event) {
            event.preventDefault();

            $(this).modal({
            fadeDuration: 250
             });
         });


    })

</script>
</head>
<body>


<a href="../index/main">사인 페이지로 가기</a>

<br><br>

<button id="show">SHOW</button>
<button id="hide">HiDE</button>
<div id="thing" hidden>HI JUNSIK</div>

<br>

<br>


<p><a class="btn" href="#ex7">도달창띄우기2</a></p>
<div id="ex7" class="modal">
<p>
    <button id="showSign"> Sign Show </button>
    <button id="hideSign"> Sign Hide </button>
    <div id="sig"></div>
</p>

</div>





</body>
</html>
