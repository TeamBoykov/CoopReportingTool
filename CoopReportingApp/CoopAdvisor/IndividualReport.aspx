<%@ Page Title="" Language="C#" MasterPageFile="~/CoopAdvisor/coopadvisor.Master" AutoEventWireup="true" CodeFile="IndividualReport.aspx.cs" Inherits="CoopAdvisor_IndividualReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Individual Student Coop Report</h3>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label1" runat="server" Text="Student ID:"></asp:Label>
            <asp:Label ID="lblStudentId" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label2" runat="server" Text="Student Name:"></asp:Label>
            <asp:Label ID="lblStudentName" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label3" runat="server" Text="Co-op Advisor Name:"></asp:Label>
            <asp:Label ID="lblCoopAdivisorName" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label5" runat="server" Text="Organization:"></asp:Label>
            <asp:Label ID="lblOraganization" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label4" runat="server" Text="Report Month:"></asp:Label>
            <asp:Label ID="lblReportMonth" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label7" runat="server" Text="Job Title:"></asp:Label>
            <asp:Label ID="lblJobTitle" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <%-- <p>
        Please use the following system to evaluate the internship. Circle the most appropriate number to answer
each question:
    </p>
    <div class="row">
        <div class="col-md-2">
            1 = Yes Definitely 
        </div>
        <div class="col-md-2">
            2 = Yes
        </div>
        <div class="col-md-2">
            3 = Somewhat
        </div>
        <div class="col-md-2">
            4 = No
        </div>
        <div class="col-md-2">
            5 = Definitely Not
        </div>
    </div>--%>
    <p>1. Do you like your internship? Why or why not? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton1" GroupName="intership" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton2" GroupName="intership" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton3" GroupName="intership" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton4" GroupName="intership" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton5" GroupName="intership" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>2. Do you feel adequately prepared for your internship? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton6" GroupName="adequately" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton7" GroupName="adequately" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton8" GroupName="adequately" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton9" GroupName="adequately" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton10" GroupName="adequately" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>3. Are you able to relate your internship to your curriculum in communication? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton11" GroupName="Curriculum" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton12" GroupName="Curriculum" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton13" GroupName="Curriculum" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton14" GroupName="Curriculum" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton15" GroupName="Curriculum" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>4. Does your internship fulfill your expectations? Please explain</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton16" GroupName="Expectation" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton17" GroupName="Expectation" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton18" GroupName="Expectation" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton19" GroupName="Expectation" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton20" GroupName="Expectation" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>5. Do you think that you are successfully fulfilling the requirements of your internship?</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton21" GroupName="Requirement" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton22" GroupName="Requirement" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton23" GroupName="Requirement" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton24" GroupName="Requirement" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton25" GroupName="Requirement" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>6. Do you think the lines of communication are open between you and the internship director?</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton26" GroupName="AboutCoopAdvisor" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton27" GroupName="AboutCoopAdvisor" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton28" GroupName="AboutCoopAdvisor" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton29" GroupName="AboutCoopAdvisor" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton30" GroupName="AboutCoopAdvisor" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>7. Do you think the lines of communication are open between you and your agency supervisor?</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton31" GroupName="AgencySupervisor" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton32" GroupName="AgencySupervisor" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton33" GroupName="AgencySupervisor" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton34" GroupName="AgencySupervisor" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton35" GroupName="AgencySupervisor" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>8. Is your agency supervisor aware or actively involved in your internship? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton36" GroupName="SupervisorActive" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton37" GroupName="SupervisorActive" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton38" GroupName="SupervisorActive" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton39" GroupName="SupervisorActive" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton40" GroupName="SupervisorActive" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>9. Is attendance stressed by your agency supervisor?</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton41" GroupName="Attendance" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton42" GroupName="Attendance" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton43" GroupName="Attendance" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton44" GroupName="Attendance" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton45" GroupName="Attendance" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>10. Is punctuality stressed?</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton46" GroupName="Punctuality" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton47" GroupName="Punctuality" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton48" GroupName="Punctuality" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton49" GroupName="Punctuality" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton50" GroupName="Punctuality" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>11. Is your internship structured enough? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton51" GroupName="Structured" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton52" GroupName="Structured" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton53" GroupName="Structured" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton54" GroupName="Structured" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton55" GroupName="Structured" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>12. Is your internship overly structured? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton56" GroupName="OverStructured" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton57" GroupName="OverStructured" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton58" GroupName="OverStructured" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton59" GroupName="OverStructured" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton60" GroupName="OverStructured" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>13. Do you currently have any problems related to your internship? Please explain</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton61" GroupName="Problems" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton62" GroupName="Problems" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton63" GroupName="Problems" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton64" GroupName="Problems" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton65" GroupName="Problems" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>
        14. Have you received help with intern-related problems from sources other than your faculty and
agencysupervisor? Please explain.
    </p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton66" GroupName="HelpProblems" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton67" GroupName="HelpProblems" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton68" GroupName="HelpProblems" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton69" GroupName="HelpProblems" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton70" GroupName="HelpProblems" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>15. Are you learning from your internship? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton71" GroupName="Learning" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton72" GroupName="Learning" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton73" GroupName="Learning" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton74" GroupName="Learning" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton75" GroupName="Learning" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>16. Is your internship rewarding? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton76" GroupName="Rewarding" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton77" GroupName="Rewarding" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton78" GroupName="Rewarding" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton79" GroupName="Rewarding" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton80" GroupName="Rewarding" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>17. Do you think you are mastering the objectives established for the internship? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton81" GroupName="ObjectiveEstablished" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton82" GroupName="ObjectiveEstablished" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton83" GroupName="ObjectiveEstablished" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton84" GroupName="ObjectiveEstablished" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton85" GroupName="ObjectiveEstablished" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>18. Would you recommend your internship to others? Why or why not? Please explain.</p>
    <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton86" GroupName="Recommend" Text="Yes Definitely" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton87" GroupName="Recommend" Text="Yes" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton88" GroupName="Recommend" Text="Somewhat" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton89" GroupName="Recommend" Text="No" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton90" GroupName="Recommend" Text="definitely Not" runat="server" />
        </div>
    </div>
    <p>19. Self-evaluation at midterm (circle appropriate choice):</p>
            <div class="row">
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton91" GroupName="SelfEvaluation" Text="Exceptional" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton92" GroupName="SelfEvaluation" Text="Superior" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton93" GroupName="SelfEvaluation" Text="Average" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton94" GroupName="SelfEvaluation" Text="Poor" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:RadioButton ID="RadioButton95" GroupName="SelfEvaluation" Text="Failure" runat="server" />
        </div>
    </div>
    <p>Duties Performed:</p>
    <asp:TextBox ID="txtDutiesPerformed" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
    <p>Comments:</p>
    <asp:TextBox ID="txtComments" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
</asp:Content>

