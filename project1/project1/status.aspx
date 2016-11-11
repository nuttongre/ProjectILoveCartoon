<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="status.aspx.cs" Inherits="project1.status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="home.aspx">
        <img alt="Brand" src="pic/logoH.png"/>
      </a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
              
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="home.aspx">Home</a>
                    </li>
                    <li>
                        <a href="book.aspx">Book</a>
                    </li>
                    <li>
                        <a href="status.aspx">Status</a>
                    </li>
                    
                </ul>
                <ul class="nav navbar-nav navbar-right">
      <li><a href="register.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
                    
            </div>
        </div>
    </nav>
                 <br /><br />
        <div class="container">

        <div class="row">

            
            <div class="col-md-8">
                <h2 class="page-header">สถานะการยืมของผู้ใช้</h2>
                </div>
            </div>
             <div class="form-group">
               <div class="col-md-4">
            <h4>ชื่อสมาชิก :  
                       <%--<label for="nameuser" class="control-label">ณัชฑภัทร อิ่มอุไร </label>--%>
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                   </h4> 
                   </div><br /> <br /> <br />
                 
                     <div class="col-md-12">
                         <div class="text-center">
                     <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped">
                     </asp:GridView>
                             </div>
                         </div>

                     </div>


                 </div>

                

            <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
             <footer>
            <div class="row">
                <div class="auto-style1">
                    <img src="pic/footer.jpg" class="auto-style2" alt="Responsive image"/>
                </div>
            </div>           
        </footer>
            

      
        
               
    </form>
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>
