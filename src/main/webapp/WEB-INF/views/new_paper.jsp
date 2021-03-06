<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 卡牌小希
  Date: 2018/6/21
  Time: 13:12
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
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!--header-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <nav class="navbar navbar-light bg-light">
        <a class="navbar-brand mb-0 h1" href="#">Gryffindor</a>
    </nav>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/discover">发现<span class="sr-only">(current)</span></a>
            </li>
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
                    <a class="dropdown-item" href="#">数学</a>
                    <a class="dropdown-item" href="#">生物</a>
                    <a class="dropdown-item" href="#">物理</a>
                    <a class="dropdown-item" href="#">哲学</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    机构
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                    <a class="dropdown-item" href="#">清华</a>
                    <a class="dropdown-item" href="#">北大</a>
                    <a class="dropdown-item" href="#">中科院</a>
                    <a class="dropdown-item" href="#">北航</a>
                </div>
            </li>
            <li class="nav-item ">
                <form class="form-inline my-2 my-lg-0" action="/search" method="post">
                    <input name="query" class="form-control mr-sm-2" type="search" placeholder="关键字" aria-label="Search">
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
                <div class="jumbotron" style="background: #FFFFFF">
                    <h5><i class="fas fa-book"></i><a href="#" class="btn">某个人拿了一个东西</a></h5>
                    <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                    <hr class="my-4">
                    <div class="row">
                        <div class="col-md-3">
                            <i class="fas fa-address-card"></i>
                            作者
                        </div>
                        <div class="col-md-3">
                            <i class="fas fa-calendar-alt"></i>
                            2018-4-6
                        </div>
                        <div class="col-md-3">
                            <i class="fas fa-fire"></i>
                            热度1888
                        </div>
                        <div class="col-md-3">
                            <i class="fas fa-bookmark"></i>
                            id #1
                        </div>
                    </div>
                </div>
                <div class="jumbotron" style="background: #FFFFFF">
                    <h5><i class="fas fa-book"></i><a href="#" class="btn">某个人拿了一个东西</a></h5>
                    <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                    <hr class="my-4">
                    <div class="row">
                        <div class="col-md-3">
                            <i class="fas fa-address-card"></i>
                            作者
                        </div>
                        <div class="col-md-3">
                            <i class="fas fa-calendar-alt"></i>
                            2018-4-6
                        </div>
                        <div class="col-md-3">
                            <i class="fas fa-fire"></i>
                            热度1888
                        </div>
                        <div class="col-md-3">
                            <i class="fas fa-bookmark"></i>
                            id #1
                        </div>
                    </div>
                </div>
                <c:forEach var="paper" items="${list}">
                    <div class="jumbotron" style="background: #FFFFFF">
                        <h5><i class="fas fa-book"></i><a href="#" class="btn">${paper[0].name}</a></h5>
                        <p class="lead">${paper[0].abstract1}</p>
                        <hr class="my-4">
                        <div class="row">
                            <div class="col-md-3">
                                <i class="fas fa-address-card"></i>${paper[1].username}
                            </div>
                            <div class="col-md-3">
                                <i class="fas fa-calendar-alt"></i>${paper[0].time}
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
                <div class="jumbotron" style="background: #FFFFFF">
                    <h5><i class="fas fa-book"></i><a href="#" class="btn">某个人拿了一个东西</a></h5>
                    <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                    <hr class="my-4">
                    <div class="row">
                        <div class="col-md-3">
                            <i class="fas fa-address-card"></i>
                            作者
                        </div>
                        <div class="col-md-3">
                            <i class="fas fa-calendar-alt"></i>
                            2018-4-6
                        </div>
                        <div class="col-md-3">
                            <i class="fas fa-fire"></i>
                            热度1888
                        </div>
                        <div class="col-md-3">
                            <i class="fas fa-bookmark"></i>
                            id #1
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">最近新闻</span>
            </h4>
            <ul class="list-group mb-3">
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">nmsl</h6>
                        <small class="text-muted">你是真的牛逼</small>
                    </div>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">nmsl</h6>
                        <small class="text-muted">你是真的牛逼</small>
                    </div>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">nmsl</h6>
                        <small class="text-muted">你是真的牛逼</small>
                    </div>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">nmsl</h6>
                        <small class="text-muted">Never mind scandals and libel</small>
                    </div>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">rsndm</h6>
                        <small class="text-muted">燃烧你的梦</small>
                    </div>
                </li>
            </ul>

            <form class="card p-2">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Promo code">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary">Redeem</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--//header-->
<!--w3l-->
<!--//footer-->
<!-- Footer -->
<footer class="page-footer font-small unique-color-dark mt-4">

    <div style="background-color: #888888;">
        <div class="container">

            <!-- Grid row-->
            <div class="row py-4 d-flex align-items-center">

                <!-- Grid column -->
                <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                    <h6 class="mb-0">Get connected with us on social networks!</h6>
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
                <h6 class="text-uppercase font-weight-bold">Company name</h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>Here you can use rows and columns here to organize your footer content. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">Products</h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>
                    <a href="#!">MDBootstrap</a>
                </p>
                <p>
                    <a href="#!">MDWordPress</a>
                </p>
                <p>
                    <a href="#!">BrandFlow</a>
                </p>
                <p>
                    <a href="#!">Bootstrap Angular</a>
                </p>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">Useful links</h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>
                    <a href="#!">Your Account</a>
                </p>
                <p>
                    <a href="#!">Become an Affiliate</a>
                </p>
                <p>
                    <a href="#!">Shipping Rates</a>
                </p>
                <p>
                    <a href="#!">Help</a>
                </p>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">Contact</h6>
                <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>
                    <i class="fa fa-home mr-3"></i> New York, NY 10012, US</p>
                <p>
                    <i class="fa fa-envelope mr-3"></i> info@example.com</p>
                <p>
                    <i class="fa fa-phone mr-3"></i> + 01 234 567 88</p>
                <p>
                    <i class="fa fa-print mr-3"></i> + 01 234 567 89</p>

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

