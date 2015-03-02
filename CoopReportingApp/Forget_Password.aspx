<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeFile="Forget_Password.aspx.cs" Inherits="Forget_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
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
            <div class="login">
                <h3>Forget Password</h3>
               <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Enter your valid E-mail address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User name required"
                    ControlToValidate="txtemail" EnableClientScript="False" Font-Size="Small" ForeColor="#CC0000"
                    SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-success" />
            </div>
        </div>
    </div>
</asp:Content>

