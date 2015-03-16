using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    CoopReportBO ObjCoopReportBO = new CoopReportBO();
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Submitform();
        //  MessageBox.Show();
    }

    //Insert C# Code for StudentCoop Form
    protected void Submitform()
    {

        if (string.IsNullOrEmpty(txtSId.Text) && string.IsNullOrEmpty(txtSId.Text))
        {
            errorMessage.Visible = true;
            return;
        }

        ObjCoopReportBO.StudentID = Int64.Parse(txtSId.Text);
        ObjCoopReportBO.StudentName = txtSName.Text;
        ObjCoopReportBO.JobTitle = txtJTitle.Text;
        ObjCoopReportBO.Year = ddlYear.Text;
        ObjCoopReportBO.ReportMonth = ddlRmonth.SelectedItem.Text;
        ObjCoopReportBO.Oraganization = txtOrg.Text;
        ObjCoopReportBO.AdvisorName = txtCoopAdvisorName.Text;
        ObjCoopReportBO.Comments = txtComments.Text;
        ObjCoopReportBO.DutiesPerformed = txtDutiesPerformed.Text;
        ObjCoopReportBO.LikeIntership = rblIntership.SelectedItem.Value;
        ObjCoopReportBO.AboutCoopAdvisor = rblCoopAdvisor.SelectedItem.Value;
        ObjCoopReportBO.AdequatelyPrepared = rblAdequately.SelectedItem.Value;
        ObjCoopReportBO.AgencySupervisor = rblAgencySupervisor.SelectedItem.Value;
        ObjCoopReportBO.Attendance = rblAttendance.SelectedItem.Value;
        ObjCoopReportBO.Curriculum = rblCurriculum.SelectedItem.Value;
        ObjCoopReportBO.Expectation = rblExpectation.SelectedItem.Value;
        ObjCoopReportBO.HelpProblems = rblHelpProblems.SelectedItem.Value;
        ObjCoopReportBO.Learning = rblLearning.SelectedItem.Value;
        ObjCoopReportBO.ObjectiveEstablished = rblObjectiveEstablished.SelectedItem.Value;
        ObjCoopReportBO.OverStructured = rblOverStructured.SelectedItem.Value;
        ObjCoopReportBO.Problems = rblProblems.SelectedItem.Value;
        ObjCoopReportBO.Punctuality = rblPunctuality.SelectedItem.Value;
        ObjCoopReportBO.Recommend = rblRecommend.SelectedItem.Value;
        ObjCoopReportBO.Requirement = rblRequirements.SelectedItem.Value;
        ObjCoopReportBO.Rewarding = rblRewarding.SelectedItem.Value;
        ObjCoopReportBO.SelfEvaluation = rblSelfEvaluation.SelectedItem.Value;
        ObjCoopReportBO.Structured = rblStructured.SelectedItem.Value;
        ObjCoopReportBO.SupervisorActive = rblSupervisorActive.SelectedItem.Value;

        ObjCoopReportBO.SubmitForm(ObjCoopReportBO);
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

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
        errorMessage.Visible = false;

    }    
}