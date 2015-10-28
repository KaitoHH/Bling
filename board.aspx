<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="board.aspx.cs" Inherits="bling.board" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bling - Board</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style>
        h1 {
            font-family: 'Microsoft YaHei UI';
            font-size: 4vw;
            font-weight: 500;
        }
    </style>
</head>
<body>
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
                    <li><a href="bling.aspx"><b>Let's Bling</b></a></li>
                    <li class="active"><a href="#"><b>Message Board</b></a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>
    <form runat="server">
        <div class="container" style="padding-top: 60px">
            <%=msg%>
            <div class="row">
                <div class="col-md-8"">
                    <div class="page-header">
                        <h1>留言板<small>你有什么想说的:)</small></h1>
                    </div>
                    <%=text%>
                </div>
                <div class="col-md-4" style="padding-top: 13%">
                    <p>
                        你可以在这里写下你的意见，建议或任何你想说的话.
                    </p>

                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Nickname" MaxLength="16"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" Rows="5" TextMode="MultiLine" placeholder="Message" Style="margin-bottom: 10px"></asp:TextBox>
                    <p style="text-align: right">
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#clear">
                            清空
                        </button>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#submit">
                            提交
                        </button>

                    </p>

                </div>
            </div>
        </div>


        <!-- Modal -->
        <div class="modal fade" id="clear" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">确认</h4>
                    </div>
                    <div class="modal-body">
                        你确定要清空输入的内容吗？
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <asp:Button ID="Button1" runat="server" Text="Yes" class="btn btn-primary" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="submit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel2">确认</h4>
                    </div>
                    <div class="modal-body">
                        你确定要发送到留言板吗？
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <asp:Button ID="Button2" runat="server" Text="Yes" class="btn btn-primary" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <hr/>
    <p style="text-align:center;">
        <small>Bling - Blink to do.     By HuangHui© 2015</small>
    </p>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
