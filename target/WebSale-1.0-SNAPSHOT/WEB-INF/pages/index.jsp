<%-- 
    Document   : index
    Created on : Mar 6, 2023, 9:06:55 AM
    Author     : Computer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Trang chủ</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">HỆ THỐNG BÁN HÀNG TRỰC TUYẾN</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav me-auto">
                        <c:forEach items="${categories}" var="c">
                            <li class="nav-item">
                                <a class="nav-link" href="#">${c.name}</a>
                            </li>
                        </c:forEach>
                    </ul>
                    <c:url value="/" var="action"/>
                    <form class="d-flex" action="${action}">
                        <input class="form-control me-2" name="kw" type="text" placeholder="Nhập tên...">
                        <button class="btn btn-primary" type="submit">Tìm</button>
                    </form>
                </div>
            </div>
        </nav>
        <section>
            <div class="container">
                <div class="row">
                    <c:forEach items="${products}" var="p">
                        <div class="col-md-3 col-xs-12" style="padding: 1rem;">
                            <div class="card">
                                <img class="card-img-top" src="${p.image}" alt="Card image">
                                <div class="card-body">
                                    <h4 class="card-title">${p.name}</h4>
                                    <p class="card-text">${p.price} VNĐ</p>
                                    <a href="#" class="btn btn-primary">Xem chi tiết</a>
                                    <a href="#" class="btn btn-danger">Đặt hàng</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>                   
                </div>
            </div>
        </section>
    </body>
</html>
