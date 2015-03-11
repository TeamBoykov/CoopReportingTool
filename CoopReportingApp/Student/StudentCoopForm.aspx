<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.Master" AutoEventWireup="true" CodeFile="StudentCoopForm.aspx.cs" Inherits="Student_StudentCoopForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Individual Student Coop Report</h3>
    <div class="alert alert-danger" visible="false" id="errorMessage" runat="server">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Error!</strong> Please check values before submitting.
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:TextBox ID="txtSId" CssClass="form-control" placeholder="StudentID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student Id Required" ForeColor="Red" ControlToValidate="txtSId"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Student ID" Display="Dynamic" ForeColor="Red"
                ValidationExpression="\d\d\d\d\d\d\d\d\d" ControlToValidate="txtSId" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
         </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtSName" CssClass="form-control" placeholder="Student Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student Name Required" ForeColor="Red" ControlToValidate="txtSName"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Student Name" Display="Dynamic" ForeColor="Red"
                ValidationExpression="[A-Za-z./ ]+$" ControlToValidate="txtSName" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>        
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:DropDownList ID="ddlYear" CssClass="form-control" runat="server">
                <asp:ListItem Text="Select Year" Value="0"> </asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
                <asp:ListItem>2021</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator InitialValue="0" ErrorMessage="Year Required" ForeColor="Red" ControlToValidate="ddlYear"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            </div>
        <div class="col-md-6">
            <asp:DropDownList ID="ddlRmonth" CssClass="form-control" runat="server">
                <asp:ListItem Text="Choose Month" Value="0"> </asp:ListItem>
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>Jun</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sept</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator InitialValue="0" ErrorMessage="Month Required" ForeColor="Red" ControlToValidate="ddlRmonth"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </div>
        
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOrg" CssClass="form-control" placeholder="Organization" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Organization Name Required" Display="Dynamic" ForeColor="Red" ControlToValidate="txtOrg"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Organization Name" Display="Dynamic" ForeColor="Red"
                ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtOrg" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
         <div class="col-md-6">
            <asp:TextBox ID="txtCoopAdvisorName" CssClass="form-control" placeholder="Advisor Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Advisor Name Required" ForeColor="Red" ControlToValidate="txtCoopAdvisorName"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Advisor Name" Display="Dynamic" ForeColor="Red"
                ValidationExpression="[A-Za-z./ ]+$" ControlToValidate="txtCoopAdvisorName" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-6">

            <asp:TextBox ID="txtJTitle" CssClass="form-control" placeholder="Job Tiltle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Job Title Required" ForeColor="Red" ControlToValidate="txtJTitle"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Job Name" Display="Dynamic" ForeColor="Red"
                ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtJTitle" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
        </div>


    <p>1. Do you like your internship? Why or why not? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblIntership" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitely Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>2. Do you feel adequately prepared for your internship? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblAdequately" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitely Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>3. Are you able to relate your internship to your curriculum in communication? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblCurriculum" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitely Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>4. Does your internship fulfill your expectations? Please explain</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblExpectation" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>5. Do you think that you are successfully fulfilling the requirements of your internship?</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblRequirements" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>6. Do you think the lines of communication are open between you and the internship director?</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblCoopAdvisor" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>7. Do you think the lines of communication are open between you and your agency supervisor?</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblAgencySupervisor" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>8. Is your agency supervisor aware or actively involved in your internship? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblSupervisorActive" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>9. Is attendance stressed by your agency supervisor?</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblAttendance" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>10. Is punctuality stressed?</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblPunctuality" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>11. Is your internship structured enough? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblStructured" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>12. Is your internship overly structured? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblOverStructured" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>13. Do you currently have any problems related to your internship? Please explain</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblProblems" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        14. Have you received help with intern-related problems from sources other than your faculty and
agencysupervisor? Please explain.
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblHelpProblems" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>15. Are you learning from your internship? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblLearning" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>16. Is your internship rewarding? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblRewarding" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>17. Do you think you are mastering the objectives established for the internship? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblObjectiveEstablished" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>18. Would you recommend your internship to others? Why or why not? Please explain.</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblRecommend" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>19. Self-evaluation at midterm (circle appropriate choice):</p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblSelfEvaluation" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem>Yes Definitely</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>Somewhat</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Definitly Not</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>Duties Performed:</p>
    <asp:TextBox ID="txtDutiesPerformed" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
    <hr />
    <p>Comments:</p>
    <asp:TextBox ID="txtComments" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
    <hr />

    <div align="center">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary " Height="41px" Width="138px" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnClear" runat="server" CausesValidation="False"
            Text="Clear" CssClass="btn btn-warning" Height="41px" Width="138px" OnClick="btnClear_Click" />
    </div>
    <br />
</asp:Content>
