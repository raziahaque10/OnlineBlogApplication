<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onlineblogUI.aspx.cs" Inherits="OnlineBlogApplication.onlineblogUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <link href="blogstyle.css" rel="stylesheet" />
    <link href="reset.css" rel="stylesheet" />
</head>
<body>
    
    <div class="wrapper">
   <div class="header">
       
       <div class="logo"></div>
       <div class="banner"></div>
        
   </div>

    <div class="search"> </div>
    <div class="container">
        <div class="section">
            
            <div class="article">
                
            </div>
            <div class="articleBox">
            

            <form id="form1" runat="server">
                 <asp:TextBox ID="articleentryTextBox" runat="server" Height="98px" Width="384px"></asp:TextBox>
                 <asp:Button ID="articleSaveButton" runat="server" Text="Save" />
                </form>
                </div>

        </div>
        <div class="aside">
            <h1><a href="#">Create Artilcle</a></h1>
        </div>
         
           
    </div>
    <div class="footer"> </div>
</div>
</body>
</html>
