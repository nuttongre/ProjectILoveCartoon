<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="project1.book" %>

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
                <br />   <br />
        <div class="container">

        <div class="row">

            
            <div class="col-md-8">
                <h2 class="page-header">ข้อมูลหนังสือ</h2>
                </div>
            </div>

            
           <div class="form-group">
               <div class="col-md-12">
               <div class="col-sm-3">
                   <h2>ประเภท 
                   <asp:DropDownList class="btn btn-info dropdown-toggle" ID="typebook" runat="server" AutoPostBack="True" OnTextChanged="typebook_TextChanged" OnSelectedIndexChanged="typebook_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="NameType" DataValueField="NameType">
                       <asp:ListItem Selected="True">--เลือกประเภท--</asp:ListItem>
                   </asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PreProjectConnectionString %>" SelectCommand="SELECT [NameType] FROM [Type1]"></asp:SqlDataSource>
                   </h2>
               </div>
               <div class="col-sm-3">
                   <h2>ชื่อเรื่อง 
                   <asp:DropDownList class="btn btn-info dropdown-toggle" ID="namebook" runat="server" AutoPostBack="True">
                       <asp:ListItem>--เลือกชื่อเรื่อง--</asp:ListItem>
                   </asp:DropDownList></h2>
               </div>
                   <div class="col-sm-3">
                       <h2>เล่มที่
                       <asp:DropDownList class="btn btn-info dropdown-toggle" ID="volumebook" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NameType" DataValueField="NameType">
                           <asp:ListItem>--เลือกเล่มที่--</asp:ListItem>
                       </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PreProjectConnectionString %>" SelectCommand="SELECT [NameType] FROM [Type]"></asp:SqlDataSource>
                       </h2>
                   </div>
                   <div class="col-sm-3">
                       <h2>
                       <asp:Button class="btn btn-primary" ID="findbook" runat="server" text="ค้นหา" OnClick="findbook_Click1" />
                          
                       </h2>
                   </div>
                   
                   </div>
               </div>
            <br /> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br /><br /><br />
            <br />
            <div class="form-group">
               <div class="col-md-12">
                   <div class="col-md-5">
                      <%-- <img src="pic/นารุโตะ.jpg"class="img-rounded img-responsive" alt="Cinque Terre" width="300" height="250" />--%>
                       
                           <ItemTemplate>
                &nbsp;
                </ItemTemplate>
                       </asp:DataList>&nbsp;<asp:DataList ID="DataList1" runat="server" Width="151px">
                <Itemtemplate>
                     <img src="<%#Eval("Picture")%>"width="300" height="250" />
                    </Itemtemplate>
            </asp:DataList>
                   </div>
                   <div class="col-md-7">
                       <h4>ชื่อเรื่อง : 
                       <%--<label for="namebook" class="control-label">นารุโตะ </label>--%>
                           <asp:Label ID="lblnamebook" for="namebook" class="control-label" runat="server" Text=""></asp:Label>
                       </h4>                 
                       <h4>ประเภท  : 
                       <%--<label for="namebook" class="control-label">ต่อสู้</label>--%>
                           <asp:Label ID="lbltypebook" for="namebook" class="control-label" runat="server" Text=""></asp:Label>
                       </h4>
                       <h4>เล่มที่ : 
                       <label for="namebook" class="control-label">1</label></h4>
                       <h4>ราคาเช่า : 
                       <%--<label for="namebook" class="control-label">4</label> บาท --%>
                           <asp:Label ID="lblprice" for="namebook" class="control-label" runat="server" Text=""></asp:Label>
                       &nbsp;บาท </h4>
                       <h4>จำนวนหนังสือที่มี : 
                       <%--<label for="namebook" class="control-label">3 </label>--%>  
                           <asp:Label ID="lblamount" for="namebook" class="control-label" runat="server" Text=""></asp:Label>
                           &nbsp;เล่ม
                           
                       </h4>
                       <h4>เรื่องย่อ : 
                       <%--<label for="namebook" class="control-label"> <br />
                           12 ปีก่อน ปีศาจจิ้งจอกเก้าหางได้ตื่นขึ้นจากการหลับใหลยาวนานเป็นเวลาหลายพันปี ได้ออกอาละวาดทำลายบ้านเรือนชีวิตทรัพย์สินของผู้คนบริสุทธิ์เป็นจำนวนมาก 
จนกระทั่ง โฮคาเงะรุ่นที่ 4 หัวหน้าของหมู่บ้านโคโนฮะ ได้สละชีวิตด้วยการการผนึกร่างของปีศาจจิ้งจอกเก้าหางไว้ในร่างของทารกน้อยนาม อุซึมากิ นารุโตะ อีก12 ปีผ่านไป นารุโตะได้เติบโตขึ้น ณ หมู่บ้าน โคโนฮะ และใฝ่ฝันว่าจะเป็นโฮคาเงะรุ่นต่อไป
                           
                           </label>--%>
                           <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>

                       </h4>
                       <br />

                   </div>



                   </div>
                </div>
            </div>

            
            <br /><br /><br />
             <footer>
            <div class="row">
                <div class="auto-style1">
                    <img src="pic/footer.jpg" class="auto-style2" alt="Responsive image"/>
                </div>
            </div>           
        </footer>
            
        
      
        
                      
    
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>  
    </form>
</body>
</html>
