<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>녹녹 - 구매내역</title>
    <link rel="icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="apple-touch-icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="stylesheet" href="Style.css">

<body>
    <!-- 헤더 -->
    <div id="header-container"></div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            fetch("header.html")
                .then(response => response.text())
                .then(data => {
                    document.getElementById("header-container").innerHTML = data;
                });
        });
    </script>

    <div class="content">
        <!-- Page content goes here -->
    </div>

    <div class="detail">
        <div class="myReq">
            <h2>의뢰서 제목</h2>
            <p>~님의 의뢰</p>
            <p>2024.00.00 ~ 2024.00.00</p>
            <div id="attImg">
                <img src="./인테리어 아이콘.png" alt="">
                <span>인테리어</span>
            </div>
            <table>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <span>의뢰인이 설정한 예산 : </span>
            <span>~~원</span>
            <p>요청 내용</p>
            <div>

            </div>
        </div>

        <div class="adoptProp">
            <div>
                <section class="proposal-section">
                    <h2>채택한 제안서</h2>
                    <div class="seller-info">
                        <img src="seller.jpg" alt="판매자 이미지">
                        <div>
                            <strong>김판매</strong>
                            <span>판매자 등급: 골드 ⭐</span>
                            <span>Email: a@naver.com</span>
                            <span>URL: <a href="http://www.myplant.com">www.myplant.com</a></span>
                        </div>
                    </div>
                    <div class="proposal-content">
                        제가 자신있게 도와드리겠습니다!
                    </div>
                    <div class="proposal-img">
                        <img src="proposal.jpg" alt="제안 이미지">
                    </div>
                    <div class="proposal-text">
                        <p>고객님 공간에는 ~~~가 어울리고 ~~~하면 좋을 것 같습니다. 물을 일주일에 한번만 주시면 되고...<br>방마다 자갈을 티코오니까 좀 덜더니 더여기서
                            이게는...<a href="#">더보기</a></p>
                    </div>
                    <div class="proposal-options">
                        <div>
                            <label><input type="checkbox"> 흙 3kg</label>
                            <span>10,000원</span>
                        </div>
                        <div>
                            <label><input type="checkbox"> 화분 중형</label>
                            <span>15,000원</span>
                        </div>
                        <div>
                            <label><input type="checkbox"> 고무 나무</label>
                            <span>26,000원</span>
                        </div>
                        <div>
                            <label><input type="checkbox"> 식물 영양제</label>
                            <span>4,000원</span>
                        </div>
                    </div>
                    <div class="final-price">
                        최종견적가: 55,000원~
                    </div>
                </section>
            </div>
        </div>
        <div>
            <div>
                <h3>구매정보</h3>
                <hr>
            </div>

            <table>
                <tr>
                    <td>흙</td>
                    <td><span>10,000원</span></td>
                </tr>
                <tr>
                    <td>화분</td>
                    <td><span>10,000원</span></td>
                </tr>
                <tr>
                    <td>고무나무</td>
                    <td><span>10,000원</span></td>
                </tr>
                <tr>
                    <td>계</td>
                    <td><span>50,000원</span></td>
                </tr>
            </table>
            <hr>
            <table>
                <tr>
                    <td>중개 수수료</td>
                    <td>3,000원</td>
                </tr>
                <tr>
                    <td>배송비</td>
                    <td>3,000원</td>
                </tr>
            </table>
            <h3>총 62,000원</h3>
        </div>
        <div>
            <h3>배송지 정보</h3>
            <hr>
            <table>
                <tr>
                    <td>주소</td>
                    <td>우리집</td>
                </tr>
                <tr>
                    <td>상세주소</td>
                    <td>204동 1004호</td>
                </tr>
                <tr>
                    <td>수령인</td>
                    <td>서지원</td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td>010-2975-6823</td>
                </tr>
                <tr>
                    <td>배송 요청사항</td>
                    <td></td>
                </tr>
            </table>
        </div>
        <div>
            <a href="review.jsp" class="pageButton">
                <div>
                    리뷰작성
                </div>
            </a>
        </div>
    </div>

</body>

</html>