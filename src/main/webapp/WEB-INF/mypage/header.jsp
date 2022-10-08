<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <style type="text/css">

        .logotitle {
            font-family: 'GangwonEdu_OTFBoldA';
            font-style: oblique;
            font-weight: bolder;
            font-size: 30px;
        }

        #btnlogin {
            margin-left: 200px;
        }

        #loginstate {
            font-size: 15px;
            text-align: right;
        }

        ul li {
            list-style: none;
        }

        li.main {
            float: left;
        }

        li.main > a {
            display: block;
            width: 180px;
            font-family: 'Jua';
            font-size: 20px;
        }

        li.main > a:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>
<!-- 로고 버튼 누르면 홈으로 -->
<c:set var="root" value="<%=request.getContextPath()%>"/>
<a href="${root}/" class="logotitle">
    <img src="${root}/images/logo1.png" class="rounded-circle" width="40" height="40">
    <b> Coffee With </b></a>

<!-- 메뉴 구성 -->
<c:set var="root" value="<%=request.getContextPath() %>"/>
<div class="menu">
    <ul>
        <!-- 1번째 메뉴 -->
        <li class="main">
            <a>홈페이지</a>
        </li>

        <!-- 2번째 메뉴 -->
        <li class="main">
            <a href="${root}/map/mainmap">카페지도</a>
        </li>

        <!-- 3번째 메뉴 -->
        <li class="main">
            <a>투어모집</a>
        </li>

        <!--4번째 메뉴 -->
        <li class="main">
            <a href="${root}/comfeed/main">커뮤니티</a>
        </li>
    </ul>
</div>

<!-- 로그인 로그아웃 -->
<span id="loginstate" style="text-align: right;">
    <c:if test="${sessionScope.login_ok==null}">
        <button type="button" class="btn btn-secondary btn-sm" id="btnlogin"
                onclick="location.href='${root}/login_main'">Login</button>
        <button type="button" class="btn btn-secondary btn-sm" id="signup-btn"
                onclick="location.href='${root}/user_form'">Sign Up</button>
        <button type="button" class="btn btn-primary btn-sm" id="call-session-btn">
                세션주기</button>
    </c:if>

    <c:if test="${sessionScope.login_ok!=null}">
        <b>${sessionScope.login_nick}님</b> &nbsp;
        <button type="button" class="btn btn-secondary btn-sm" id="btnlogout">Logout</button>
        <button type="button" class="btn btn-danger btn-sm" id="del-session-btn">
                세션제거</button>
    </c:if>
    </span>

<!-- 스크립트 이벤트 -->
<script type="text/javascript">

    //로그인 버튼
    $("#btnloginok").click(function () {
        // 아이디와 비번 읽기
        var id = $("#loginid").val();
        var pass = $("#loginpass").val();
        var root = '${root}';
        console.log("root" + root);

        $.ajax({
            type: "get",
            url: root + "/member/login",
            dataType: "json",
            data: {"id": id, "pass": pass},
            success: function (res) {
                if (res.result == 'fail') {
                    alert("아이디나 비번이 맞지 않습니다");
                } else {
                    location.reload();
                }
            }
        });
    });

    // 로그아웃
    $("#btnlogout").click(function () {
        var root = '${root}';

        $.ajax({
            type: "get",
            url: root + "user/logout",
            dataType: "text",

            success: function (res) {
                location.reload();
            }
        })
    })

    //세션주기
    $("#call-session-btn").click(function () {
        var root = '${root}';

        $.ajax({
            type: "get",
            url: root + "/user/call_session",
            dataType: "text",
            success: function (res) {
                location.reload();
            }
        })
    })

    //세션제거
    $("#del-session-btn").click(function () {
        var root = '${root}';

        $.ajax({
            type: "get",
            url: root + "/user/del_session",
            dataType: "text",
            success: function (res) {
                top.location.href = root;
            }
        })
    })
</script>
</body>
</html>