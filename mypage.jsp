<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>��� - ����������</title>
    <link rel="icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="apple-touch-icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="stylesheet" href="Style.css">

<body>
    <!-- ��� -->
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

    <h1>����������</h1>
    <div class="content">
        <div class="sellerMiniProfile">
            <div id="profileDiv1">
                <img src="./����3.jpg" alt="" class="profileImg">
            </div>
            <div id="sellerInfo">
                <div>
                    <a href="profile.jsp">�Ǹ��� �г���</a>
                </div>
                <div>
                    <span>�Ǹ��� ��� : </span><span>���</span><img src="" alt="" id="tier">
                </div>
                <div>
                    <span>�������� : </span><span>2024.01.01</span>
                </div>
            </div>
            <div>
                <div class="pageButton" id="updateButton">
                    <a href="update.jsp" >������������</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ���ȳ��� -->
    <div class="content">
        <div>
            <h2>���� ����</h2>

            <div class="proposalBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>�Ƿ� ����</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>�Ƿ��� ��</span>
                    </div>
                </div>
                <div class="rightBox">
                    <div>
                        <span class="proposalStatus" id="proposalProgress">ä�� �����</span>
                    </div>
                    <div class="pageButton">
                        <a href="requestShow.jsp" >�Ƿ���Ȳ</a>
                    </div>
                </div>
            </div>
            <div class="proposalBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>�Ƿ� ����</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>�Ƿ��� ��</span>
                    </div>
                </div>
                <div>
                    <span class="proposalStatus" id="proposalComlete">�ŷ� �Ϸ�</span>
                    <div class="pageButton">
                        <a href="requestShow.jsp" >
                            �ŷ����� ����
                        </a>
                    </div>
                </div>
            </div>
            <div class="proposalBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <span>�Ƿ� ����</span>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>�Ƿ��� ��</span>
                    </div>
                </div>
                <div>
                    <span class="proposalStatus" id="reqCancel">�Ƿ� ���</span>
                </div>
            </div>
        </div>
    </div>

</body>

</html>