using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_StudentCoopReport : System.Web.UI.Page
{
    CoopReportBO objCoopReportBO = new CoopReportBO();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtSId.Focus();
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        objCoopReportBO.StudentName = txtSName.Text;
        objCoopReportBO.StudentID = int.Parse(txtSId.Text);
        objCoopReportBO.AdvisorName = txtCoopAdvisorName.Text;
        objCoopReportBO.Oraganization = txtOrg.Text;
        objCoopReportBO.Year = int.Parse(ddlYear.SelectedItem.ToString());
        objCoopReportBO.ReportMonth = ddlRmonth.SelectedItem.ToString();
        objCoopReportBO.JobTitle = txtJTitle.Text;
        objCoopReportBO.LikeIntership = rblIntership.SelectedItem.Value;
        objCoopReportBO.AboutCoopAdvisor = rblCoopAdvisor.SelectedItem.Value;
        objCoopReportBO.AdequatelyPrepared = rblAdequately.SelectedItem.Value;
        objCoopReportBO.AgencySupervisor = rblAgencySupervisor.SelectedItem.Value;
        objCoopReportBO.Attendance = rblAttendance.SelectedItem.Value;
        objCoopReportBO.Curriculum = rblCurriculum.SelectedItem.Value;
        objCoopReportBO.Expectation = rblExpectation.SelectedItem.Value;
        objCoopReportBO.HelpProblems = rblHelpProblems.SelectedItem.Value;
        objCoopReportBO.Learning = rblLearning.SelectedItem.Value;
        objCoopReportBO.ObjectiveEstablished = rblObjectiveEstablished.SelectedItem.Value;
        objCoopReportBO.OverStructured = rblOverStructured.SelectedItem.Value;
        objCoopReportBO.Problems = rblProblems.SelectedItem.Value;
        objCoopReportBO.Punctuality = rblPunctuality.SelectedItem.Value;
        objCoopReportBO.Recommend = rblRecommend.SelectedItem.Value;
        objCoopReportBO.Requirement = rblRequirements.SelectedItem.Value;
        objCoopReportBO.Rewarding = rblRewarding.SelectedItem.Value;
        objCoopReportBO.SelfEvaluation = rblSelfEvaluation.SelectedItem.Value;
        objCoopReportBO.Structured = rblStructured.SelectedItem.Value;
        objCoopReportBO.SupervisorActive = rblSupervisorActive.SelectedItem.Value;
        ds = objCoopReportBO.InsertCoopReport(objCoopReportBO);
        if (ds.Tables.Count > 0)
        {
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = txtSName.Text + ":Report submitted successfully";

        }
        else
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Report already submitted for" + ddlRmonth.SelectedItem.ToString() + " Month";
        }

    }
}