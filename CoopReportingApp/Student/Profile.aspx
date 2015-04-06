<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.Master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Student_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Profile</h3>
    <div class="row">
        <div class="col-md-12">
            <asp:Label ID="lblMessage" Font-Size="Large" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <asp:Label ID="Label1" runat="server" Text="Student ID:"></asp:Label>
            <asp:TextBox ID="txtSId" Text="300718283" CssClass="form-control" placeholder="StudentID" runat="server" MaxLength="9" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student Id Required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtSId"
                runat="server" SetFocusOnError="True" />
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label2" runat="server" Text="Student First Name:"></asp:Label>
            <asp:TextBox ID="txtSFName" CssClass="form-control" placeholder="Student First Name" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student First Name Required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtSFName"
                runat="server" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="First Name should be characters" ForeColor="Red" Font-Size="X-Small"
                ValidationExpression="[A-Za-z./ ]+$" ControlToValidate="txtSFName" runat="server" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label17" runat="server" Text="Student Last Name:"></asp:Label>
            <asp:TextBox ID="txtSLName" CssClass="form-control" placeholder="Student Last Name" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student Last Name Required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtSLName"
                runat="server" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Last Name should be characters" ForeColor="Red" Font-Size="X-Small"
                ValidationExpression="[A-Za-z./ ]+$" ControlToValidate="txtSLName" runat="server" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
            <asp:TextBox ID="txtAddress1" CssClass="form-control" placeholder="Address1" runat="server" ReadOnly="True"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label4" runat="server" Text="Address2:"></asp:Label>
            <asp:TextBox ID="txtAddress2" CssClass="form-control" placeholder="Address2" runat="server" ReadOnly="True"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
            <asp:TextBox ID="txtCity" CssClass="form-control" placeholder="City" runat="server" ReadOnly="True"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label6" runat="server" Text="Province:"></asp:Label>
            <asp:DropDownList CssClass="form-control" ID="ddlProvince" runat="server" Enabled="False">
                <asp:ListItem>Select One</asp:ListItem>
                <asp:ListItem>Alberta</asp:ListItem>
                <asp:ListItem>British Columbia </asp:ListItem>
                <asp:ListItem>Manitoba</asp:ListItem>
                <asp:ListItem>New Brunswick</asp:ListItem>
                <asp:ListItem>Newfoundland and Labrador</asp:ListItem>
                <asp:ListItem>Nova Scotia</asp:ListItem>
                <asp:ListItem>Ontario</asp:ListItem>
                <asp:ListItem>Prince Edward Island</asp:ListItem>
                <asp:ListItem>Quebec</asp:ListItem>
                <asp:ListItem>Saskatchewan</asp:ListItem>
            </asp:DropDownList>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label12" runat="server" Text="Postal Code:"></asp:Label>
            <asp:TextBox ID="txtPostalCode" CssClass="form-control" placeholder="" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RegularExpressionValidator ErrorMessage="Invalid Postal Code" ForeColor="Red" Font-Size="X-Small"
                ControlToValidate="txtPostalCode" runat="server" SetFocusOnError="True" ValidationExpression="^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$"></asp:RegularExpressionValidator>

            <%-- <asp:RequiredFieldValidator ErrorMessage=" required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label7" runat="server" Text="Program:"></asp:Label>
            <asp:TextBox ID="txtProgram" CssClass="form-control" placeholder="Program" runat="server" ReadOnly="True"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label8" runat="server" Text="Email Address:"></asp:Label>
            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email Address" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Email required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtEmail"
                runat="server" SetFocusOnError="True" />
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label18" runat="server" Text="Phone Number:"></asp:Label>
            <asp:TextBox ID="txtPhoneNo" CssClass="form-control" placeholder="Phone Number" runat="server" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label19" runat="server" Text="Mobile Number:"></asp:Label>
            <asp:TextBox ID="txtMobileNo" CssClass="form-control" placeholder="Mobile Number" runat="server" ReadOnly="True"></asp:TextBox>
        </div>
    </div>
    <hr />

    <h3>Grades</h3>
    <div class="row">
        <div class="col-md-12">

            <asp:GridView ID="gdvGrades" CssClass="table table-striped" runat="server" CellPadding="3" GridLines="None" AutoGenerateColumns="False"
                Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px"
                CellSpacing="1" AllowPaging="True">
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
                <PagerSettings Mode="NumericFirstLast" />
                <PagerStyle BackColor="#C6C3C6" Font-Bold="True" Font-Size="Larger" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="#E7E7FF" />
                <Columns>
                    <asp:BoundField DataField="WorkTerm" HeaderText="Work Term" />
                    <asp:BoundField DataField="Grade" HeaderText="Grade" />
                </Columns>
                <RowStyle />
            </asp:GridView>

        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:Label ID="lblGradeMessage" Font-Size="Large" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-6">
        </div>
        <div class="col-md-2">
            <asp:Button ID="btnEdit" CssClass="btn btn-primary" runat="server" Text="Edit" OnClick="btnEdit_Click" />
        </div>
        <div class="col-md-2">
            <asp:Button ID="btnSave" CssClass="btn btn-success" runat="server" Text="Save" OnClick="btnSave_Click" Enabled="False" />
        </div>
        <div class="col-md-2">
            <asp:Button ID="btnClear" CssClass="btn btn-warning" runat="server" Text="Clear" Enabled="False" OnClick="btnClear_Click" />
        </div>
    </div>
    <br />
</asp:Content>

