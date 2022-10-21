<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myPage/myProfile.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
    <title>마이페이지</title>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
	
    <div class="wrap">
        <!-- 네비게이션바 아래 title -->
        <div class="sub_title">
            <div class="container">
                <div class="inner">
                    <!-- "마이페이지" 폰트 -->
                    <div class="left_font">
                        <div class="mypage">
                            <nav><div class="top">마이페이지</div></nav>
                        </div>
                    </div>
    
                    <!-- 일러스트 이미지 -->
                    <div class="title_right_box">
                        <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9tqEaXhOUrKyqO8iZWgudng&fname=ybeUrSjBOXZnYzXPeGpV8EB4nLayDSOijEyayiHqRzP3wf2uZqRIcoNdks4zvn4GD3g57TCf1WZ%2BzJ6F3647Hw%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D">
                    </div>
                </div>
            </div>
        </div>

        <!-- 회원정보 폼 -->
        <div class="sub_content">
            <div class="container">
                <div class="inner">
                    <form>    
                        <!-- 회원의 정보를 보여줄 Form -->
                        <div class="user_info">
                            <div class="user_box box01">
                                <div class="user_pic">
                                    <!-- 사용자 아이콘 -->
                                    <img id="userFileImg" src="https://www.rda.go.kr/young/images/site/login/my_ico_01.png">
                                        </div>
                                <div class="user_i">
                                    <p>안녕하세요,<span>${memberName}</span>님</p> <!-- (이후) 로그인한 회원의 이름으로 출력 필요 -->
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/mypage/LogOut.my">로그아웃</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/Update.my">정보수정</a></li>
                                        <li><a href="${pageContext.request.contextPath}/mypage/Delete.my">회원탈퇴</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="user_box box02">
                                <ul>
                                    <li>
                                        <p class="join">가입 형태</p> <!-- (이후) 로그인한 회원의 가입형태로 출력 필요 -->
                                        <p>
                                            <span style="margin:0">${memberType}</span>
                                        </p>
                                    </li>
                                    <li>
                                        <p class="local">지역</p> <!-- (이후) 로그인한 회원이 입력한 지역 출력 필요 -->
                                        <p>
                                            <span style="margin:0">${memberLocation}</span>
                                        </p>
                                    </li>
                                    <li>
                                        <p class="crop">멘토링</p> <!-- (이후) 가입할 때 선택한 농작물 출력 필요 -->
                                        <p>
                                            <span style="margin:0">${mentorType}</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!-- 메뉴에 따른 더보기(신청 프로그램 내역, 내가 작성한 글) -->
                        <div class="supp_info">
                            <div class="myProgramMore">
                                <h4>프로그램/알바 내역</h4>
                                <a href="${pageContext.request.contextPath}/mypage/Apply.my" class="mre">더보기</a>
                                <div class="myProgram">
                                    <ul class="myProgramList"> <!-- (이후) 신청 프로그램 여부에 따라 리스트 출력 필요 -->
                                        <div>
                                            <a href="#"><li>
                                                <p>${programName}</p>
                                                <span>${programStartDate}</span>
                                            </li></a>
                                        </div>
                                        <div style ="border-top : 0.118rem dashed #ccc">
                                            <a href="#"><li>
                                                <p>${albaName}</p>
                                                <span>${albaStartDate}</span>
                                            </li></a>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                            <div class="myPostMore">
                                <h4>게시판 활동 내역</h4>
                                <a href="${pageContext.request.contextPath}/mypage/Write.my" class="mre">더보기</a>
                                <div class="myPost">
                                    <ul class="myPostList"> <!-- (이후) 신청 게시글 작성 여부에 따라 리스트 출력 필요 -->
                                        <div class="myNoticeList">
                                            작성하신 글을 찾을 수 없습니다.
                                        </div>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</html>