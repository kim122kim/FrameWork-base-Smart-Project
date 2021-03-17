<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.kkaekkt.biz.user.PersonVO"%>

<link rel="stylesheet" href="css/all.css">
<link rel="stylesheet" href="css/head0.css">

<script src="https://kit.fontawesome.com/2fc57dd2db.js"
	crossorigin="anonymous"></script>

    <header class="head_container">
        <nav class="head">
            <div class="head_left">
                <div class="logo">
                    <a href="">
                        <img src="img/logo.svg" alt="">
                    </a>
                </div>
                <div class="menu">
                    <a href="">일반세탁소</a>
                    <a href="">코인세탁소</a>
                </div>
            </div>

            <div class="head_right">
                  <span>${sessionScope.person.name}</span>
                <!-- <a href="">(유저이름)</a>-->
                <a href=""><i class="fas fa-bell"></i></a>
                <a href=""><i class="fas fa-comments"></i></a>
                <a href="">마이페이지</a>
                <a href="">로그아웃</a>
                <a href="">FAQ</a>
            </div>
        </nav>
    </header>