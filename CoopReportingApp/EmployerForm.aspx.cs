using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployerForm : System.Web.UI.Page
{
    //Establishing conection to BOlayer
    EmployerEvaFormBO ObjEmployerBO = new EmployerEvaFormBO();    

    protected void Page_Load(object sender, EventArgs e)
    {
        txtSubmittedDate.Text = DateTime.Now.ToString();
    }
    //OnSubmitclick Action
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SubmitEmployerForm();
    }

    //Insert Method
    protected void SubmitEmployerForm()
    {
        if (string.IsNullOrEmpty(txtSId.Text) && string.IsNullOrEmpty(txtSId.Text))
        {
            errorMessage.Visible = true;
            return;
        }

        ObjEmployerBO.AbilityToLearn = rblAbilityToLearn.SelectedItem.Value;
        ObjEmployerBO.AppreciationofDiversity = rblAppreciationofDiversity.SelectedItem.Value;
        ObjEmployerBO.Dependability = rblDependability.SelectedItem.Value;
        ObjEmployerBO.EnterpreneurialOrientation = rblEnterpreneurialOrientation.SelectedItem.Value;
        ObjEmployerBO.EthicalBehaviour = rblEthicalBehaviour.SelectedItem.Value;
        ObjEmployerBO.InterestInWork = rblInterestInWork.SelectedItem.Value;
        ObjEmployerBO.InterpersonalCommunication = rblInterpersonalCommunication.SelectedItem.Value;
        ObjEmployerBO.JobTitle = txtJTitle.Text;
        ObjEmployerBO.ManagerName = txtmanagerName.Text;
        ObjEmployerBO.NextWorkTerm = rblNextWorkTerm.SelectedItem.Value;
        ObjEmployerBO.OfferNextWorkTerm = rblOfferNextWorkTerm.SelectedItem.Value;
        ObjEmployerBO.OfferStatus = rblOfferStatus.SelectedItem.Value;
        ObjEmployerBO.OralCommuniation = rblOralCommuniation.SelectedItem.Value;
        ObjEmployerBO.Organization = txtOrg.Text;
        ObjEmployerBO.OverallPerformanceRating = rblOverallPerformanceRating.SelectedItem.Value;
        ObjEmployerBO.ProblemSolving = rblProblemSolving.SelectedItem.Value;
        ObjEmployerBO.QualityofWork = rblQualityofWork.SelectedItem.Value;
        ObjEmployerBO.Reflection = rblReflection.SelectedItem.Value;
        ObjEmployerBO.Resoursefulness = rblResoursefulness.SelectedItem.Value;
        ObjEmployerBO.ResponseToSupervision = rblResponseToSupervision.SelectedItem.Value;
        ObjEmployerBO.StudentId = int.Parse(txtSId.Text);
        ObjEmployerBO.StudentName = txtSName.Text;
        ObjEmployerBO.SupervisorsComments = txtSupervisorsComments.Text;
        ObjEmployerBO.SupervisorsName = txtSupervisorsName.Text;
        ObjEmployerBO.SupervisorsRecommendations = txtSupervisorsRecommendations.Text;
        ObjEmployerBO.SupervisorsTitle = txtSupervisorsTitle.Text;
        ObjEmployerBO.TeamWork = rblTeamWork.SelectedItem.Value;
        ObjEmployerBO.Term = ddlWorkTerm.Text;
        ObjEmployerBO.WrittenCommunication = rblWrittenCommunication.SelectedItem.Value;
        ObjEmployerBO.year = int.Parse(ddlYear.Text);
        ObjEmployerBO.NextWorkTermFrom = txtFromDate.Text;
        ObjEmployerBO.NextWorkTermTo = txtToDate.Text;
        ObjEmployerBO.Currentdate = Convert.ToDateTime(txtSubmittedDate.Text);

        ObjEmployerBO.SubmitEmployerForm(ObjEmployerBO);

        //Confirm Message
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Evaluation Form Inserted Successfully')", true);

    }
   

    //OnClearClick Action
    protected void btnClear_Click(object sender, EventArgs e)
    {
        errorMessage.Visible = false;
        rblAbilityToLearn.Text = "";
        rblAppreciationofDiversity.Text = "";
        rblDependability.Text = "";
        rblEnterpreneurialOrientation.Text = "";
        rblEthicalBehaviour.Text = "";
        rblInterestInWork.Text = "";
        rblInterpersonalCommunication.Text = "";
        rblNextWorkTerm.Text = "";
        rblOfferNextWorkTerm.Text = "";
        rblOfferStatus.Text = "";
        rblOralCommuniation.Text = "";
        rblOverallPerformanceRating.Text = "";
        rblProblemSolving.Text = "";
        rblQualityofWork.Text = "";
        rblReflection.Text = "";
        rblResoursefulness.Text = "";
        rblResponseToSupervision.Text = "";
        rblTeamWork.Text = "";
        rblWrittenCommunication.Text = "";
        txtFromDate.Text = "";
        txtJTitle.Text = "";
        txtmanagerName.Text = "";
        txtOrg.Text="";
        txtSId.Text="";
        txtSName.Text = "";
        txtSupervisorsComments.Text = "";
        txtSupervisorsName.Text = "";
        txtSupervisorsRecommendations.Text = "";
        txtSupervisorsTitle.Text = "";
        txtToDate.Text = "";
        ddlWorkTerm.Text = "0";
        ddlYear.Text = "0";
        
    }

}