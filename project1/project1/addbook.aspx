<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addbook.aspx.cs" Inherits="project1.addbook" %>

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

                    <h2 class="page-header">เพิ่มข้อมูลหนังสือ</h2>
                </div>
            </div>
            <div class="form-group col-lg-offset-3">

                <div class="form-group">
                    <h4>
                        <label class="col-md-3">รหัสหนังสือ</label></h4>
                    <div class="col-md-6">
                        <asp:TextBox ID="addidbook" runat="server"></asp:TextBox>
                    </div>
                </div><br /><br />

                <div class="form-group">
                    <h4>
                        <label class="col-md-3">ชื่อหนังสือ</label></h4>
                    <div class="col-md-6">
                        <asp:TextBox ID="addnamebook" runat="server"></asp:TextBox>
                    </div>
                </div><br /><br />


                

                <!-- Modal -->
                <div class="modal fade" id="upimg" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">อัพรูปหนังสือ</h4>
                            </div>
                            <div class="modal-body">
                                <asp:FileUpload ID="FileUpload2" runat="server" Class="btn-primary" />
                            </div>
                            <div class="modal-footer">
                               <%-- <asp:button type="button" ID="btnupload" class="btn btn-success"  runat="server" text="Upload" OnClick="btnupload_Click"/>
                               
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>--%>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <h4>
                        <label class="col-md-3">ประเภทหนังสือ</label></h4>
                    <div class="col-md-6">
                        <asp:DropDownList ID="DropDownList1" class="btn btn-info dropdown-toggle" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NameType" DataValueField="NameType">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PreProjectConnectionString %>" SelectCommand="SELECT [NameType] FROM [Type1]"></asp:SqlDataSource>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </div>
                </div><br /><br />
                <div class="form-group">
                    <h4>
                        <label class="col-md-3">ราคาเช่า</label></h4>
                    <div class="col-md-6">
                        <asp:TextBox ID="addpricebook" runat="server"></asp:TextBox>
                    </div>
                </div><br /><br />
                <div class="form-group">
                    <h4>
                        <label class="col-md-3">จำนวน</label></h4>
                    <div class="col-md-6">
                    <asp:TextBox ID="addtotalbook" runat="server"></asp:TextBox>
                    </div>
                </div><br /><br />

                <div class="form-group">
                    <h4>
                        <label class="col-md-3">รูปหนังสือ </label>
                    </h4>
                    <div class="col-md-6">
                        <asp:FileUpload ID="FileUpload3" runat="server" />
                    </div>
                </div><br /><br />

                <div class="form-group">
                    <h4>
                        <label class="col-md-3">คำอธิบาย</label></h4>
                    <div class="col-md-6">
                        <asp:TextBox TextMode="multiline" runat="server" class="auto-style1" id="descriptionbook"/>
                    </div>
                    <br />
                </div>
                <div class="form-group col-lg-offset-3">
                    <br /><br />
                <asp:Button ID="submitaddbook" runat="server" Text="เพิ่มข้อมูล" Class="btn btn-success" OnClick="submitaddbook_Click"  />
                    </div>
            </div>

        <div class="col-md-12">

            <h2 class="page-header">ลบข้อมูลหนังสือ</h2>
            <br />
        </div>
        <div class="form-group col-lg-offset-3">
            <div class="form-group">
                    <h4>
                        <label class="col-md-4">รหัสหนังสือที่ต้องการลบ</label></h4>
                    <div class="col-md-8">
                    <asp:TextBox ID="deletepro" runat="server"></asp:TextBox>
                        <asp:Button ID="submindeletebook" runat="server" Text="ลบ" Class="btn btn-danger" OnClick="submindeletebook_Click" />
                        
                    </div></div>
            
        </div>


            <br />
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
