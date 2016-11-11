<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.1.1.js"></script>
    <style type="text/css">
        .h{
            position :relative;
        }

        .auto-style1 {
            display: block;
            width: 50%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
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
                <h2 class="page-header">Login</h2>
                </div>
            </div>

  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <asp:TextBox type="email" class="auto-style1" id="txtEmail" placeholder="Email" runat="server" ></asp:TextBox>
    </div>
  </div>
          <br />
  <br />
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <asp:TextBox type="password" class="auto-style1" id="txtPassword" placeholder="Password" runat="server"></asp:TextBox>
    </div>
  </div>
           <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <asp:Button id="loginbutton" class="btn btn-primary" runat="server"  Text="Login" OnClick="loginbutton_Click"  />

        
    </div>
  </div>
          </div>
    </form>
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
