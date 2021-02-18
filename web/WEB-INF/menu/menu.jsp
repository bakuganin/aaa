<%-- 
    Document   : menu
    Created on : 02.02.2021, 10:34:42
    Author     : Comp
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">Магазин Обуви</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link <c:if test="${activeListFurnitures eq true}">active</c:if>" aria-current="page" href="listFurnitures">Список товара</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <c:if test="${activePurchaseFurnitureForm eq true}">active</c:if>" href="purchaseFurnitureForm">Список купленных товаров</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <c:if test="${activeAddFurniture eq true}">active</c:if>" href="addFurniture">Добавить товар</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <c:if test="${activeListBuyers eq true}">active</c:if>" href="listBuyers">Список покупателей</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <c:if test="${activeAdminPanel eq true}">active</c:if>" href="adminPanel">Панель администратора</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <c:if test="${activeShowLoginForm eq true}">active</c:if>" href="showLoginForm">Войти</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <c:if test="${activeLogout eq true}">active</c:if>" href="logout">Выйти</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
        
<script type="text/javascript">
    timestr = "00:00:00";
    title=document.title;
    tid = 0;
    pause = 0;
    var to;
    var bcount;
    var tcount;
    function time(n) {
            tid=window.setTimeout("time(1)",to);
            today = new Date()
            if(today.getMinutes() < 10) pad = "0"
                    else		    pad = "";
            if(today.getSeconds() < 10) pads = "0"
                    else  		    pads = "";
            timestr=today.getHours()+":"+pad+today.getMinutes()+":"+pads+today.getSeconds();
            document.title = title+' '+timestr;
            window.clearTimeout(tid);
            tid=window.setTimeout("time()",to);
    }
    function start(x) {
            f=x;
            to=60;
            time(x);
    }
    function cleartids() {
            window.clearTimeout(tid);
    }
</script>
<body onload="start(document.forms[0])" onunload="cleartids()">