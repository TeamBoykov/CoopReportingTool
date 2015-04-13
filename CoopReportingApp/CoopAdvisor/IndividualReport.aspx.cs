using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CoopAdvisor_IndividualReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StudentIndivialReport();
        }
    }
    CoopReportBO ObjCoopReportBO = new CoopReportBO();
    DataSet ds = new DataSet();
    private void StudentIndivialReport()
    {
        ObjCoopReportBO.Id = Convert.ToInt32(Request.QueryString["Id"].ToString());
        ds = ObjCoopReportBO.IndividualReport();
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblStudentId.Text = ds.Tables[0].Rows[0]["StudentID"].ToString();
            lblStudentName.Text = ds.Tables[0].Rows[0]["StudentName"].ToString();
            lblCoopAdivisorName.Text = ds.Tables[0].Rows[0]["AdvisorName"].ToString();
            lblOraganization.Text = ds.Tables[0].Rows[0]["Oraganization"].ToString();
            lblReportMonth.Text = ds.Tables[0].Rows[0]["ReportMonth"].ToString();
            lblJobTitle.Text = ds.Tables[0].Rows[0]["JobTitle"].ToString();
            lblworkterm.Text = ds.Tables[0].Rows[0]["WorkTerm"].ToString();
            lblyear.Text = ds.Tables[0].Rows[0]["Year"].ToString();
            rblIntership.SelectedValue = ds.Tables[0].Rows[0]["LikeIntership"].ToString();
            rblAdequately.SelectedValue = ds.Tables[0].Rows[0]["AdequatelyPrepared"].ToString();
            rblCurriculum.SelectedValue = ds.Tables[0].Rows[0]["Curriculum"].ToString();
            rblExpectation.SelectedValue = ds.Tables[0].Rows[0]["Expectation"].ToString();
            rblRequirements.SelectedValue = ds.Tables[0].Rows[0]["Requirement"].ToString();
            rblCoopAdvisor.SelectedValue = ds.Tables[0].Rows[0]["AboutCoopAdvisor"].ToString();
            rblAgencySupervisor.SelectedValue = ds.Tables[0].Rows[0]["AgencySupervisor"].ToString();
            rblSupervisorActive.SelectedValue = ds.Tables[0].Rows[0]["SupervisorActive"].ToString();
            rblAttendance.SelectedValue = ds.Tables[0].Rows[0]["Attendance"].ToString();
            rblPunctuality.SelectedValue = ds.Tables[0].Rows[0]["Punctuality"].ToString();
            rblStructured.SelectedValue = ds.Tables[0].Rows[0]["Structured"].ToString();
            rblOverStructured.SelectedValue = ds.Tables[0].Rows[0]["OverStructured"].ToString();
            rblProblems.SelectedValue = ds.Tables[0].Rows[0]["Problems"].ToString();
            rblHelpProblems.SelectedValue = ds.Tables[0].Rows[0]["HelpProblems"].ToString();
            rblLearning.SelectedValue = ds.Tables[0].Rows[0]["Learning"].ToString();
            rblRewarding.SelectedValue = ds.Tables[0].Rows[0]["Rewarding"].ToString();
            rblObjectiveEstablished.SelectedValue = ds.Tables[0].Rows[0]["ObjectiveEstablished"].ToString();
            rblRecommend.SelectedValue = ds.Tables[0].Rows[0]["Recommend"].ToString();
            rblSelfEvaluation.SelectedValue = ds.Tables[0].Rows[0]["SelfEvaluation"].ToString();
            txtDutiesPerformed.Text = ds.Tables[0].Rows[0]["DutiesPerformed"].ToString();
            txtComments.Text = ds.Tables[0].Rows[0]["Comments"].ToString();

        }
    }
}