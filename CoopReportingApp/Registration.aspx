<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CoopReportingApp.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 279px;
        }
        .auto-style2 {
            width: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="table" >
            <tr>
                <td align="center" colspan="3" class="auto-style1">
                    <asp:Label ID="lblHeader" runat="server" Text="Student Registration " Font-Size="XX-Large" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style2">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="First Name Required" ForeColor="Red" ControlToValidate="txtFirstName"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid First Name" Display="Dynamic" ForeColor="Red"
                        ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtFirstName" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td  align="right" class="auto-style2">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name :"  Font-Size="Large"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name" />
                </td>
                <td >
                    <asp:RequiredFieldValidator ErrorMessage="Last Name Required" ForeColor="Red" ControlToValidate="txtLastName"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Last Name" Display="Dynamic" ForeColor="Red"
                        ValidationExpression="[A-Za-z./ ]+$" ControlToValidate="txtLastName" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td  align="right" class="auto-style2">
                    <asp:Label ID="lblStudentNumber" runat="server" Text="Student Number :" Font-Size="Large"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtStudentNumber" runat="server" CssClass="form-control" placeholder="Student Number" />
                </td>
                <td >
                    <asp:RequiredFieldValidator ErrorMessage="Student ID Required" Display="Dynamic" ForeColor="Red" ControlToValidate="txtStudentNumber"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Student Number" Display="Dynamic" ForeColor="Red"
                        ValidationExpression="\d\d\d\d\d\d\d\d\d" ControlToValidate="txtStudentNumber" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td  align="right" class="auto-style2">
                    <asp:Label ID="lblStudentProgram" runat="server" Text="Student Program :" Font-Size="Large"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtStudentProgram" runat="server" CssClass="form-control" placeholder="Student Program" />
                </td>
                <td >
                    <asp:RequiredFieldValidator ErrorMessage="Program Required" ForeColor="Red" ControlToValidate="txtStudentProgram"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Student Program" Display="Dynamic" ForeColor="Red"
                        ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtStudentProgram" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblEmailID" runat="server" Text="Email ID :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email ID" />
                </td>
                <td >
                    <asp:RequiredFieldValidator ErrorMessage="Email ID Required" Display="Dynamic" ForeColor="Red"
                        ControlToValidate="txtEmail" runat="server" EnableClientScript="False" SetFocusOnError="True" />
                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." EnableClientScript="False" SetFocusOnError="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblAddress" runat="server" Text="Address :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Address" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Address Required" ForeColor="Red" ControlToValidate="txtAddress"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />

                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMob" runat="server" CssClass="form-control" placeholder="XXX-XXX-XXXX" />
                </td>
                <td>
                    
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Mobile Number" Display="Dynamic" ForeColor="Red"
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="txtMob" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style2">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone Number :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" placeholder="XXX-XXX-XXXX" />
                </td>
                <td>
                    
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Phone Number" Display="Dynamic" ForeColor="Red"
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="txtPhoneNumber" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblPassword" runat="server" Text="Password :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="txtPassword"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm Password" />
                </td>
                <td>
                    <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                        ControlToValidate="txtConfirmPassword" runat="server" EnableClientScript="False" SetFocusOnError="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblCompanyName" runat="server" Text="Company Name :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" placeholder="Company Name" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Company Name Required" Display="Dynamic" ForeColor="Red" ControlToValidate="txtCompany"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                     <asp:RegularExpressionValidator ErrorMessage="Invalid Company Name" Display="Dynamic" ForeColor="Red"
                        ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtCompany" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblCompanyAddress" runat="server" Text="Company Address :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCompanyAddress" runat="server" CssClass="form-control" placeholder="Company Address" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Company Address Required" ForeColor="Red" ControlToValidate="txtCompanyAddress"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblPosition" runat="server" Text="Position :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPosition" runat="server" CssClass="form-control" placeholder="Position" />
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ErrorMessage="Position Required" ForeColor="Red" ControlToValidate="txtPosition"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Position Name" Display="Dynamic" ForeColor="Red"
                        ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtPosition" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblWorkTerm" runat="server" Text="Work Term :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                   <asp:DropDownList ID="dropWorkTerm" CssClass="form-control" runat="server">
                <asp:ListItem Text="Select Work Term" Value="0"></asp:ListItem>
                <asp:ListItem Text="Work Term 1" Value="1"></asp:ListItem>
                <asp:ListItem Text="Work Term 2" Value="2"></asp:ListItem>
                <asp:ListItem Text="Work Term 3" Value="3"></asp:ListItem>
                <asp:ListItem Text="Work Term 4" Value="4"></asp:ListItem>
            </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Work Term Required" ForeColor="Red" ControlToValidate="dropWorkTerm"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" align="right">
                    <asp:Label ID="lblCoopAdvisor" runat="server" Text="Coop Advisor :" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCoopAdvisor" runat="server" CssClass="form-control" placeholder="Coop Advisor Name" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Coop Advisor Name Required" ForeColor="Red" ControlToValidate="txtCoopAdvisor"
                        runat="server" EnableClientScript="False" SetFocusOnError="True" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Coop Advisor Name" Display="Dynamic" ForeColor="Red"
                        ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtCoopAdvisor" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
       <div align="center">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" Height="41px" Width="138px" />
        <asp:Button ID="btnClear"  runat="server" CausesValidation="False"
            Text="Clear" CssClass="btn btn-warning" Height="41px" Width="138px" OnClick="btnClear_Click" />
        </div>
        <tr>
            <td class="auto-style2" align="center"></td>
        </tr>

</asp:Content>
