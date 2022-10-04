<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.2.0/js/all.js"></script>
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
    <title>Find ID</title>

    <style>
        .container {
            width: 450px;
            margin: 0 auto;
            padding-top: 64px;
            text-align: left;
        }
        .titid {
            margin-bottom: 32px;
            font-size: 2.6rem;
            line-height: 1.3;
            font-weight: 900;
            text-align: center;
        }
    </style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>

<%--<form action="  " method="post" onsubmit="return check()">--%>

<div id="container" class="container">
    <p class="titid">비밀번호 찾기</p>
    <p>회원정보에 등록된 정보로 비밀번호를 찾을 수 있습니다.</p>
    <br>
    <fieldset>
        <div class="inp-frm">
            <label for="inp-name" class="titLab">이름</label>
            <div class="inpA">
                <input type="email" id="inp-name" placeholder="특수문자 없이 입력해주세요" class="form-control"
                       required="required" name="email_id">
            </div>
            <div class="id-success"></div>
        </div>
        <br>
        <div class="inp-frm">
            <label for="inp-phone" class="titLab">휴대전화</label>
            <div class="inpA">
                <input type="email" id="inp-phone" placeholder="'-' 없이 숫자만 입력해주세요" class="form-control"
                       required="required" name="email_id">
            </div>
            <div class="id-success"></div>
        </div>
        <br>

        <div class="inp-frm">
            <label for="inp-email" class="titLab">이메일</label>
            <div class="inpA">
                <input type="email" id="inp-email" placeholder="example@coffewith.com" class="form-control"
                       required="required" name="email_id">
                <br>
                <button type="button" id="btn-id-chk" class="btn btn-outline-info btnA">
                    본인 확인 이메일 전송</button>
            </div>
            <div class="id-success"></div>
        </div>
        <hr>

        <%--        <div class="findpw_ok"><label>인증번호 입력</label></div>--%>
        <%--        <div class="wrap_input">--%>
        <%--                                <span class="box_input">--%>
        <%--                                   <input type="text" name="findCite" id="findCite" class="inp_find">--%>
        <%--                                    <span class="message_find time_find" style="display:none;">남은 시간 (3:00)</span>--%>
        <%--                                </span>--%>
        <%--            <p class="message_find" id="msg_cert_num" style="display:none;">입력시간이 만료되었습니다. 인증번호를 다시 발송해주세요.</p>--%>
        <%--            <p class="message_find ok" style="display:none;">인증 성공. 잠시만 기다려주세요.</p>--%>
        <%--        </div>--%>

        <button type="submit" id="inp-btn" class="btn btn-primary btnB">본인 인증 완료</button>
    </fieldset>
</div>
</div>
</form>

</body>
</html>