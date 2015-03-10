<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdmin/webadmin.Master" AutoEventWireup="true" CodeBehind="WebAdminPage.aspx.cs" Inherits="CoopReportingApp.testing1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Styles/bootstrap.css" rel="stylesheet" />
    <link href="../Styles/bootstrap.min.css" rel="stylesheet" />
    <div class="row">
    <div class="row-same-height">
        <div class="col-xs-12 col-md-8 col-xs-height">
           
            <div class="jumbotron"> 

                <table style="width: 100%;">
                            <tr>
                                <td colspan="2">
                                    <h3>Add Co-op Advisor Account</h3>
                                     <h6><i> Field(s) taged with a star (<span style="color:red">*</span>) are mandatory and must be filled.</i></h6> 
                                </td>
                            </tr>
                            <tr>
                                <td>First Name <span style="color:red">*</span> </td>
                                <td>
                                    <asp:TextBox ID="AdvFNameTbx" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="AdvFNameTbx" ErrorMessage="Required !" ForeColor="Red" EnableClientScript="False" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                                                         
                            </tr>
                            
                            <tr>
                                <td>Last Name <span style="color:red">*</span></td>
                                <td>
                                    <asp:TextBox ID="AdvLNameTbx" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="LstNameRequired" runat="server" ControlToValidate="AdvLNameTbx" EnableClientScript="False" ErrorMessage="Required !" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                        
                            </tr>
                            
                            
                            
                            <tr>
                                <td >User ID <span style="color:red">*</span></td>
                                <td >
                                    <asp:TextBox ID="AdvIDTbx" runat="server" MaxLength="9"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AdvIdRequired" runat="server" ControlToValidate="AdvIDTbx" EnableClientScript="False" ErrorMessage="Required !" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="IDNumberonly" runat="server" ControlToValidate="AdvIDTbx" EnableClientScript="False" ErrorMessage="Number Only and Not Starting Zero !" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[1-9][0-9]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="RegeExp_9Digitonly" runat="server" ControlToValidate="AdvIDTbx" Display="Dynamic" EnableClientScript="False" ErrorMessage="Required 9 Digits !" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
                                </td>
                                    
                               
                            </tr>
                            
                            <tr>
                                <td>Advisor Cell </td>
                                <td>
                                    <asp:TextBox ID="Advcell" runat="server" MaxLength="10"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="AdvCellvalidation" runat="server" ControlToValidate="Advcell" EnableClientScript="False" ErrorMessage="Number Only !" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[1-9][0-9]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>Advisor Phone</td>
                                <td>
                                    <asp:TextBox ID="AdvPhone" runat="server" MaxLength="10"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="AdvCellvalidation0" runat="server" ControlToValidate="AdvPhone" EnableClientScript="False" ErrorMessage="Number Only !" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[1-9][0-9]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Advisor Email <span style="color:red">*</span></td>
                                <td>
                                    <asp:TextBox ID="AdvEmailTextBox" runat="server"></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="AdvEmailTextBox" ErrorMessage="Required !" ForeColor="Red" EnableClientScript="False" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                    
                                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="AdvEmailTextBox" ErrorMessage="Invalid Email Format !" EnableClientScript="False" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Advisor Area</td>
                                <td>
                                    <asp:TextBox ID="AdvAreaTextBox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Create Password <span style="color:red">*</span> <br /> </td>
                                <td>
                                    <asp:TextBox ID="AdvPW0" runat="server" MaxLength="8" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PWRequired" runat="server" ControlToValidate="AdvPW0" EnableClientScript="False" ErrorMessage="Required !" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegExPasword" runat="server" ControlToValidate="AdvPW0" EnableClientScript="False" ErrorMessage=" Invalid Password!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*\d).{4,8}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
  
                            </tr>
                            
                            <tr>
                                <td>Confirm Password <span style="color:red">*</span> </td>
                                <td>
                                    <asp:TextBox ID="AdvPW1" runat="server" MaxLength="8" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator ID="PWCompare" runat="server" ControlToValidate="AdvPW0" EnableClientScript="False" ErrorMessage="Password Missmatch !" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                
                            </tr>
                           
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                        
                            </tr>
                           
                            <tr>
                                <td>
                                    <asp:Button ID="btnManageAdvisor0" runat="server" CssClass="btn btn-primary" Text="Add Advisor Account" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" ID="btnCancel" runat="server" Text="Reset" 
                                    OnClientClick="this.form.reset();return false;" />

                                </td>
                 
                                
                            </tr>
                          
                            <tr>
                                <td colspan="2">
                                    <h6><i>Note: Must be Between 4 and 8 Digits Long Must Include  at Least One Numeric Digit</i></h6></td>
                 
                                
                            </tr>
                          
                        </table>

            </div>

        </div>
        
        <div class="col-xs-6 col-md-4 col-xs-height col-bottom">
            <div class="jumbotron"> 

                 <h3>Manage User Accounts</h3>
                    <br /><br />
                <p> </p>
                 <p> </p>
                    <asp:Button ID="btnManageStudent" runat="server" Text="Manage Student Account" CssClass="btn btn-primary" />
                    <br /><br />
                    <asp:Button ID="btnManageAdvisor" runat="server" Text="Manage Advisor Account" CssClass="btn btn-primary" />
                   <br />&nbsp;<br /> 
                   <br /><br /> 
                   <br /><br /> 
                   <br /><br /> 
                    
                
            </div>

        </div>
     
        </div>
 </div>
      
</asp:Content>



