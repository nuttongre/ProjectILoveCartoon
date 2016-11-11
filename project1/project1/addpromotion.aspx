<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addpromotion.aspx.cs" Inherits="project1.addpromotion" %>

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

                    <h2 class="page-header">เพิ่มข้อมูลโปรโมชั่น</h2>
                </div>
            </div>
            <div class="form-group col-lg-offset-3" >
            <div class="col-md-9">
                <h3>
                    รหัสโปรโมชั่น
                    <asp:TextBox ID="addidpro" runat="server"></asp:TextBox>
                    <asp:Label ID="lblalertproid" runat="server"></asp:Label>
                    <br /><br />
                </h3>
                <h3>
                    ชื่อโปรโมชั่น
                    <asp:TextBox ID="addnamepro" runat="server" OnTextChanged="addnamepro_TextChanged"></asp:TextBox>
                    <br /><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="Lime" BorderColor="Blue" BorderStyle="Double" />
                    <br />
                </h3>
            <!-- Modal -->
            <div class="modal fade" id="upimg" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">อัพรูปโปรโมชั่น</h4>
                        </div>
                        <div class="modal-body">
                            <%--<asp:FileUpload ID="FileUpload1" runat="server" Class="btn-primary" />--%>

                        </div>
                        <div class="modal-footer">
                            <%--<asp:button type="button" ID="btnupload" class="btn  btn-success" data-dismiss="modal" runat="server" text="Upload"/>--%>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
                
      
                <asp:Button ID="submitaddpro" runat="server" Text="เพิ่มข้อมูล" Class="btn btn-success" OnClick="submitaddpro_Click" />
        
                </div>
                <br /><br />
                </div>
             <div class="col-md-8">

                    <h2 class="page-header">ลบข้อมูลโปรโมชั่น</h2>
                </div>
            <div class="form-group col-lg-offset-3" >
            <div class="col-md-7">
                <h3>
                    รหัสโปรโมชั่นที่ต้องการลบ
                    <asp:TextBox ID="deletepro" runat="server" ></asp:TextBox>
                    <br /><br />
                </h3>
                <asp:Button ID="submindeletepro" runat="server" Text="ลบ" Class="btn btn-danger" OnClick="submindeletepro_Click" />
                </div>
                </div>
            
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
