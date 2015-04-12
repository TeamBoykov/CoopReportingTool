<%@ Page Title="" Language="C#" MasterPageFile="~/CoopAdvisor/coopadvisor.Master" AutoEventWireup="true" CodeFile="IndividualReport.aspx.cs" Inherits="CoopAdvisor_IndividualReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Individual Student Coop Report</h3>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label1" runat="server" Text="Student ID:"></asp:Label>
            <asp:Label ID="lblStudentId" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label2" runat="server" Text="Student Name:"></asp:Label>
            <asp:Label ID="lblStudentName" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label3" runat="server" Text="Co-op Advisor Name:"></asp:Label>
            <asp:Label ID="lblCoopAdivisorName" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label5" runat="server" Text="Oraganization:"></asp:Label>
            <asp:Label ID="lblOraganization" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label4" runat="server" Text="Report Month:"></asp:Label>
            <asp:Label ID="lblReportMonth" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label7" runat="server" Text="Job Title:"></asp:Label>
            <asp:Label ID="lblJobTitle" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label6" runat="server" Text="Report Year:"></asp:Label>
            <asp:Label ID="lblyear" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label9" runat="server" Text="Work Term:"></asp:Label>
            <asp:Label ID="lblworkterm" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <hr />
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
</asp:Content>

