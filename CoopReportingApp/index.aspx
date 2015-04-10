<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="CoopReportingApp.index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<<<<<<< HEAD
  <div class="row">
=======
<div class="row">
>>>>>>> 2fdea90df104d33248d29dd5ec1ad7e81e06f2d7
            <div class="col-xs-12 col-md-8">
                <div class="rotator">
                    <ul>
                        <li class="show">

                            <img src="Images/college.png" alt="campus" />
                        </li>
                        <li>
                            <img src="Images/college1.jpg" alt="pic2" /></li>
                        <li>
                            <img src="Images/college2.jpeg" alt="pic2" />
                        </li>
                        <li>
                            <img src="Images/college3.jpeg" alt="pic2" />
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xs-6 col-md-4">
                <div class="password">
                       <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-primary" NavigateUrl="~/Registration.aspx">Sign Up</asp:HyperLink>
                </div>
                <div class="login">
                    <h3>Sign In</h3>
                    <asp:TextBox ID="txtusername" CssClass="form-control" placeholder="username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User name required"
                        ControlToValidate="txtusername" EnableClientScript="False" Font-Size="Small" ForeColor="#CC0000"
                        SetFocusOnError="True"></asp:RequiredFieldValidator><br />
<<<<<<< HEAD
                    <asp:TextBox ID="txtpassword" CssClass="form-control" placeholder="password" runat="server"></asp:TextBox>
=======
                    <asp:TextBox ID="txtpassword" CssClass="form-control" placeholder="password" runat="server" TextMode="Password"></asp:TextBox>
>>>>>>> 2fdea90df104d33248d29dd5ec1ad7e81e06f2d7
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password required"
                        ControlToValidate="txtpassword" EnableClientScript="False" Font-Size="Small" SetFocusOnError="True" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />
                    <asp:DropDownList ID="ddlloginas" CssClass="form-control" runat="server">
                        <asp:ListItem>Login As</asp:ListItem>
                        <asp:ListItem>Co-op Advisor</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Select any one option" ControlToValidate="ddlloginas" EnableClientScript="False" Font-Size="Small" ForeColor="#CC0000" Operator="NotEqual" SetFocusOnError="True" ValueToCompare="Login As"></asp:CompareValidator><br />
<<<<<<< HEAD
                    <asp:Button ID="btnlogin" runat="server" Text="Sign In" CssClass="btn btn-success" />
                </div>
                <hr />
                <div class="password">
                    <asp:HyperLink ID="hplforgetpassword" runat="server" NavigateUrl="~/forget_password.aspx">Forget Password?</asp:HyperLink>
                </div>
=======
                    <asp:Button ID="btnlogin" runat="server" Text="Sign In" CssClass="btn btn-success" OnClick="btnlogin_Click" />
                </div>
                <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                <hr />
               <%-- <div class="password">
                    <asp:HyperLink ID="hplforgetpassword" runat="server" NavigateUrl="~/forget_password.aspx">Forget Password?</asp:HyperLink>
                </div>--%>
>>>>>>> 2fdea90df104d33248d29dd5ec1ad7e81e06f2d7
            </div>
        </div>
</asp:Content>
