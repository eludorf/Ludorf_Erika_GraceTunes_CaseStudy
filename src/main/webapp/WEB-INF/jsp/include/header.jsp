<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" class="a" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link href="../../../pub/css/landing.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/74c9f6574b.js" crossorigin="anonymous"></script>

</head>

<header>
    <div class="logo"><a href="../../../pub/images/GraceTunes%20Logo.png"><img src="../../../pub/images/GraceTunes%20Logo.png"></a>
    </div>
    <nav class="navbar navbar-expand-lg ">

        <div class="container-fluid" id="nav-container">

            <a class="navbar-brand" href="#">
                <img class="brand-logo" src="../../../pub/images/logo.png" alt="">
            </a>

            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navmobile"
                    aria-controls="navmobile" aria-expanded="false" aria-label="Toggle navigation">
                <i title="" class="fa fa-bars"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarcustom">
                <div id="middle-links">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="landing">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="addsong">Add a Song</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="likedsongs">Liked Songs<i class="fa-regular fa-heart"></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="search">Search<i class="fa-solid fa-magnifying-glass"></i></a>
                        </li>
                        <sec:authorize access="!isAuthenticated()">
                        <li class="nav-item">
                            <a class="nav-link" href="/user/login">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="register">Register</a>
                        </li>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                        <li class="nav-item">
                            <a class="nav-link" href="/login/logout">Logout</a>
                        </li>
                        </sec:authorize>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>