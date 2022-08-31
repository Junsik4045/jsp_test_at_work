<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>JSP Test Page</title>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/south-street/jquery-ui.css" rel="stylesheet">
<link href="../css/jquery.signature.css" rel="stylesheet">

<!-- jquery Model -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<style>
.kbw-signature { width: 400px; height: 200px; }

<!-- 모달 창-->
        .kbw-signature { width: 400px; height: 200px; }


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
          height: 200px;
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
<script src="../js/jquery.signature.js"></script>
<script>
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
</script>
</head>
<body>

<div id="sig"></div>
<p style="clear: both;">
    <button id="disable">Disable</button>
    <button id="clear">Clear</button>
</p>


<br>
  <table border="1">
            <caption>상주 리스트</caption>
            <thead>
                <tr align="center" bgcolor="white">
                    <th>계약자(대표자)</th>
                    <th>전화번호</th>
                    <th>서명</th>
                </tr>
            </thead>

            <tbody>
                <%  for (int i = 0; i <10; i++) {
                %>
                    <tr align="center" bgcolor="white">
                        <td><input type="text" name = "name"></td>
                        <td><input type="text" name = "phoneNum"></td>
                        <td>
                           <button class="openBtn button">모달창 open</button>
                            <div class="modal hidden">
                                  <div class="bg"></div>
                                      <div class="modalBox">

                                        <button class="closeBtn">✖</button>
                                      </div>



                            </div>



                        </td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>






        <button class="saveList">저장하기</button>
</body>
</html>
