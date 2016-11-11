<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="project1.register" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.1.1.js"></script>
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 15%;
            height: 50px;
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
    </style>
    </head>

<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="HomeAdmin">
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
                <h2 class="page-header">สมัครสมาชิก</h2>
                </div>
            </div>
  
    
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="Email">อีเมล์</label>
      <div class="controls">
        <asp:TextBox type="text" id="txtEmail" name="Email" placeholder="" class="input-xlarge" runat="server"></asp:TextBox>
          <asp:Label ID="lblEmail" runat="server"></asp:Label>
        <p class="help-block">กรุณากรอกอีเมล์</p>
      </div>
        </div>
 
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="Password">พาสเวิร์ด</label>
        <div class="controls">
        <asp:TextBox type="password" id="txtPassword" name="Password" placeholder="" class="input-xlarge" runat="server"/>
            <asp:Label ID="lblpassword" runat="server"></asp:Label>
        <p class="help-block">กรุณาใส่พาสเวิร์ด อย่างน้อย 4 ตัว</p>
            </div>
      </>
    </div>
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"  for="Password_confirm">ยืนยันพาสเวิร์ด</label>
      <div class="controls">
        <asp:TextBox type="password" id="txtPassword_confirm" name="Password_confirm" placeholder="" class="input-xlarge" runat="server"/>
          <asp:Label ID="lblpasswordconfirm" runat="server"></asp:Label>
        <p class="help-block">ยืนยันพาสเวิร์ด</p>
      </div>
    </div>

      <div class="control-group">
     <!--Firstname-->
      <label class="control-label" >ชื่อ</label>
      <div class="controls">
        <asp:TextBox runat="server" type="text" id="txtfirstName" name="firstName" placeholder="" class="input-xlarge"/>
      </div>
    </div>

       <div class="control-group">
     <!--lastname-->
      <label class="control-label" >นามสกุล</label>
      <div class="controls">
        <asp:TextBox runat="server" type="text" id="txtlastName" name="lastName" placeholder="" class="input-xlarge"/>
      </div>
    </div>

        <div class="control-group">
     <!--Address-->
      <label class="control-label" >ที่อยู่</label>
      <div class="controls">
        <asp:TextBox TextMode="multiline" runat="server" class="auto-style1" id="txtaddress"/>
      </div>
    </div>

      <div class="control-group">
     <!--City-->
      <label class="control-label" >อำเภอ</label>
      <div class="controls">
        <asp:TextBox runat="server" type="text" id="txtcity" name="city" placeholder="" class="input-xlarge"/>
      </div>
    </div>

        <div class="control-group">
     <!--Province-->
      <label class="control-label" >จังหวัด</label>
      <div class="controls">
        <asp:TextBox runat="server" type="text" id="txtprovince" name="province" placeholder="" class="input-xlarge"/>
      </div>
    </div>

        <div class="control-group">
     <!--Tel no.-->
      <label class="control-label" >หมายเลขโทรศัพท์</label>
      <div class="controls">
        <asp:TextBox runat="server" type="text" id="txttelNo" name="telNo" placeholder="" class="input-xlarge"/>
      </div>
    </div>

        <div class="control-group">
     <!--Zipcode-->
      <label class="control-label" >รหัสไปรษณีย์</label>
      <div class="controls">
        <asp:TextBox runat="server" type="text" id="txtzipCode" name="zipCode" placeholder="" class="input-xlarge"/>
      </div>
    </div>


 
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
          <br />
       <asp:Button id="registerbutton" class="btn btn-primary" runat="server"  Text="Register" OnClick="registerbutton_Click"  />
      </div>
    </div>
            </div>
 

            <br />


      
        
                      
    
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>   
    </form>
</body>
</html>
