<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EJ14.WebForm6" MasterPageFile="~/MasterPage.master"%>


 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
   <br />
   <br />
   <br />

      <div>

        <table class="center-page">
            <tr>
                <td class="auto-style2">User name:</td>
                <td>
                    <asp:TextBox ID="UserName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td>
                    <asp:TextBox ID="ConfirmPasword" runat="server" OnTextChanged="TextBox3_TextChanged" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmPasword" ErrorMessage="Confirm your password" ForeColor="Red"></asp:RequiredFieldValidator>
                    .
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPasword" ErrorMessage="Password must match" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Type of user:</td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Text="Customer" GroupName="radioBtn"/>
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Provider" GroupName="radioBtn"/>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Plese select a type of user" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Email" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    .
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Country</td>
                <td>
                    <asp:DropDownList ID="Country" runat="server">
                        <asp:ListItem>Select Item</asp:ListItem>
                        <asp:ListItem>Portugal</asp:ListItem>
                        <asp:ListItem>Spain</asp:ListItem>
                        <asp:ListItem>England</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="73px" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
   
    </asp:Content>
