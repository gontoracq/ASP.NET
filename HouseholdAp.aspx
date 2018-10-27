<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HouseholdAp.aspx.cs" Inherits="EJ14.WebForm3" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
   <br />
   <br />
   <br />
   <br />

     <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />

            <!-- Sign in start  -->

        <div class="container">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="UName" runat="server" CssClass="col-md-2 control-label" Text="User Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Pass" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
            </div>

            <!--- Sign in end  -->

             <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Product Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" CssClass="text-danger" runat="server" ErrorMessage="This field is Required!" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescription" CssClass="text-danger" runat="server" ErrorMessage="This field is Required!" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                </div>

            </div>

                <div class="form-group">
                     <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text=""></asp:Label>
                    <div class="col-md-4">
                        <asp:Button ID="btonAdd"  CssClass="well" runat="server" Text="Add" OnClick="btnAdd_Click"></asp:Button>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [Name], [Description], [Provider] FROM [tblHouse]"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" OnRowCommand="RowCommand" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Provider" HeaderText="Provider" SortExpression="Provider" />
                                <asp:ButtonField ButtonType="Button" CommandName="SolicitarBhv" Text="Request" />
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                    </div>
                </div>

            </div>





    </div>

</div>

</asp:Content>