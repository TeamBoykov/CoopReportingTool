using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CoopAdvisor_GenerateReport : System.Web.UI.Page
{
    CoopReportBO objCoopReportBO = new CoopReportBO();
    EmployerEvaFormBO objEmployerEvalFromBO = new EmployerEvaFormBO();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlGenerateReport_SelectedIndexChanged(object sender, EventArgs e)
    {
        gdvGenerateReport.DataSource = "";
        gdvGenerateReport.DataBind();
        if (ddlGenerateReport.SelectedItem.ToString() == "Student")
        {
            ds = objCoopReportBO.GetCompanies();
            if (ds.Tables.Count > 0)
            {
                ddlReportOptions.DataSource = ds;
                ddlReportOptions.DataTextField = "Oraganization";
                ddlReportOptions.DataValueField = "Oraganization";
                ddlReportOptions.DataBind();
            }
        }
        else
        {
            ds = objEmployerEvalFromBO.GetCompanies();
            if (ds.Tables.Count > 0)
            {
                ddlReportOptions.DataSource = ds;
                ddlReportOptions.DataTextField = "Organization";
                ddlReportOptions.DataValueField = "Organization";
                ddlReportOptions.DataBind();
            }
        }
    }
    protected void ddlReportOptions_SelectedIndexChanged(object sender, EventArgs e)
    {
        gdvGenerateReport.DataSource = "";
        gdvGenerateReport.DataBind();
        if (ddlGenerateReport.SelectedItem.ToString() == "Student")
        {
            ddlQuestions.Items.Clear();
            ddlQuestions.Items.Add(new ListItem("Select One Option"));
            ddlQuestions.Items.Add(new ListItem("LikeIntership"));
            ddlQuestions.Items.Add(new ListItem("AdequatelyPrepared"));
            ddlQuestions.Items.Add(new ListItem("Curriculum"));
            ddlQuestions.Items.Add(new ListItem("Expectation"));
            ddlQuestions.Items.Add(new ListItem("Requirement"));
            ddlQuestions.Items.Add(new ListItem("AboutCoopAdvisor"));
            ddlQuestions.Items.Add(new ListItem("AgencySupervisor"));
            ddlQuestions.Items.Add(new ListItem("SupervisorActive"));
            ddlQuestions.Items.Add(new ListItem("Attendance"));
            ddlQuestions.Items.Add(new ListItem("Punctuality"));
            ddlQuestions.Items.Add(new ListItem("Structured"));
            ddlQuestions.Items.Add(new ListItem("OverStructured"));
            ddlQuestions.Items.Add(new ListItem("Problems"));
            ddlQuestions.Items.Add(new ListItem("HelpProblems"));
            ddlQuestions.Items.Add(new ListItem("Learning"));
            ddlQuestions.Items.Add(new ListItem("Rewarding"));
            ddlQuestions.Items.Add(new ListItem("ObjectiveEstablished"));
            ddlQuestions.Items.Add(new ListItem("Recommend"));
        }
        else
        {
            ddlQuestions.Items.Clear();
            ddlQuestions.Items.Add(new ListItem("Select One Option"));
            ddlQuestions.Items.Add(new ListItem("InterestInWork"));
            ddlQuestions.Items.Add(new ListItem("AbilityToLearn"));
            ddlQuestions.Items.Add(new ListItem("QualityofWork"));
            ddlQuestions.Items.Add(new ListItem("ProblemSolving"));
            ddlQuestions.Items.Add(new ListItem("TeamWork"));
            ddlQuestions.Items.Add(new ListItem("Dependability"));
            ddlQuestions.Items.Add(new ListItem("ResponseToSupervision"));
            ddlQuestions.Items.Add(new ListItem("Reflection"));
            ddlQuestions.Items.Add(new ListItem("Resoursefulness"));
            ddlQuestions.Items.Add(new ListItem("EthicalBehaviour"));
            ddlQuestions.Items.Add(new ListItem("AppreciationofDiversity"));
            ddlQuestions.Items.Add(new ListItem("EnterpreneurialOrientation"));
            ddlQuestions.Items.Add(new ListItem("WrittenCommunication"));
            ddlQuestions.Items.Add(new ListItem("OralCommuniation"));
            ddlQuestions.Items.Add(new ListItem("InterpersonalCommunication"));
            ddlQuestions.Items.Add(new ListItem("OverallPerformanceRating"));
        }
    }
    protected void ddlQuestions_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlGenerateReport.SelectedItem.ToString() == "Student")
        {
            gdvGenerateReport.DataSource = "";
            gdvGenerateReport.DataBind();
            objCoopReportBO.Oraganization = ddlReportOptions.SelectedItem.ToString();
            objCoopReportBO.Questionnaires = ddlQuestions.SelectedItem.ToString();
            ds = objCoopReportBO.GetQuestionnairesInfo();
            if (ds.Tables.Count > 0)
            {
                gdvGenerateReport.DataSource = ds;
                gdvGenerateReport.DataBind();
            }

        }
        else
        {
            gdvGenerateReport.DataSource = "";
            gdvGenerateReport.DataBind();
            objEmployerEvalFromBO.Organization = ddlReportOptions.SelectedItem.ToString();
            objEmployerEvalFromBO.Questionnaires = ddlQuestions.SelectedItem.ToString();
            ds = objEmployerEvalFromBO.GetQuestionnairesInfo();
            if (ds.Tables.Count > 0)
            {
                gdvGenerateReport.DataSource = ds;
                gdvGenerateReport.DataBind();
            }
        }

    }
}