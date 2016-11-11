<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="project1.home" %>

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
        .h{
            position :relative;
        }

        .auto-style3 {
            font-size: large;
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
  
                <h2 class="page-header">การ์ตูนแนะนำ</h2>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#rank" style="width: 170px">การ์ตูนยอดนิยม</button>

            <!-- Modal -->
            <div class="modal fade" id="rank" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">อันดับการ์ตูนยอดนิยม</h4>
                        </div>
                        <div class="modal-body">
                            
                                <div class="text-center">
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped"></asp:GridView></div>
                            
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

                
                <br />
                    <h2>
                    <asp:Button ID="Button2" runat="server" class="btn btn-success auto-style3"  Height="50px" OnClick="Button2_Click" Text="โปรโมชั่น" Width="170px" />
            </h2>
                        <!-- Modal -->
            <div class="modal fade" id="Promotion" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">โปรโมชั่น</h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                <img src="pic/Promotion1 test.png" alt="Responsive image" />
                                <br />
                                <img src="pic/Promotion2.png" alt="Responsive image" style="width:100%"/>
                            </p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

                </div>

            <div id="carousel-example-generic" class="carousel slide col-md-8 " data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="pic/onepiece2.jpg" alt="Responsive image"/>&nbsp;<div class="carousel-caption">
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
            </div>
                
            
            
             <footer>
            <div class="row">
                <div class="auto-style1">
                    <br />
                    
                    <br />
                  <center><asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                <img src="<%#Eval("Picpromotion")%>"width="500" height="250" />
                </ItemTemplate>

                    </asp:DataList>
                       </center>
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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
