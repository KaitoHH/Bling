<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bling.aspx.cs" Inherits="bling.bling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bling - Let's do it</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .rand {
            text-shadow: 0 1px 2px rgba(0,0,0,0.3);
            font-size: 7vw;
            font-weight: 600;
            color: #FFF;
            font-family: 'Microsoft YaHei UI';
        }

        .drand {
            padding-top: 10%;
            text-align: center;
        }
    </style>
</head>
<body style="background-color: #069;">
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
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active"><a href="#"><b>Let's Bling</b></a></li>
                    <li><a href="board.aspx"><b>Message Board</b></a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>
    <form runat="server">
        <div class="jumbotron" style="margin: 0; background-color: rgba(0, 0, 0, 0.00)">
            <div class="container drand">
                <asp:Label ID="Label1" runat="server" Text="Label" class="rand"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" class="rand"></asp:Label>
                <p style="text-align: right">
                    <input type="button" value="shuffle" onclick="location = location" class="btn btn-lg btn-primary" />
                </p>

                <p style="text-align: right">
                    <asp:Button ID="Button1" runat="server" Text="like:)" class="btn btn-lg btn-success" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="dislike:(" class="btn btn-lg btn-danger" OnClick="Button2_Click" />
                </p>
                <p style="text-align: right; color: #FFF; font-size: 1.8vw">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    /
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </p>
            </div>
        </div>
    </form>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
