<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EJ14.Login" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
   <br />
   <br />
   <br />
 
   
        <div class="container">
            <div class="form-horizontal">
                <div class="form-group">
                 <asp:Label ID="UName" runat="server" CssClass="col-md-2 control-label" Text="User Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="Please enter User Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                 </div>

             <div class="form-group">
                <asp:Label ID="Pass" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                 <div class="col-md-3">
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>
            </div>

            <div class="form-group">
                 <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text=""></asp:Label>
                    <div class="col-md-4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="90px" CssClass="well"/>
              
                     
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Register.aspx">New user? Register here!</asp:HyperLink>
                    
                    </div>
            </div>
              


    </div>
    </div>
  
</asp:Content>