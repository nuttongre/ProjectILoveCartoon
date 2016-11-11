<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rend.aspx.cs" Inherits="project1.rend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.1.1.js"></script>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style2 {
            display: block;
            max-width: 100%;
            height: auto;
            float: left;
        }

        .h {
            position: relative;
        }

        .bg-1 {
            background-color: #1abc9c; /* Green */
            color: #ffffff;
        }
        .auto-style3 {
            left: 0px;
            top: -1px;
        }
        .auto-style4 {
            left: 0px;
            top: 0px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="HomeAdmin.aspx">
                        <img alt="Brand" src="pic/logoH.png" />
                    </a>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    </button>

                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="HomeAdmin.aspx">Home</a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Record
        <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="rend.aspx">Rend</a></li>
                                <li><a href="back.aspx">Back</a></li>

                            </ul>
                        </li>
                        <li>
                            <a href="bookadmin.aspx">Book</a>
                        </li>

                        
                        
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Add
        <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="addbook.aspx">Book</a></li>
                                <li><a href="addpromotion.aspx">Promotion</a></li>

                            </ul>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="register.aspx"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                        <li><a href="login.aspx"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                    </ul>

                </div>
            </div>

        </nav>
        <br /><br />
        <div class="container">

            <div class="row">


                <div class="col-md-8">

                    <h2 class="page-header">บันทึกข้อมูลการยืม</h2>
                </div>
            </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <div class="col-md-5">

                            <h4>รหัสผู้ยืม : 
                   <asp:TextBox type="textbox" class="auto-style1" id="inputUserIDrend" placeholder="" runat="server" CssClass="auto-style3" ></asp:TextBox>
                   </h4>
                        </div>
                        <div class="col-md-5">
                            <h4>รหัสหนังสือ : 
                            <asp:TextBox type="textbox" class="auto-style1" id="BookIDrend" placeholder="" runat="server" CssClass="auto-style4" ></asp:TextBox>
                   </h4>
                            </div>
                        <div class="col-md-2">
                            <h4>
                       <asp:Button class="btn btn-primary" ID="findrend" runat="server" text="ตกลง" OnClick="findrend_Click" /></h4>
                   </div>
                    </div>
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                    <br /><br /><br />

                    <div class="col-md-12">
                        <div class="text-center">
                     <asp:GridView ID="GridViewrend" runat="server" CssClass="table table-hover table-striped"  >
                         
                         
                     </asp:GridView>
                        </div>
                        <br />
                        <asp:Label ID="lbltotal" runat="server"></asp:Label></td>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblShowPrice" runat="server" Text=""></asp:Label><br />
                        </td>
                        <br /><br /><br /><br />
                        </div>
                    <div class="col-md-offset-4">
                        <div class="col-md-3">
                        <asp:Button class="btn btn-success" ID="comfirmrend" runat="server" text="ยืนยัน" OnClick="comfirmrend_Click1" />
                            </div>
                        <div class="col-md-3">
                        <asp:Button class="btn btn-danger" ID="cancelrend" runat="server" text="ยกเลิก" />
                        </div>
                        </div>

                </div>


            <br /><br /><br /><br /><br /><br /><br /><br />
            <footer>
                <div class="row">
                    <div class="auto-style1">
                        <img src="pic/footer.jpg" class="auto-style2" alt="Responsive image" />
                    </div>
                </div>
            </footer>
        </div>
    </form>
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
