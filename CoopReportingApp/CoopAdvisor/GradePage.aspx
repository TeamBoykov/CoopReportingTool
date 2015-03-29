<%@ Page Title="" Language="C#" MasterPageFile="~/CoopAdvisor/coopadvisor.Master" AutoEventWireup="true" CodeFile="GradePage.aspx.cs" Inherits="CoopReportingApp.CoopAdvisor.GradePage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>
        <marquee><i> Welcome to Student Grading Page</i></marquee>
    </h3>

    <div class=" jumbotron">
        <h6><i>Field(s) taged with a star (<span style="color: red">*</span>) are mandatory and must be filled.</i></h6>
        <div class="table-responsive">

            <table class="table table-hover">

                <tr>
                    <td>
                        <asp:Label ID="LabelStudentID" runat="server" Font-Size="Large">Student ID <span style="color:red">*</span></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblStudentID" CssClass="form-control" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelStudentGrade" runat="server" Font-Size="Large">Grade <span style="color:red">*</span></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextStudentGrade" CssClass="form-control" runat="server" MaxLength="3" TabIndex="2" placeholder="Enter Grade i.e. 75"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ErrorMessage="Grade Required"  ForeColor="Red" ControlToValidate="TextStudentGrade" runat="server"  SetFocusOnError="True" />
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="^[0-9]{1,3}" ControlToValidate="TextStudentGrade" ErrorMessage="Enter Valid Grade ! !" EnableClientScript="False" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelWorkTerm" runat="server" Font-Size="Large">Work Term <span style="color:red">*</span></asp:Label>
                    </td>
                    <td>
                       <asp:DropDownList ID="ddlWorkTerm" CssClass="form-control" runat="server">
                            <asp:ListItem>Select Term</asp:ListItem>
                            <asp:ListItem>Winter</asp:ListItem>
                            <asp:ListItem>Spring</asp:ListItem>
                            <asp:ListItem>Summer</asp:ListItem>
                            <asp:ListItem>Fall</asp:ListItem>
                       </asp:DropDownList>
             
                    </td>
                    <td>

                         <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Select Term" ControlToValidate="ddlWorkTerm"  ForeColor="red" 
               Operator="NotEqual" SetFocusOnError="True" ValueToCompare="Select Term"></asp:CompareValidator>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </td>
                </tr>

                </table>

            <div align="center">
        <asp:Button ID="btnUpdate" runat="server" Text="InsertGrade" CssClass="btn btn-primary " Height="41px" Width="138px" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnClear" runat="server" CausesValidation="False"
            Text="Clear" CssClass="btn btn-warning" Height="41px" Width="138px" OnClick="btnClear_Click" />
    </div>
    <br />       

        </div>
    </div>

</asp:Content>
