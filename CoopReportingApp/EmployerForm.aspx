<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeFile="EmployerForm.aspx.cs" Inherits="EmployerForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Employer Evalution Form</h3>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label1" runat="server" Text="Student ID:"></asp:Label>
            <asp:TextBox ID="txtSId" CssClass="form-control" placeholder="StudentID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student Id Required" ForeColor="Red" ControlToValidate="txtSId"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Student ID" Display="Dynamic" ForeColor="Red"
                ValidationExpression="\d\d\d\d\d\d\d\d\d" ControlToValidate="txtSId" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label2" runat="server" Text="Student Name:"></asp:Label>
            <asp:TextBox ID="txtSName" CssClass="form-control" placeholder="Student Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Student Name Required" ForeColor="Red" ControlToValidate="txtSName"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Student Name" Display="Dynamic" ForeColor="Red"
                ValidationExpression="[A-Za-z./ ]+$" ControlToValidate="txtSName" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label3" runat="server" Text="Organization:"></asp:Label>
            <asp:TextBox ID="txtOrg" CssClass="form-control" placeholder="Organization" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Organization Name Required" Display="Dynamic" ForeColor="Red" ControlToValidate="txtOrg"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Organization Name" Display="Dynamic" ForeColor="Red"
                ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtOrg" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label5" runat="server" Text="Job Title:"></asp:Label>
            <asp:TextBox ID="txtJTitle" CssClass="form-control" placeholder="Job Tiltle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Job Title Required" ForeColor="Red" ControlToValidate="txtJTitle"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
            <asp:RegularExpressionValidator ErrorMessage="Invalid Job Name" Display="Dynamic" ForeColor="Red"
                ValidationExpression="^[A-Za-z./ ]+$" ControlToValidate="txtJTitle" runat="server" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label4" runat="server" Text="Work Term:"></asp:Label>
            <asp:DropDownList ID="ddlWorkTerm" CssClass="form-control" runat="server">
                <asp:ListItem Text="Select Term" Value="0"> </asp:ListItem>
                <asp:ListItem>Spring</asp:ListItem>
                <asp:ListItem>Summer</asp:ListItem>
                <asp:ListItem>Fall</asp:ListItem>
                
            </asp:DropDownList>
            <asp:RequiredFieldValidator InitialValue="0" ErrorMessage="Term Required" ForeColor="Red" ControlToValidate="ddlWorkTerm"
                runat="server" EnableClientScript="False" SetFocusOnError="True" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label7" runat="server" Text="Year:"></asp:Label>
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
        If the student, has accepted please confirm:
    </p>
    <p>
       Next Work term Dates: 
    </p>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label6" runat="server" Text="From:"></asp:Label>
            <asp:TextBox ID="txtFromDate" placeholder="MM/DD/YYYY" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label9" runat="server" Text="To:"></asp:Label>
            <asp:TextBox ID="txtToDate" placeholder="MM/DD/YYYY" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label8" runat="server" Text="Supervisors Name:"></asp:Label>
            <asp:TextBox ID="txtSupervisorsName" placeholder="Supervisors Name" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label11" runat="server" Text="Supervisors Title:"></asp:Label>
            <asp:TextBox ID="txtSupervisorsTitle" placeholder="Supervisors Title" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="Label10" runat="server" Text="Manager Name:"></asp:Label>
            <asp:TextBox ID="txtmanagerName" placeholder="Manager Name" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label13" runat="server" Text="Submitted Date:"></asp:Label>
            <asp:TextBox ID="txtSubmittedDate" placeholder="MM/DD/YYYY" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <hr />
    <div align="center">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary " Height="41px" Width="138px" OnClick="btnSubmit_Click"  />
        <asp:Button ID="btnClear" runat="server" CausesValidation="False"
            Text="Clear" CssClass="btn btn-warning" Height="41px" Width="138px" OnClick="btnClear_Click" />
    </div>
    <br />

</asp:Content>

