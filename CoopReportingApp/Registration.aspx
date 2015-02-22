<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CoopReportingApp.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
        .auto-style17 {
            width: 91px;
            height: 30px;
        }
        .auto-style18 {
            height: 30px;
        }
        .auto-style19 {
            height: 30px;
            width: 314px;
        }
        </style>
     <div style="height: 568px; width: 1011px;">
 <table border="0" cellpadding="0" cellspacing="0">
    <tr>
                <td align="center" colspan="3" class="auto-style1">
                    <asp:Label ID="lblHeader" runat="server" Text="Student Registration "  font-size="XX-Large" style="color : darkblue" ></asp:Label>
                </td>
            </tr>
    <tr>
        <td class="auto-style19" align="right" >
            <asp:Label ID="lblFirstName" runat="server" Text="First Name :" Font-Size="Large" ForeColor="#9933FF" ></asp:Label>
        </td>
        <td class="auto-style17" >
            <asp:TextBox ID="txtFirstName" runat="server" align="center" Width="180px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="First Name Required" ForeColor="Red" ControlToValidate="txtFirstName"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style19" align="right">
           <asp:Label ID="lblLastName" runat="server" Text="Last Name :" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtLastName" runat="server" Width="179px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Last Name Required" ForeColor="Red" ControlToValidate="txtLastName"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <br />
        </td>
    </tr>
     <tr>
        <td class="auto-style19" align="right">
            <asp:Label ID="lblStudentNumber" runat="server" Text="Student Number :" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtStudentNumber" runat="server" Width="179px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Student ID Required" Display="Dynamic" ForeColor="Red" ControlToValidate="txtStudentNumber"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
             <asp:RegularExpressionValidator ErrorMessage="Invalid Student Number" Display="Dynamic" ForeColor="Red"
                         ValidationExpression="^([7-9]{1})([0-8]{9})$" ControlToValidate="txtStudentNumber" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style19" align="right">
            <asp:Label ID="lblStudentProgram" runat="server" Text="Student Program :" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtStudentProgram" runat="server" Width="350px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Program Required" ForeColor="Red" ControlToValidate="txtStudentProgram"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>
     <tr>
        <td class="auto-style19" align="right">
            <asp:Label ID="lblEmailID" runat="server" Text="Email ID :" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtEmail" runat="server" Width="300px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Email ID Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>
    <tr>
        <td class="auto-style19" align="right">
            <asp:Label ID="lblAddress" runat="server" Text="Address :" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtAddress" runat="server" Width="400px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Address Required" ForeColor="Red" ControlToValidate="txtAddress"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>
       <tr>
        <td class="auto-style19" align="right">
            <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number :" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtMob" runat="server" Width="150px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Phone Required" Display="Dynamic" ForeColor ="Red" ControlToValidate="txtMob"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Mobile Number" Display="Dynamic" ForeColor="Red"
                         ValidationExpression="^([7-9]{1})([0-9]{9})$" ControlToValidate="txtMob" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </td>
    </tr>

      <tr>
        <td class="auto-style19" align="right">
           <asp:Label ID="lblPassword" runat="server" Text="Password :" Font-Size="Large" ForeColor="#9933FF"></asp:Label> 
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px"/>
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>
    <tr>
        <td class="auto-style19" align="right">
             <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password :" Font-Size="Large" ForeColor="#9933FF"></asp:Label> 
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="200px"/>
        </td>
        <td class="auto-style18">
            <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>
     <tr>
        <td class="auto-style19" align="right">
            <asp:Label ID="lblCompanyName" runat="server" Text="Company Name :" Font-Size="Large" ForeColor="#9933FF"></asp:Label> 
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtCompany" runat="server" Width="200px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Company Name Required" ForeColor="Red" ControlToValidate="txtCompany"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>
      <tr>
        <td class="auto-style19" align="right">
            <asp:Label ID="lblCompanyAddress" runat="server" Text="Company Address :" Font-Size="Large" ForeColor="#9933FF" ></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtCompanyAddress" runat="server" Width="400px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Company Address Required" ForeColor="Red" ControlToValidate="txtCompanyAddress"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>
     <tr>
        <td class="auto-style19" align="right">
            <asp:Label ID="lblPosition" runat="server" Text="Position :" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtPosition" runat="server" Width="250px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Position Required" ForeColor="Red" ControlToValidate="txtPosition"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>
       <tr>
        <td class="auto-style19" align="right">
             <asp:Label ID="lblWorkTerm" runat="server" Text="Work Term :" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtWorkTerm" runat="server" Width="100px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Work Term Required" ForeColor="Red" ControlToValidate="txtWorkTerm"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>
       <tr>
        <td class="auto-style19" align="right">
            <asp:Label ID="lblCoopAdvisor" runat="server" Text="Coop Advisor :" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtCoopAdvisor" runat="server" Width="200px" />
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ErrorMessage="Coop Advisor Name Required" ForeColor="Red" ControlToValidate="txtCoopAdvisor"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </td>
    </tr>             
  </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" align="center" runat="server" Text="Submit"  BackColor="#CC6699" Font-Size="Large" Width="109px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="btnClear" align="center" runat="server" CausesValidation="False"
                    Text="Clear" BackColor="#99CCFF" Font-Size="Large" Width="113px" Height="32px" />
       </div>
</asp:Content>
