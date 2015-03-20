<%@ Page Title="" Language="C#" MasterPageFile="~/CoopAdvisor/coopadvisor.Master" AutoEventWireup="true" Codefile="GradePage.aspx.cs" Inherits="CoopReportingApp.CoopAdvisor.GradePage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <h3><marquee><i> Welcome to Student Grading Page</i></marquee></h3>
    
    <div class=" jumbotron"> 
     <h6><i>Field(s) taged with a star (<span style="color:red">*</span>) are mandatory and must be filled.</i></h6>   
    <div class="table-responsive">
        
        <table class="table table-hover">
                       
            <tr>
                <td>
                    <asp:Label ID="LabelStudentID" runat="server" Font-Size="Large">Student ID <span style="color:red">*</span></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextStudentID" CssClass="form-control" runat="server" MaxLength="9" placeholder="Student Number xxxxxxxxx" TabIndex="1"></asp:TextBox>
                </td>
                <td>
                     <asp:RequiredFieldValidator ID="StdIDRequired" runat="server" ControlToValidate="TextStudentID" EnableClientScript="False" ErrorMessage=" Student ID Required !" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="IDNumberonly" runat="server" ControlToValidate="TextStudentID" EnableClientScript="False" ErrorMessage="Invalid ID ! (Number Only and Not Starting Zero)" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[1-9][0-9]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                     <asp:RegularExpressionValidator ID="RegeExp_9Digitonly" runat="server" ControlToValidate="TextStudentID" Display="Dynamic" EnableClientScript="False" ErrorMessage="Required 9 Digits !" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LabelStudentGrade" runat="server" Font-Size="Large" >Grade <span style="color:red">*</span></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextStudentGrade" CssClass="form-control" runat="server" MaxLength="3" TabIndex="2" placeholder="Insert Grade i.e. 90" ></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextStudentGrade" EnableClientScript="False" ErrorMessage=" Enter Grade !" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="^[0-9]{1,3}" ControlToValidate="TextStudentGrade" ErrorMessage="Enter Valid Grade ! !" EnableClientScript="False" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LabelWorkTerm" runat="server" Font-Size="Large">Work Term <span style="color:red">*</span></asp:Label>
                </td>
                <td>
                     <asp:DropDownList ID="dropWorkTerm" CssClass="form-control"  runat="server" TabIndex="3">
                        <asp:ListItem Text="Select Work Term" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Work Term 1" Value="One"></asp:ListItem>
                        <asp:ListItem Text="Work Term 2" Value="Two"></asp:ListItem>
                        <asp:ListItem Text="Work Term 3" Value="Three"></asp:ListItem>
                        <asp:ListItem Text="Work Term 4" Value="Four"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropWorkTerm" InitialValue="0" EnableClientScript="False" ErrorMessage=" Work Term Not Selected" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                   
                 </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="LabelAdvName" runat="server" Font-Size="Large">Advisor Name <span style="color:red">*</span></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextAdvisorName" CssClass="form-control" runat="server" TabIndex="4" placeholder="Adviror Name"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextAdvisorName" EnableClientScript="False" ErrorMessage=" Enter Advisor Name!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>    
                </td>
            </tr>
           
            <tr>
                <td>
                 <asp:Button ID="BtniInsert" runat="server" Text="Insert Grade" CssClass="btn btn-primary" style="float:right;" TabIndex="5" />
                </td>
                <td>
            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" CausesValidation="False" CssClass="btn btn-warning" OnClick="BtnCancel_Click" TabIndex="6" />

                </td>
            </tr>
           
        </table>

    </div>
 </div>
        
</asp:Content>
