<%@ Page Title="" Language="C#" MasterPageFile="~/WebAdmin/webadmin.Master" AutoEventWireup="true" CodeBehind="WebAdminPage.aspx.cs" Inherits="CoopReportingApp.WebAdmin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-8">
              <div class="jumbotron">
                   
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <h3>Add Co-op Advisor Account</h3>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>First Name</td>
                                <td>
                                    <asp:TextBox ID="AdvFNameTbx" runat="server"></asp:TextBox>
                                </td>
                                                         
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="AdvFNameTbx" ErrorMessage="First name required !" ForeColor="Red" EnableClientScript="False" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                           </tr>
                            <tr>
                                <td>Last Name</td>
                                <td>
                                    <asp:TextBox ID="AdvLNameTbx" runat="server"></asp:TextBox>
                                </td>
                        
                            </tr>
                            
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="LstNameRequired" runat="server" ControlToValidate="AdvLNameTbx" EnableClientScript="False" ErrorMessage="Last Name required !" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                              
                                <td>&nbsp;</td>
                                
                            </tr>
                            
                            <tr>
                                <td >ID Number</td>
                                <td >
                                    <asp:TextBox ID="AdvIDTbx" runat="server" MaxLength="9"></asp:TextBox>
                                </td>
                                <td >&nbsp;</td>
                               
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:RegularExpressionValidator ID="IDNumberonly" runat="server" ControlToValidate="AdvIDTbx" Display="Dynamic" EnableClientScript="False" ErrorMessage="Number Only and Not Starting Zero !" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[1-9][0-9]*$"></asp:RegularExpressionValidator>
                                </td>
                        
                                <td>&nbsp;</td>
                                
                            </tr>
                            <tr>
                                <td>Create Password</td>
                                <td>
                                    <asp:TextBox ID="AdvPW0" runat="server" MaxLength="8" TextMode="Password"></asp:TextBox>
                                </td>
                        
                                <td>&nbsp;</td>
                                
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><asp:RegularExpressionValidator ID="RegExPasword" runat="server" ControlToValidate="AdvPW0" Display="Dynamic" EnableClientScript="False" ErrorMessage=" Password Must be Between 4 and 8 Digits Long and Must Include  at Least Onee Numeric Digit !" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*\d).{4,8}$"></asp:RegularExpressionValidator>
                                &nbsp;</td>
                             
                                <td>&nbsp;</td>
                                
                            </tr>
                            <tr>
                                <td>Confirm Password</td>
                                <td>
                                    <asp:TextBox ID="AdvPW1" runat="server" MaxLength="8" TextMode="Password"></asp:TextBox>
                                </td>
                                 
                                <td>&nbsp;</td>
                    
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:CompareValidator ID="PWCompare" runat="server" ControlToValidate="AdvPW0" Display="Dynamic" EnableClientScript="False" ErrorMessage="Password Missmatch ! Please Retype." ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                </td>
                            
                                <td>&nbsp;</td>
                                  
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnManageAdvisor0" runat="server" CssClass="btn btn-primary" Text="Add Advisor Account" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" ID="btnCancel" runat="server" Text="Cancel"  />
                                </td>
                 
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                
                                <td>&nbsp;</td>
                                
                                  
                            </tr>
                        </table>
          
            </div> 
                
                    
       </div>
            <div class="col-xs-12 col-md-4">
                
                <div class="jumbotron">
                    
                    <h3>Manage User Accounts</h3>
                    <br /><br />
                    <asp:Button ID="btnManageStudent" runat="server" Text="Manage Student Account" CssClass="btn btn-primary" />
                    <br /><br />
                    <asp:Button ID="btnManageAdvisor" runat="server" Text="Manage Advisor Account" CssClass="btn btn-primary" />
                    <br /><br />
                    <br /><br />
                    <br /><br />
                    <br /><br />
                    
                </div>
            </div>
        </div>
    </div>




</asp:Content>
