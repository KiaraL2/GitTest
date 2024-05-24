<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>녹녹 - 회원가입</title>
    <link rel="icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="apple-touch-icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="stylesheet" href="Style.css">
</head>

<body>
    <div id="centerImg">
        <a href="main.jsp">
            <img src="./녹녹 브랜드로고-001.png" alt="">
        </a>
    </div>
    <h1>로그인</h1>

    <div class="box" id="loginBox">
        <div>
            <form action="LoginController" id="loginForm">
                <table>
                    <tr>
                        <td>아이디</td>
                    </tr>
                    <tr>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                    </tr>
                    <tr>
                        <td><input type="text"></td>
                    </tr>
                </table>
                <input type="submit" id="button" value="로그인">
            </form>
        </div>
        <div>
            <div>
                <span>아이디가 없으신가요?</span>
                <a href="join.jsp">회원가입</a>
            </div>
            <div id="find">
                <a href="findId.jsp"><i>ID찾기</i></a>
                <a href="findPw.jsp"><i>비밀번호 찾기</i></a>
            </div>
        </div>
    </div>

</body>
</html>