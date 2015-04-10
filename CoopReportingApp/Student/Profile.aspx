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
<<<<<<< HEAD
            <asp:TextBox ID="txtSId" CssClass="form-control" placeholder="StudentID" runat="server" MaxLength="9" Font-Bold="True"></asp:TextBox>
=======
            <asp:TextBox ID="txtSId" Text="300718283" CssClass="form-control" placeholder="StudentID" runat="server" MaxLength="9" ReadOnly="True"></asp:TextBox>
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
            <asp:RequiredFieldValidator ErrorMessage="Student Id Required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtSId"
                runat="server" SetFocusOnError="True" />
        </div>
        <div class="col-md-12">
<<<<<<< HEAD
            <asp:Label ID="Label2" runat="server" Text="Student Name:"></asp:Label>
            <asp:TextBox ID="txtSName" CssClass="form-control" placeholder="Student Name" runat="server" Font-Bold="True"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student Name Required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtSName"
=======
            <asp:Label ID="Label2" runat="server" Text="Student First Name:"></asp:Label>
            <asp:TextBox ID="txtSFName" CssClass="form-control" placeholder="Student First Name" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student First Name Required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtSFName"
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
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
<<<<<<< HEAD
            <asp:TextBox ID="txtAddress1" CssClass="form-control" placeholder="Address1" runat="server" Font-Bold="True"></asp:TextBox>
=======
            <asp:TextBox ID="txtAddress1" CssClass="form-control" placeholder="Address1" runat="server" ReadOnly="True"></asp:TextBox>
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label4" runat="server" Text="Address2:"></asp:Label>
<<<<<<< HEAD
            <asp:TextBox ID="txtAddress2" CssClass="form-control" placeholder="Address2" runat="server" Font-Bold="True"></asp:TextBox>
=======
            <asp:TextBox ID="txtAddress2" CssClass="form-control" placeholder="Address2" runat="server" ReadOnly="True"></asp:TextBox>
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
<<<<<<< HEAD
            <asp:TextBox ID="txtCity" CssClass="form-control" placeholder="City" runat="server" Font-Bold="True"></asp:TextBox>
=======
            <asp:TextBox ID="txtCity" CssClass="form-control" placeholder="City" runat="server" ReadOnly="True"></asp:TextBox>
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label6" runat="server" Text="Province:"></asp:Label>
<<<<<<< HEAD
            <asp:DropDownList CssClass="form-control" ID="ddlProvince" runat="server" Font-Bold="True">
=======
            <asp:DropDownList CssClass="form-control" ID="ddlProvince" runat="server" Enabled="False">
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
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
<<<<<<< HEAD
            <asp:TextBox ID="txtPostalCode" CssClass="form-control" placeholder="" runat="server" Font-Bold="True"></asp:TextBox>
             <asp:RegularExpressionValidator ErrorMessage="Invalid Postal Code" ForeColor="Red"
=======
            <asp:TextBox ID="txtPostalCode" CssClass="form-control" placeholder="" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RegularExpressionValidator ErrorMessage="Invalid Postal Code" ForeColor="Red" Font-Size="X-Small"
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
                ControlToValidate="txtPostalCode" runat="server" SetFocusOnError="True" ValidationExpression="^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$"></asp:RegularExpressionValidator>

            <%-- <asp:RequiredFieldValidator ErrorMessage=" required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label7" runat="server" Text="Program:"></asp:Label>
<<<<<<< HEAD
            <asp:TextBox ID="txtProgram" CssClass="form-control" placeholder="Program" runat="server" Font-Bold="True"></asp:TextBox>
=======
            <asp:TextBox ID="txtProgram" CssClass="form-control" placeholder="Program" runat="server" ReadOnly="True"></asp:TextBox>
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
<<<<<<< HEAD
            <asp:Label ID="Label8" runat="server" Text="Current WorkTerm:"></asp:Label>
            <asp:TextBox ID="txtCurrentWorkTerm" CssClass="form-control" placeholder="Current WorkTerm" runat="server" Font-Bold="True"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
    </div>
    <hr />
   
    <h3>Grades</h3>
    <div class="row">
        <div class="col-md-6">
             <asp:Label ID="Label9" runat="server" Text="WorkTerm-1:"></asp:Label>
        </div>
        <div class="col-md-6">
             <asp:Label ID="lblWorkTerm1" runat="server" Text="--" Font-Bold="True"></asp:Label>
=======
            <asp:Label ID="Label8" runat="server" Text="Email Address:"></asp:Label>
            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email Address" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Email required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtEmail"
                runat="server" SetFocusOnError="True" />
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label18" runat="server" Text="Phone Number:"></asp:Label>
            <asp:TextBox ID="txtPhoneNo" CssClass="form-control" placeholder="XXX-XXX-XXXX" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtPhoneNo" ErrorMessage="Invalid Phone Number"
                 ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                 Font-Size="XX-Small" ForeColor="#CC0000"></asp:RegularExpressionValidator>

        </div>
<<<<<<< HEAD
        <div class="col-md-6">
             <asp:Label ID="lblWorkTerm2" runat="server" Text="--" Font-Bold="True"></asp:Label>
        </div>
    </div>
    <hr />
     <div class="row">
        <div class="col-md-6">
             <asp:Label ID="Label11" runat="server" Text="WorkTerm-3:"></asp:Label>
        </div>
        <div class="col-md-6">
             <asp:Label ID="lblWorkTerm3" runat="server" Text="--" Font-Bold="True"></asp:Label>
        </div>
    </div>
    <hr />
     <div class="row">
        <div class="col-md-6">
             <asp:Label ID="Label13" runat="server" Text="WorkTerm-4:"></asp:Label>
        </div>
        <div class="col-md-6">
             <asp:Label ID="lblWorkTerm4" runat="server" Text="--" Font-Bold="True"></asp:Label>
=======
        <div class="col-md-12">
            <asp:Label ID="Label19" runat="server" Text="Mobile Number:"></asp:Label>
            <asp:TextBox ID="txtMobileNo" CssClass="form-control" placeholder="XXX-XXX-XXXX"
                 runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtMobileNo" ErrorMessage="Invalid Phone Number"
                 ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                 Font-Size="XX-Small" ForeColor="#CC0000"></asp:RegularExpressionValidator>
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
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
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

