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

      .button {
          background-color: #F9B514;
          padding: 5px 10px;
          border-radius: 4px;
          cursor: pointer;
        }

        .modal {
          position: fixed;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          display: flex;
          justify-content: center;
          align-items: center;
        }

        .modal .bg {
          width: 100%;
          height: 100%;
          background-color: rgba(0, 0, 0, 0.6);
        }

        .modalBox {
          position: absolute;
          background-color: #fff;
          width: 400px;
          height: 400px;
          padding: 15px;
        }

        .modalBox button {
          display: block;
          width: 80px;
          margin: 0 auto;
        }

        .hidden {
          display: none;
        }

</style>
<!--[if IE]>
<script src="excanvas.js"></script>
<![endif]-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="js/jquery.signature.js"></script>

<script>

</script>
</head>
<body>
<h1>테스트 화면12112 test</h1>

<div id="sig"></div>
<p style="clear: both;">
    <button id="disable">Disable</button>
    <button id="clear">Clear</button>
</p>


<a href="../index/main">사인 페이지로 가기</a>




<button class="openBtn button">모달창 open1</button>
<div class="modal hidden">
      <div class="bg"></div>
          <div class="modalBox">
                <div id="sig"></div>
                <p style="clear: both;">
                    <button id="disable">Disable</button>
                    <button id="clear">Clear</button>
                </p>

            <button class="closeBtn">✖</button>
          </div>
</div>


<script type="text/javascript">

    $(function() {
    var sig = $('#sig').signature();
    $('#disable').click(function() {
        var disable = $(this).text() === 'Disable';
        $(this).text(disable ? 'Enable' : 'Disable');
        sig.signature(disable ? 'disable' : 'enable');
    });
    $('#clear').click(function() {
        sig.signature('clear');
    });
    });


    const open = () => {
    document.querySelector(".modal").classList.remove("hidden");
    }

    const close = () => {
    document.querySelector(".modal").classList.add("hidden");
    }

    document.querySelector(".openBtn").addEventListener("click", open);
    document.querySelector(".closeBtn").addEventListener("click", close);
    document.querySelector(".bg").addEventListener("click", close);

</script>




</body>
</html>
