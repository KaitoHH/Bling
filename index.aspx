<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="bling.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bling - Home</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .screen {
            padding-top: 10%;
            margin: 0;
            padding-bottom: 15%;
        }

        .stittle {
            padding-top: 15%;
            padding-left:0px;
            padding-right:0px;
        }

        .lnav {
            background-color: rgba(0, 0, 0, 0.5);
            top: 40%;
            left: 5%;
            position: fixed;
            z-index: 99;
            font-size: 200%;
            text-align:center;
        }
        .lnav a{
            color:#fff;
        }

        .lnav a:hover {
            background: rgba(255, 255, 255, 0.75);
            -webkit-animation: changec 1s;
            text-decoration: none;
        }
        .lnav a:active {
            background: rgba(255, 255, 255, 0.5);
            -webkit-animation: changec 1s;
        }

        .lnav p {
            margin-bottom: 0px;
        }
        #small{
            font-size:67%
        }
        .stittle h1,p{
            font-family:'Microsoft YaHei UI'
        }
        #myCarousel{
            padding-top:51px;
        }
        .carousel-caption h1{
            font-size:5vw;
        }
        .carousel-caption{
            padding-bottom:5px;
        }
    </style>
</head>
<body>
    <div class="lnav">
        <p>
            <a href="#m1">●</a>
        </p>
        <p>
            <a href="#m2">●</a>
        </p>
        <p>
            <a href="#m3">●</a>
        </p>
        <p>
            <a href="#m4">●</a>
        </p>
        <p id="small">
            <a href="#m0">▲</a>
        </p>
    </div>

    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>

                </button>
                <a class="navbar-brand" href="index.aspx">Bling</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="bling.aspx"><b>Let's Bling</b></a></li>
                    <li><a href="board.aspx"><b>Message Board</b></a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>

    <a name="m0"></a>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators" style="margin-bottom:0px;">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="img/s01.jpg" alt="First slide" />
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Bling - Blink to do.</h1>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="second-slide" src="img/s02.jpg" alt="Second slide" />
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Bling - Blink to do.</h1>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="third-slide" src="img/s03.jpg" alt="Third slide" />
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Bling - Blink to do.</h1>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <a name="m1"></a>
    <div class="jumbotron screen" style="background-color: #9CF;">
        <div class="container">
            <div class="col-md-6 stittle">
                <h1>Welcome! Bling.</h1>
                <p>Bling 源自单词Blink, 是一个自动短句生成器.</p>
            </div>
            <div class="col-md-6">
                <img src="img/homescreen02.png" class="img-responsive" />
            </div>
        </div>
    </div>

    <a name="m2"></a>
    <div class="jumbotron screen" style="background-color: #FFC;">
        <div class="container">
            <div class="col-md-6 stittle">
                <h1>Bling - 灵感的源泉.</h1>
                <p>Bling 随机产生一个时间、一个地点、一个名词和一个形容词并将他们组合在一起.</p>
            </div>
            <div class="col-md-6">
                <img src="img/homescreen01.png" class="img-responsive" />
            </div>
        </div>
    </div>

    <a name="m3"></a>
    <div class="jumbotron screen" style="background-color: #9C6;">
        <div class="container">
            <div class="col-md-6 stittle">
                <h1>Bling - 即点即用.</h1>
                <p>只需一点，Bling 自动展现一句短句到你的面前，激发你内心的灵感.</p>
            </div>
            <div class="col-md-6">
                <img src="img/homescreen02.png" class="img-responsive" />
            </div>
        </div>
    </div>

    <a name="m4"></a>
    <div class="jumbotron screen" style="background-color: #CCC;">

        <div class="container">
            <div class="col-md-6 stittle">
                <h1>Bling - Blink to do.</h1>
                <p>还在想什么？赶紧使用吧.</p>
                <a class="btn btn-lg btn-primary" href="bling.aspx" role="button">开始使用</a>
                <a class="btn btn-lg btn-success" href="board.aspx" role="button">留言板</a>
                <p style="text-align:right">—— By HuangHui </p>
            </div>
            <div class="col-md-6">
                <img src="img/homescreen01.png" class="img-responsive" />
            </div>
        </div>
    </div>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
