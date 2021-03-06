<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 52460
  Date: 2018/6/19
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模板</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

    <!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>

    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body style="background: #f6f6f6">
<div class="modal" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="infoModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="infoModalTitle"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p id="information"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="giftModal" tabindex="-1" role="dialog" aria-labelledby="giftModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="giftModalTitle">转让文献</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group col-lg-offset-2 col-lg-12">
                        <input class="form-control" type="text" id="receiver" placeholder="用户名">
                    </div>
                    <div class="form-group col-lg-offset-2 col-lg-12">
                        <input class="form-control" type="number" id="paperId" placeholder="文献编号">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary" onclick="giftPaper()">确认</button>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="priceModal" tabindex="-1" role="dialog" aria-labelledby="priceModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="priceModalTitle">修改价格</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group col-lg-offset-2 col-lg-12">
                        <input class="form-control" type="number" id="price" placeholder="价格">
                    </div>
                    <div class="form-group col-lg-offset-2 col-lg-12">
                        <input class="form-control" type="number" id="paperId2" placeholder="文献编号">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="changePrice()">确认</button>
            </div>
        </div>
    </div>
</div>
<!--header-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <nav class="navbar navbar-light bg-light">
        <a class="navbar-brand mb-0 h1" href="/">Gryffindor</a>
    </nav>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/repository">仓库<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="/setting">个人信息<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    学科
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/discipline/3">数学</a>
                    <a class="dropdown-item" href="/discipline/4">物理学</a>
                    <a class="dropdown-item" href="/discipline/5">天文学</a>
                    <a class="dropdown-item" href="/discipline/6">工程科技</a>
                    <a class="dropdown-item" href="/discipline/7">化学</a>
                    <a class="dropdown-item" href="/discipline/8">材料科学</a>
                    <a class="dropdown-item" href="/discipline/9">冶金工业</a>
                    <a class="dropdown-item" href="/discipline/10">农业科技</a>
                    <a class="dropdown-item" href="/discipline/11">农业工程</a>
                    <a class="dropdown-item" href="/discipline/12">水产和渔业</a>
                    <a class="dropdown-item" href="/discipline/13">农作物</a>
                    <a class="dropdown-item" href="/discipline/14">医药卫生</a>
                    <a class="dropdown-item" href="/discipline/15">中医药</a>
                    <a class="dropdown-item" href="/discipline/16">妇产科学</a>
                    <a class="dropdown-item" href="/discipline/17">神经病学</a>
                    <a class="dropdown-item" href="/discipline/18">哲学与人文</a>
                    <a class="dropdown-item" href="/discipline/19">地理</a>
                    <a class="dropdown-item" href="/discipline/20">哲学</a>
                    <a class="dropdown-item" href="/discipline/21">美学</a>
                    <a class="dropdown-item" href="/discipline/22">软件工程</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    机构
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                    <a class="dropdown-item" href="/institute/1">清华</a>
                    <a class="dropdown-item" href="/institute/2">北大</a>
                    <a class="dropdown-item" href="/institute/3">中科院</a>
                    <a class="dropdown-item" href="/institute/4">北航</a>
                    <a class="dropdown-item" href="/institute/5">浙大</a>
                    <a class="dropdown-item" href="/institute/6">哈工大</a>
                    <a class="dropdown-item" href="/institute/7">天津大学</a>
                    <a class="dropdown-item" href="/institute/8">南京大学</a>
                    <a class="dropdown-item" href="/institute/9">湖南大学</a>
                    <a class="dropdown-item" href="/institute/10">山东大学</a>
                </div>
            </li>
            <li class="nav-item ">
                <form class="form-inline my-2 my-lg-0" action="/search" method="post">
                    <input name="query" class="form-control mr-sm-2" type="search" placeholder="输入关键字" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
                </form>
            </li>
        </ul>
        <div href="/login" class="nav-item">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/login">登录/注册<span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>

    </div>
</nav>

<p></p>
<p></p>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="row">
                <c:forEach var="paper" items="${list}">
                    <div class="jumbotron" style="background: #FFFFFF">
                        <h5><i class="fas fa-book"></i><a href="/paper/${paper[0].id}" class="btn">${paper[0].name}</a></h5>
                        <p class="lead">${paper[0].abstract1}</p>
                        <hr class="my-4">
                        <div class="row">
                            <div class="col-md-3">
                                <i class="fas fa-address-card"></i>
                                    ${paper[1].username}
                            </div>
                            <div class="col-md-3">
                                <i class="fas fa-dollar-sign"></i>
                                    ${paper[0].price}
                            </div>
                            <div class="col-md-3">
                                <i class="fas fa-fire"></i>
                                热度${paper[0].popularity}
                            </div>
                            <div class="col-md-3">
                                <i class="fas fa-bookmark"></i>
                                id #${paper[0].id}
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="col-md-4 mb-4 ">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">个人资料</span>
            </h4>
            <div class="mb-3 " style="background: #FFFFFF">
                <div class="pt-4 ml-4">
                        <h3><i class="fas fa-user"></i>
                            ${user.username}</h3>
                </div>
                <hr class="my-4">
                <div class="row m-2">
                    <div class="col-md-3 text-center">
                        <!-- <i class="fas fa-address-card"></i> -->
                        等级
                        <p class="pt-2 ">${user.degree}</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <!-- <i class="fas fa-calendar-alt"></i> -->
                        经验值
                        <p class="pt-2 ">${user.exp}</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <!-- <i class="fas fa-fire"></i> -->
                        积分
                        <p class="pt-2 ">${user.credit}</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <!-- <i class="fas fa-bookmark"></i> -->
                        拥有
                        <p class="pt-2 ">${count}</p>
                    </div>
                </div>
                <hr class="my-4">
                
                <div class="row text-center  align-items-center">
                        <div class="col-md-1 ml-4">
                                <i class="fas fa-envelope"></i>
                            </div> 
                            <div class="col-md-3">
                                邮箱
                            </div>
                            <div class="col-md-7 ">
                                ${user.email}
                            </div>
                </div>
                <hr class="my-4">
                <div class="row text-center  align-items-center">
                        <div class="col-md-1 ml-4">
                            <i class="fas fa-venus-mars"></i>
                        </div> 
                        <div class="col-md-3">
                            用户类型
                        </div>
                        <div class="col-md-7 ">
                            <c:choose>
                                <c:when test="${isScholar}">
                                    学者
                                    <br />
                                </c:when>
                                <c:otherwise>
                                    普通用户
                                    <br />
                                </c:otherwise>
                            </c:choose>
                        </div>
                     </div>
                     <hr class="my-4">
            </div>
            <div class="card p-2">
                <div class="input-group text-center align-items-center">
                    <div class="col-md-6 mt-3 mb-3 ">
                        <button type="submit" data-toggle="modal" data-target="#priceModal" class="btn btn-outline" onclick="changePrice()"  style="border-radius: 1em">修改价格</button>
                    </div>
                    <div class="col-md-6 mt-3 mb-3 " >
                        <button type="submit" data-toggle="modal" data-target="#giftModal" class="btn btn-outline" onclick="giftPaper()" style="border-radius: 1em">赠送文献</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--//header-->
<!--w3l-->
<script>
    function giftPaper() {
        var receiverName = document.getElementById("receiver").value;
        document.getElementById("receiver").value = "";
        var paperId = document.getElementById("paperId").value;
        document.getElementById("paperId").value = "";
        $('#giftModal').modal('hide');
        $.ajax({
            url : '/giftpaper/',
            type : 'POST',
            data : JSON.stringify({"receiver" : receiverName, "paperId": paperId}), // Request body
            contentType : 'application/json; charset=utf-8',
            dataType : 'json',
            success : function(response) {
                //请求成功
                if(response["errorInfo"] == null){
                    infomation(false, response["info"])
                }else{
                    infomation(true, response["errorInfo"])
                }
            },
            error : function(msg) {
            }
        });
    }

    function changePrice() {
        var price = document.getElementById("price").value;
        document.getElementById("price").value = "";
        var paperId = document.getElementById("paperId2").value;
        document.getElementById("paperId2").value = "";
        $('#priceModal').modal('hide');
        $.ajax({
            url : '/changeprice/',
            type : 'POST',
            data : JSON.stringify({"price" : price, "paperId": paperId}), // Request body
            contentType : 'application/json; charset=utf-8',
            dataType : 'json',
            success : function(response) {
                //请求成功
                if(response["errorInfo"] == null){
                    infomation(false, response["info"])
                }else{
                    infomation(true, response["errorInfo"])
                }
            },
            error : function(msg) {
            }
        });
    }
</script>
<!--//footer-->
<!-- Footer -->
<footer class="page-footer font-small unique-color-dark mt-4">

    <div style="background-color: #888888;">
        <div class="container">

            <!-- Grid row-->
            <div class="row py-4 d-flex align-items-center">

                <!-- Grid column -->
                <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                    <h6 class="mb-0">欢迎加入我们！</h6>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-6 col-lg-7 text-center text-md-right">

                    <!-- Facebook -->
                    <a class="fb-ic">
                        <i class="fa fa-facebook white-text mr-4"> </i>
                    </a>
                    <!-- Twitter -->
                    <a class="tw-ic">
                        <i class="fa fa-twitter white-text mr-4"> </i>
                    </a>
                    <!-- Google +-->
                    <a class="gplus-ic">
                        <i class="fa fa-google-plus white-text mr-4"> </i>
                    </a>
                    <!--Linkedin -->
                    <a class="li-ic">
                        <i class="fa fa-linkedin white-text mr-4"> </i>
                    </a>
                    <!--Instagram-->
                    <a class="ins-ic">
                        <i class="fa fa-instagram white-text"> </i>
                    </a>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row-->

        </div>
    </div>

    <!-- Footer Links -->
    <div class="container text-center text-md-left mt-5">

        <!-- Grid row -->
        <div class="row mt-3">

            <!-- Grid column -->
            <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

                <!-- Content -->
                <h6 class="text-uppercase font-weight-bold">科技专家资源共享</h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>我们提供最全面的，最权威的论文下载,在这里你可以享受知识分享的乐趣  </p>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">我们所在</h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p> 学院路 37号，海淀区</p>
                <p> 北京航空航天大学</p>
                <p>  软件学院</p>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">友情链接</h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>
                    <a href="http://epub.cnki.net/kns/default.htm">中国知网</a>
                </p>
                <p>
                    <a href="https://www.csdn.net/">CSDN</a>
                </p>
                <p>
                    <a href="https://www.openacademic.ai/oag/">Open Academic</a>
                </p>
                <p>
                    <a href="http://219.224.166.3:8011/">在线协作平台</a>
                </p>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">联系我们</h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>
                    <i class="fa fa-home mr-3"></i>  北京航空航天大学</p>
                <p>
                    <i class="fa fa-envelope mr-3"></i> info@example.com</p>
                <p>
                    <i class="fa fa-phone mr-3"></i> 12345678</p>
                <p>
                    <i class="fa fa-print mr-3"></i>123577818</p>

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

    </div>
    <!-- Footer Links -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">Copyright &copy; Gryffindor Group 2018.</div>
    <!-- Copyright -->

</footer>
<!-- Footer -->
<script>
    function infomation(error, info) {
        $('#infoModal').modal('show');
        if (error) {
            document.getElementById('infoModalTitle').innerText = '警告';
        } else {
            document.getElementById('infoModalTitle').innerText = '提示';
        }
        document.getElementById('information').innerText = info;
    }

</script>
</body>
</html>

