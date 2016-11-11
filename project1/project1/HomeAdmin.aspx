<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="project1.HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
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

                    <h2 class="page-header">การ์ตูนแนะนำ</h2>
                </div>
            </div>

            
                <div id="carousel-example-generic" class="carousel slide col-md-8 col-md-offset-2" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="pic/onepiece2.jpg" alt="Responsive image"/>
      <div class="carousel-caption">
        <h3 class="auto-style5">One piece เล่มที่ 73</h3>
      </div>
    </div>
    <div class="item">
      <img src="pic/นารุโตะ.jpg" alt="Responsive image"/>
      <div class="carousel-caption">
        <h3 class="auto-style5" >Naruto เล่มที่ 63</h3>
      </div>
    </div>
      <div class="item">
      <img src="pic/bleach-manga-188761.jpg"alt="Responsive image"/>
      <div class="carousel-caption">
        <h3 class="auto-style5" >Bleach เล่มที่ 60</h3>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>

                </div>
            
            
             <footer>
            <div class="row">
                <div class="auto-style1">
                    <br /><br /><br />
                    <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
                    <br /><br />
                    <asp:Label ID="lblpassword" runat="server" Text="Label"></asp:Label>
                    <br /><br />
                    <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                    <br /><br /><br /><br />
                    <img src="pic/footer.jpg" class="auto-style2" alt="Responsive image"/>
                </div>
            </div>           
        </footer>
            </div>




    </form>
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
