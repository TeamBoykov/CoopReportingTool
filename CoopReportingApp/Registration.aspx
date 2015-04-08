<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="CoopReportingApp.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <h3>Student Registration</h3>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name :"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name" />
                </div>
                <div class="col-md-2">
                    <asp:RequiredFieldValidator ErrorMessage="First Name Required" ForeColor="Red" ControlToValidate="txtFirstName"
                        runat="server" SetFocusOnError="True" Font-Size="XX-Small" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid First Name" ForeColor="Red"
                        ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtFirstName" runat="server" SetFocusOnError="True" Font-Size="XX-Small"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label1" runat="server" Text="Last Name :"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name" />
                </div>
                <div class="col-md-2">
                    <asp:RequiredFieldValidator ErrorMessage="Last Name Required" ForeColor="Red" ControlToValidate="txtLastName"
                        runat="server" SetFocusOnError="True" Font-Size="XX-Small" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Last Name" ForeColor="Red"
                        ValidationExpression="[A-Za-z./ ]+$" ControlToValidate="txtLastName" runat="server" SetFocusOnError="True" Font-Size="XX-Small"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label2" runat="server" Text="Student Number:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtStudentNumber" runat="server" CssClass="form-control" placeholder="Student Number" MaxLength="9" />
                </div>
                <div class="col-md-2">
                    <asp:RequiredFieldValidator ErrorMessage="Student ID Required" ForeColor="Red" ControlToValidate="txtStudentNumber"
                        runat="server" SetFocusOnError="True" Font-Size="XX-Small" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Student Number" ForeColor="Red"
                        ValidationExpression="\d\d\d\d\d\d\d\d\d" ControlToValidate="txtStudentNumber" runat="server" SetFocusOnError="True" Font-Size="XX-Small"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label21" runat="server" Text="Password"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" placeholder="Password" />
                </div>
                <div class="col-md-2">
                    <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="txtPassword"
                        runat="server" SetFocusOnError="True" Font-Size="XX-Small" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label3" runat="server" Text="Student Program:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtStudentProgram" runat="server" CssClass="form-control" placeholder="Student Program" />
                </div>
                <div class="col-md-2">
                    <asp:RequiredFieldValidator ErrorMessage="Program Required" ForeColor="Red" ControlToValidate="txtStudentProgram"
                        runat="server" SetFocusOnError="True" Font-Size="XX-Small" />

                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label4" runat="server" Text="Email ID:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email ID" />
                </div>
                <div class="col-md-2">
                    <asp:RequiredFieldValidator ErrorMessage="Email ID Required" ForeColor="Red"
                        ControlToValidate="txtEmail" runat="server" SetFocusOnError="True" Font-Size="XX-Small" />
                    <asp:RegularExpressionValidator runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." SetFocusOnError="True" Font-Size="XX-Small" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label5" runat="server" Text="Address1:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" placeholder="Address" />
                </div>
                <div class="col-md-2">
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label6" runat="server" Text="Address2:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" placeholder="Address" />
                </div>
                <div class="col-md-2">
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label7" runat="server" Text="City:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="City" />
                </div>
                <div class="col-md-2">
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label8" runat="server" Text="Province:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:DropDownList CssClass="form-control" ID="ddlProvince" runat="server">
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
                </div>
                <div class="col-md-2">
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label12" runat="server" Text="Postal Code:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtPostalCode" CssClass="form-control" placeholder="Postal Code" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Postal Code" ForeColor="Red" Font-Size="X-Small"
                        ControlToValidate="txtPostalCode" runat="server" SetFocusOnError="True" ValidationExpression="^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$"></asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label18" runat="server" Text="Phone Number:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtPhoneNo" CssClass="form-control" placeholder="XXX-XXX-XXXX" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ControlToValidate="txtPhoneNo" ErrorMessage="Invalid Phone Number"
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                        Font-Size="XX-Small" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label19" runat="server" Text="Mobile Number:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="txtMobileNo" CssClass="form-control" placeholder="XXX-XXX-XXXX" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtMobileNo" ErrorMessage="Invalid Phone Number"
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                        Font-Size="XX-Small" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
        </div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="lblwimessage" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <h3>Work Term Information</h3>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label9" runat="server" Text="Company Name:"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtCompanyname" CssClass="form-control" placeholder="Company Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Company Name Required" ForeColor="Red" ControlToValidate="txtCompanyname"
                        runat="server" SetFocusOnError="True" Font-Size="XX-Small" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label10" runat="server" Text="Company Address1:"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtCompanyAddress1" CssClass="form-control" placeholder="Company Address1" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label11" runat="server" Text="Company Address2:"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtCompanyAddress2" CssClass="form-control" placeholder="Company Address2" runat="server"></asp:TextBox>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label13" runat="server" Text="City:"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtwicity" CssClass="form-control" placeholder="City" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label14" runat="server" Text="Province:"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:DropDownList CssClass="form-control" ID="ddlworkinfoprovience" runat="server">
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
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label15" runat="server" Text="Postal Code:"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtwipostalcode" CssClass="form-control" placeholder="Postal Code" runat="server"></asp:TextBox>
                </div>
                <asp:RegularExpressionValidator ErrorMessage="Invalid Postal Code" ForeColor="Red" Font-Size="X-Small"
                    ControlToValidate="txtPostalCode" runat="server" SetFocusOnError="True" ValidationExpression="^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$"></asp:RegularExpressionValidator>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label16" runat="server" Text="Work Term:"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:DropDownList CssClass="form-control" ID="ddlwiworkterm" runat="server">
                        <asp:ListItem>Select One</asp:ListItem>
                        <asp:ListItem>Winter</asp:ListItem>
                        <asp:ListItem>Summer</asp:ListItem>
                        <asp:ListItem>Fall</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Select any one option"
                        ControlToValidate="ddlwiworkterm" Font-Size="X-Small" ForeColor="red"
                        Operator="NotEqual" SetFocusOnError="True" ValueToCompare="Select One"></asp:CompareValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label17" runat="server" Text="Position:"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtPosition" CssClass="form-control" placeholder="Position" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Position Required" ForeColor="Red" ControlToValidate="txtPosition"
                        runat="server" SetFocusOnError="True" Font-Size="XX-Small" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label20" runat="server" Text="Coop Advisor Name:"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:DropDownList CssClass="form-control" ID="ddlAdvisorname" runat="server" AppendDataBoundItems="True">
                        <asp:ListItem>Select One</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Select any one option"
                        ControlToValidate="ddlAdvisorname" Font-Size="X-Small" ForeColor="red"
                        Operator="NotEqual" SetFocusOnError="True" ValueToCompare="Select One"></asp:CompareValidator>
                </div>
            </div>
            <br />
        </div>
    </div>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-2">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click" />
        </div>
        <div class="col-md-2">
            <asp:Button ID="btnClear" runat="server" CausesValidation="False"
                Text="Clear" CssClass="btn btn-warning" OnClick="btnClear_Click1" />
        </div>
        <div class="col-md-4"></div>
    </div>
    <br />
</asp:Content>
