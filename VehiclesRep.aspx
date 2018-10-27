<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VehiclesRep.aspx.cs" Inherits="EJ14.WebForm2" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
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
                    <asp:Label ID="LabelUN" runat="server" CssClass="col-md-2 control-label" Text="User Name"></asp:Label>
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
 
                    
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [Name], [Description], [Provider] FROM [tblVehicles]"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" OnRowCommand="RowCommand" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Provider" HeaderText="Provider" SortExpression="Provider" />
                                <asp:ButtonField ButtonType="Button" CommandName="SolicitarBhv" Text="Request" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
 
                    
                    </div>





    </div>
</div>
</div>
</div>

</asp:Content>