<%@ Page Title="" Language="C#" MasterPageFile="~/CoopAdvisor/coopadvisor.Master" AutoEventWireup="true" CodeFile="IndividualEvalutionForm.aspx.cs" Inherits="CoopAdvisor_IndividualEvalutionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Employer Evalution Form</h3>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label1" runat="server" Text="Student ID:"></asp:Label>
            <asp:Label ID="lblstudentID" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label2" runat="server" Text="Student Name:"></asp:Label>
            <asp:Label ID="lblStudentName" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label3" runat="server" Text="Organization:"></asp:Label>
            <asp:Label ID="lblOrganization" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label5" runat="server" Text="Job Title:"></asp:Label>
            <asp:Label ID="lblJobTitle" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label4" runat="server" Text="Work Term:"></asp:Label>
            <asp:Label ID="lblWorkterm" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label7" runat="server" Text="Year:"></asp:Label>
            <asp:Label ID="lblYear" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <hr />
    <p>
        Interest in Work. The degree to which the student pursues goals with 

commitment and takes pride inaccomplishments.
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblInterestInWork" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Ability to Learn. The extent to which the student becomes proficient with job 
duties and work processes.
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblAbilityToLearn" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Quality of Work.The ability of the student to set high standards for 

own personal performance; strive for qualitywork; put forth extra effort to ensure quality work..
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblQualityofWork" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Problem Solving. The student’s demonstrated ability to analyze problems or 

procedures, evaluate alternatives,and select the best course of action.
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblProblemSolving" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Teamwork. The degree to which the student works well in a team 

setting.
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblTeamWork" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Dependability. The manner in which the student conducts his or herself in 

the working environment.
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblDependability" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Response to Supervision. The manner in which the student responds to 

direction and constructive criticism.
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblResponseToSupervision" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Reflection.The student’s demonstrated ability to learn and adapt from 

previous experience.
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblReflection" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Resourcefulness. The student’s demonstrated ability to develop innovative 

solutions and display flexibility in unique or demanding circumstances.
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblResoursefulness" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Ethical Behaviour
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblEthicalBehaviour" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Appreciation of Diversity
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblAppreciationofDiversity" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Enterpreneurial Orientation
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblEnterpreneurialOrientation" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Written Communication
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblWrittenCommunication" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Oral Communiation
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblOralCommuniation" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Interpersonal Communication
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblInterpersonalCommunication" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        Overall PerformanceRating
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblOverallPerformanceRating" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="Fair"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="Bad"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>Supervisors Comments:</p>
    <asp:TextBox ID="txtSupervisorsComments" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
    <hr />
    <p>Supervisors Recommendations:</p>
    <asp:TextBox ID="txtSupervisorsRecommendations" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
    <hr />
    <p>
        Do you wish to have the student return for the next work term?
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblNextWorkTerm" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
                <asp:ListItem Text="Not Applicable" Value="Not Applicable"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        If yes, have you offered to re-employ the student for the next work term?
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblOfferNextWorkTerm" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
                <asp:ListItem Text="To be determined" Value="To be determined"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        If yes, was your offer:
    </p>
    <div class="row">
        <div class="col-md-2" aria-orientation="vertical">
            <asp:RadioButtonList ID="rblOfferStatus" runat="server" RepeatDirection="Horizontal" Width="1000px">
                <asp:ListItem Text="Accepted" Value="Accepted"></asp:ListItem>
                <asp:ListItem Text="Declined" Value="Declined"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <hr />
    <p>
        If the student has accepted, please confirm:
    </p>
    <p>
       Next Work term Dates: 
    </p>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label6" runat="server" Text="From:"></asp:Label>
            <asp:Label ID="lblFromdate" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label9" runat="server" Text="To:"></asp:Label>
            <asp:Label ID="lblTodate" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label8" runat="server" Text="Supervisors Name:"></asp:Label>
            <asp:Label ID="lblSupervisorsName" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label11" runat="server" Text="Supervisors Title:"></asp:Label>
            <asp:Label ID="lblSupervisorsTitle" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label10" runat="server" Text="Manager Name:"></asp:Label>
            <asp:Label ID="lblManagerName" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label13" runat="server" Text="Submitted Date:"></asp:Label>
            <asp:Label ID="lblCurrentdate" CssClass="form-control" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <hr />
</asp:Content>

