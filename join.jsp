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
    <h1>회원가입</h1>
    
    <div class="box">
        <form action="JoinController" class="joinForm">
            <table>
                <tr>
                    <td>회원유형</td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="clientType" value="general" id="general">일반회원
                        <input type="radio" name="clientType" value="seller" id="seller">판매자
                    </td>
                </tr>
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
                <tr>
                    <td>비밀번호 확인</td>
                </tr>
                <tr>
                    <td><input type="text"></td>
                </tr>
                <tr>
                    <td>닉네임</td>
                </tr>
                <tr>
                    <td><input type="text"></td>
                </tr>
                <tr>
                    <td>사진 등록</td>
                </tr>
                <tr>
                    <td><input type="file"></td>
                </tr>
                <tr>
                    <td>이메일</td>
                </tr>
                <tr>
                    <td>
                        <input type="text">@
                        <select name="" id="">
                            <option value="gmail">gmail.com</option>
                            <option value="naver">naver.com</option>
                            <option value="daum">daum.net</option>
                            <option value="self">직접입력</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>전화번호</td>
                </tr>
                <tr>
                    <td>
                        <select name="" id="">
                            <option value="SKT">SKT</option>
                            <option value="KT">KT</option>
                            <option value="LGUplus">U+</option>
                            <option value="economyPH">알뜰폰</option>
                        </select>
                        <input type="text">
                    </td>
                </tr>
            </table>
            <!-- 판매자 입력사항 -->
            <table  id="sellerJoin">
                <tr>
                    <td>사업자 등록번호</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" id="sellerBizNum1">-
                        <input type="text" id="sellerBizNum2">-
                        <input type="text" id="sellerBizNum3">
                    </td>
                </tr>
                <tr>
                    <td>상점 주소</td>
                </tr>
                <tr>
                    <td><input type="text"></td>
                </tr>
                <tr>
                    <td>홈페이지 URL</td>
                </tr>
                <tr>
                    <td><input type="text"></td>
                </tr>
            </table>
            <div>
                <input type="submit" value="회원가입" id="button">
            </div>
        </form>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let seller = document.getElementById("seller");
            let general = document.getElementById("general");
            let sellerJoin = document.getElementById("sellerJoin");

            sellerJoin.style.display = "none"; // 초기에는 숨김

            seller.addEventListener("click", function() {
                sellerJoin.style.display = "table";
            });

            general.addEventListener("click", function() {
                sellerJoin.style.display = "none";
            });
        });
    </script>
</body>

</html>
