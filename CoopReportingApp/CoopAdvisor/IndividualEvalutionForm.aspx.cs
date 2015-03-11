using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CoopAdvisor_IndividualEvalutionForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            EmployerEvalutionForm();
        }
    }
    EmployerEvaFormBO objEmployerEvaFormBO = new EmployerEvaFormBO();
    DataSet ds = new DataSet();
    private void EmployerEvalutionForm()
    {
        objEmployerEvaFormBO.Id = int.Parse(Request.QueryString["Id"]);
        ds = objEmployerEvaFormBO.IndividualEvalutionForm();
        if (ds.Tables[0].Rows.Count > 0) { 
            lblstudentID.Text =ds.Tables[0].Rows[0]["StudentId"].ToString();
            lblStudentName.Text = ds.Tables[0].Rows[0]["StudentName"].ToString();
            lblOrganization.Text = ds.Tables[0].Rows[0]["Organization"].ToString();
            lblJobTitle.Text = ds.Tables[0].Rows[0]["JobTitle"].ToString();
            lblWorkterm.Text = ds.Tables[0].Rows[0]["Term"].ToString();
            lblYear.Text = ds.Tables[0].Rows[0]["year"].ToString();
            rblInterestInWork.SelectedValue = ds.Tables[0].Rows[0]["InterestInWork"].ToString();
            rblAbilityToLearn.SelectedValue = ds.Tables[0].Rows[0]["AbilityToLearn"].ToString();
            rblQualityofWork.SelectedValue = ds.Tables[0].Rows[0]["QualityofWork"].ToString();
            rblProblemSolving.SelectedValue = ds.Tables[0].Rows[0]["ProblemSolving"].ToString();
            rblTeamWork.SelectedValue = ds.Tables[0].Rows[0]["TeamWork"].ToString();
            rblDependability.SelectedValue = ds.Tables[0].Rows[0]["Dependability"].ToString();
            rblResponseToSupervision.SelectedValue = ds.Tables[0].Rows[0]["ResponseToSupervision"].ToString();
            rblReflection.SelectedValue = ds.Tables[0].Rows[0]["Reflection"].ToString();
            rblResoursefulness.SelectedValue = ds.Tables[0].Rows[0]["Resoursefulness"].ToString();
            rblEthicalBehaviour.SelectedValue = ds.Tables[0].Rows[0]["EthicalBehaviour"].ToString();
            rblAppreciationofDiversity.SelectedValue = ds.Tables[0].Rows[0]["AppreciationofDiversity"].ToString();
            rblEnterpreneurialOrientation.SelectedValue = ds.Tables[0].Rows[0]["EnterpreneurialOrientation"].ToString();
            rblWrittenCommunication.SelectedValue = ds.Tables[0].Rows[0]["WrittenCommunication"].ToString();
            rblOralCommuniation.SelectedValue = ds.Tables[0].Rows[0]["OralCommuniation"].ToString();
            rblInterpersonalCommunication.SelectedValue = ds.Tables[0].Rows[0]["InterpersonalCommunication"].ToString();
            rblOverallPerformanceRating.SelectedValue = ds.Tables[0].Rows[0]["OverallPerformanceRating"].ToString();
            txtSupervisorsComments.Text = ds.Tables[0].Rows[0]["SupervisorsComments"].ToString();
            txtSupervisorsRecommendations.Text = ds.Tables[0].Rows[0]["SupervisorsRecommendations"].ToString();
            rblNextWorkTerm.SelectedValue = ds.Tables[0].Rows[0]["NextWorkTerm"].ToString();
            rblOfferNextWorkTerm.SelectedValue = ds.Tables[0].Rows[0]["OfferNextWorkTerm"].ToString();
            rblOfferStatus.SelectedValue = ds.Tables[0].Rows[0]["OfferStatus"].ToString();
            lblFromdate.Text = ds.Tables[0].Rows[0]["NextWorkTermFrom"].ToString();
            lblTodate.Text = ds.Tables[0].Rows[0]["NextWorkTermTo"].ToString();
            lblSupervisorsName.Text = ds.Tables[0].Rows[0]["SupervisorsName"].ToString();
            lblSupervisorsTitle.Text = ds.Tables[0].Rows[0]["SupervisorsTitle"].ToString();
            lblCurrentdate.Text = ds.Tables[0].Rows[0]["Currentdate"].ToString();
            lblManagerName.Text = ds.Tables[0].Rows[0]["ManagerName"].ToString();


        }
    }
}
