<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeFile="StudentSubmissionForm.aspx.cs" Inherits="CoopReportingApp.StudentSubmissionForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 303px ;
        }
        .auto-style2 {
            width: 303px ;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
            width: 131px;
        }
        .auto-style5 {
            width: 131px;
        }
        .auto-style6 {
            width: 325px ;
        }
        .auto-style7 {
            width: 113px;
        }
        .auto-style8 {
            width: 325px ;
            height: 20px;
        }
        .auto-style9 {
            width: 113px;
            height: 20px;
        }
        .auto-style10 {
            width: 284px ;
        }
        .auto-style11 {
            width: 132px;
        }
        .auto-style12 {
            width: 284px ;
            height: 20px;
        }
        .auto-style13 {
            width: 132px;
            height: 20px;
        }
        .auto-style14 {
            width: 355px;
        }
        .auto-style15 {
            height: 20px;
            width: 355px;
        }
        .auto-style16 {
            width: 88px;
            height: 20px;
        }
        .auto-style17 {
            width: 88px;
        }
        .auto-style18 {
            height: 40px;
            width: 336px;
        }
        .auto-style19 {
            width: 336px ;
        }
        .auto-style20 {
            width: 336px ;
            height: 20px;
        }
        .auto-style21 {
            width: 104px;
            height: 20px;
        }
        .auto-style22 {
            width: 104px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
    <div class="row">
        
       
        STUDENT SUBMISSION FORM<br />
        Student Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Organization:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Student ID #:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        Student Job Title:<asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
        <br />
        Term:
        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="grp1" Text="Winter (Jan-Feb)" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="grp1" Text="Spring(May-Aug)" />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="grp1" Text="Fall(Sept-Dec)" />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Year:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        Student Evaluation Form allows the supervisor and student to fulfill the evaluation process. The return of this completed evaluation form is required for the student to receive credit for the work term. Please fill out this form near the end of every month.<br />
        <hr />

        
       
        <br />
        Performance Expectations:these scales measure the behaviours and abilities that all co-op students are expected to progressively attain and refine as they advance through their years of study.<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="login">Developing Performance(1-2)</td>
                <td>Good Performance(3-5)</td>
                <td>Superior Performance(6-7)</td>
            </tr>
            <tr>
                <td class="login">Students performing in this range require further development and support to meet the expectatons with respect to output,quality standards, delivery og goals and/or assignments.</td>
                <td>Students performing in this range are meeting and, in some instances, exeeding the performance expectations in respect to output, quality standards, and delivery of goals and/or assignment.</td>
                <td>Students performing within this range are consistently exceeding the performance expectations and they should be demonstrating the ability to take on broader responsibilities that would normally be reserved for a staff member working in a regular/permanent role (non-coop).</td>
            </tr>
            
        </table>
        <br />
        <table style="width:100%;">
            <tr>
               <td class="auto-style1">Interest In Work: The degree to which you pursues goals with commitment and took pride in accomplishments.</td>
               
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="work" Text="1" />
&nbsp;<asp:RadioButton ID="RadioButton5" runat="server" GroupName="work" Text="2" />
                </td>
                <td class="auto-style4">
                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="work" Text="3" />
                    <asp:RadioButton ID="RadioButton7" runat="server" GroupName="work" Text="4" />
                    <asp:RadioButton ID="RadioButton8" runat="server" GroupName="work" Text="5" />
                </td>
                <td class="auto-style3" title="6">
                    <asp:RadioButton ID="RadioButton9" runat="server" GroupName="work" Text="6" />
                    <asp:RadioButton ID="RadioButton10" runat="server" GroupName="work" Text="7" />
                    <asp:RadioButton ID="RadioButton11" runat="server" GroupName="work" Text="not observed" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Developing Performance  Shows little enthusiasm for assigned work, infrequently requests additional tasks</td>
                <td class="auto-style5">Good Performance  Enthusiastic about their assignments/work, agreeable to new responsibilities, asks for new tasks</td>
                <td>Superior Performance  Displays enthusiasm for work that is beyond their job requirements; proactively seeks new tasks and responsibilities</td>
            </tr>
        </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style6">Ability to learn:the extend to which you became efficient with thework duties and work process.</td>
               
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:RadioButton ID="RadioButton12" runat="server" GroupName="learn" Text="1" />
                    <asp:RadioButton ID="RadioButton13" runat="server" GroupName="learn" Text="2" />
                </td>
                <td class="auto-style9">
                    <asp:RadioButton ID="RadioButton14" runat="server" GroupName="learn" Text="3" />
                    <asp:RadioButton ID="RadioButton15" runat="server" GroupName="learn" Text="4" />
                    <asp:RadioButton ID="RadioButton17" runat="server" GroupName="learn" Text="5" />
                </td>
                <td class="auto-style3">
                    <asp:RadioButton ID="RadioButton16" runat="server" GroupName="learn" Text="6" />
                    <asp:RadioButton ID="RadioButton18" runat="server" GroupName="learn" Text="7" />
                    <asp:RadioButton ID="RadioButton19" runat="server" GroupName="learn" Text="not observed" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Superior Performance  Displays enthusiasm for work that is beyond their job requirements; proactively seeks new tasks and responsibilities</td>
                <td class="auto-style7">Good Performance  Quick to become proficient at new tasks</td>
                <td>Good Performance  Quick to become proficient at new tasks</td>
            </tr>
        </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style10">3. Quality of Work. The ability of the student to set high standards for own personal performance; strive for quality work; put forth extra effort to ensure quality work.</td>
              
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:RadioButton ID="RadioButton20" runat="server" Text="1" />
                    <asp:RadioButton ID="RadioButton21" runat="server" Text="2" />
                </td>
                <td class="auto-style11">
                    <asp:RadioButton ID="RadioButton22" runat="server" Text="3" />
                    <asp:RadioButton ID="RadioButton23" runat="server" Text="4" />
                    <asp:RadioButton ID="RadioButton24" runat="server" Text="5" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton25" runat="server" Text="6" />
                    <asp:RadioButton ID="RadioButton26" runat="server" Text="7" />
                    <asp:RadioButton ID="RadioButton27" runat="server" Text="not observed" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Developing Performance  Work does not meet expectations, has more than the expected number of errors</td>
                <td class="auto-style13">Good Performance  Work is usually very thorough and well done, few errors</td>
                <td class="auto-style3">Superior Performance  Work is always very thorough and of excellent quality, few if any errors</td>
            </tr>
        </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style14">Quantity of Work. The volume of work produced by the student, along with his or her speed and consistency of output.</td>
              
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:RadioButton ID="RadioButton28" runat="server" Text="1" />
                    <asp:RadioButton ID="RadioButton29" runat="server" Text="2" />
                </td>
                <td class="auto-style16">
                    <asp:RadioButton ID="RadioButton30" runat="server" Text="3" />
                    <asp:RadioButton ID="RadioButton31" runat="server" Text="4" />
                    <asp:RadioButton ID="RadioButton32" runat="server" Text="5" />
                </td>
                <td class="auto-style3">
                    <asp:RadioButton ID="RadioButton33" runat="server" Text="6" />
                    <asp:RadioButton ID="RadioButton34" runat="server" Text="7" />
                    <asp:RadioButton ID="RadioButton35" runat="server" Text="not observed" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style18">Problem Solving. The student’s demonstrated ability to analyze problems or procedures, evaluate alternatives, and select the best course of action.</td>
               
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:RadioButton ID="RadioButton36" runat="server" Text="1" />
                    <asp:RadioButton ID="RadioButton37" runat="server" Text="2" />
                </td>
                <td class="auto-style21">
                    <asp:RadioButton ID="RadioButton38" runat="server" Text="3" />
                    <asp:RadioButton ID="RadioButton39" runat="server" Text="4" />
                    <asp:RadioButton ID="RadioButton40" runat="server" Text="5" />
                </td>
                <td class="auto-style3">
                    <asp:RadioButton ID="RadioButton41" runat="server" Text="6" />
                    <asp:RadioButton ID="RadioButton42" runat="server" Text="7" />
                    <asp:RadioButton ID="RadioButton43" runat="server" Text="not observed" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Developing Performance  Can make routine decisions but needs guidance and checking</td>
                <td class="auto-style22">Good Performance  Can be relied upon to make good decisions, requires limited guidance</td>
                <td>Superior Performance  Independently manages complex tasks and makes good decisions for work without guidance</td>
            </tr>
        </table>
        <br />
        <br />






        
       
     </div>
</div>
    
</asp:Content>


