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
            <asp:TextBox ID="txtSId" CssClass="form-control" placeholder="StudentID" runat="server" MaxLength="9" Font-Bold="True"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student Id Required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtSId"
                runat="server" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Student ID" ForeColor="Red"
                ControlToValidate="txtSId" runat="server" SetFocusOnError="True" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label2" runat="server" Text="Student Name:"></asp:Label>
            <asp:TextBox ID="txtSName" CssClass="form-control" placeholder="Student Name" runat="server" Font-Bold="True"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student Name Required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtSName"
                runat="server" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Student Name" ForeColor="Red"
                ValidationExpression="[A-Za-z./ ]+$" ControlToValidate="txtSName" runat="server" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
            <asp:TextBox ID="txtAddress1" CssClass="form-control" placeholder="Address1" runat="server" Font-Bold="True"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label4" runat="server" Text="Address2:"></asp:Label>
            <asp:TextBox ID="txtAddress2" CssClass="form-control" placeholder="Address2" runat="server" Font-Bold="True"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
            <asp:TextBox ID="txtCity" CssClass="form-control" placeholder="City" runat="server" Font-Bold="True"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label6" runat="server" Text="Province:"></asp:Label>
            <asp:DropDownList CssClass="form-control" ID="ddlProvince" runat="server" Font-Bold="True">
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
            <asp:TextBox ID="txtPostalCode" CssClass="form-control" placeholder="" runat="server" Font-Bold="True"></asp:TextBox>
             <asp:RegularExpressionValidator ErrorMessage="Invalid Postal Code" ForeColor="Red"
                ControlToValidate="txtPostalCode" runat="server" SetFocusOnError="True" ValidationExpression="^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$"></asp:RegularExpressionValidator>
            
            <%-- <asp:RequiredFieldValidator ErrorMessage=" required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label7" runat="server" Text="Program:"></asp:Label>
            <asp:TextBox ID="txtProgram" CssClass="form-control" placeholder="Program" runat="server" Font-Bold="True"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ErrorMessage="Address required" Font-Size="X-Small" ForeColor="Red" ControlToValidate="txtAddress1"
                runat="server"  SetFocusOnError="True" />--%>
        </div>
        <div class="col-md-12">
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
        </div>
    </div>
    <hr />
     <div class="row">
        <div class="col-md-6">
             <asp:Label ID="Label10" runat="server" Text="WorkTerm-2:"></asp:Label>
        </div>
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
        </div>
    </div>
    <hr />
     <div class="row">
        <div class="col-md-6">
        </div>
        <div class="col-md-2">
            <asp:Button ID="btnEdit" CssClass="btn btn-primary" runat="server" Text="Edit" />
        </div>
        <div class="col-md-2">
            <asp:Button ID="btnSave" CssClass="btn btn-success" runat="server" Text="Save" />
        </div>
        <div class="col-md-2">
            <asp:Button ID="btnClear" CssClass="btn btn-warning" runat="server" Text="Clear" />
        </div>
    </div>
    <br />
</asp:Content>

