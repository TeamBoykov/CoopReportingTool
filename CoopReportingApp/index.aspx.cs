using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class index : System.Web.UI.Page
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
    CoopReportBO ObjCoopReportBO = new CoopReportBO();
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        objCoopReportBO.StudentID = int.Parse(txtSId.Text);
        objCoopReportBO.StudentName = txtSName.Text;
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
            lblMessage.Text = txtSName.Text + ":Report submitted successfully for" + ddlRmonth.SelectedItem.ToString() + " Month";

        }
        else
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Report already submitted for" + ddlRmonth.SelectedItem.ToString() + " Month";
        }
    }

    //Content Clear backend Code
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtSId.Text = "";
        txtSName.Text = "";
        txtOrg.Text = "";
        ddlYear.Text = "0";
        ddlRmonth.Text = "0";
        txtJTitle.Text = "";
        txtDutiesPerformed.Text = "";
        txtComments.Text = "";
        txtCoopAdvisorName.Text = "";
        rblAdequately.Text = "";
        rblAgencySupervisor.Text = "";
        rblAttendance.Text = "";
        rblCoopAdvisor.Text = "";
        rblCurriculum.Text = "";
        rblExpectation.Text = "";
        rblHelpProblems.Text = "";
        rblIntership.Text = "";
        rblLearning.Text = "";
        rblObjectiveEstablished.Text = "";
        rblOverStructured.Text = "";
        rblProblems.Text = "";
        rblPunctuality.Text = "";
        rblRecommend.Text = "";
        rblRequirements.Text = "";
        rblRewarding.Text = "";
        rblSelfEvaluation.Text = "";
        rblStructured.Text = "";
        rblSupervisorActive.Text = "";
        lblMessage.Text = "";

    }
}