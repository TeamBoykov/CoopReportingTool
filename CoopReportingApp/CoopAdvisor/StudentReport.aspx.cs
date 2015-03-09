using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CoopAdvisor_StudentReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // display all student coop report forms
            StudentCoopReports();
        }
    }

    //To get businees objects  from CoopReportBO class
    CoopReportBO ObjCoopReportBO = new CoopReportBO();

    //This method will get all students coop reports
    private void StudentCoopReports()
    {

        DataSet ds = new DataSet();
        ds = ObjCoopReportBO.AllStudentCoopReports();
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Append datasource data gridview 
            gdvCoopReports.DataSource = ds;
            gdvCoopReports.DataBind();
        }
    }

    //Event occures when the use clicks on filter button to filler data according to user inputs
    protected void btnFilter_Click(object sender, EventArgs e)
    {
        //Clear the data before append dataset to gridview
        gdvCoopReports.DataSource = null;
        gdvCoopReports.DataBind();
        if (txtStudentID.Text == "")
        {
            //filter gridview data according to the user selected month value
            ReportByMonth();
        }
        else if (ddlReportMonth.SelectedIndex == 0)
        {
            //filter gridview data according to the user student number
            gdvCoopReportsUsingStudentID();
        }
        else
        {
            //filter gridview data using both student_id and month name
            ObjCoopReportBO.StudentID = Convert.ToInt64(txtStudentID.Text);
            ObjCoopReportBO.ReportMonth = ddlReportMonth.SelectedItem.ToString();
            DataSet ds = new DataSet();
            ds = ObjCoopReportBO.ReportByStudentIDandMonth();
            if (ds.Tables[0].Rows.Count > 0)
            {
                //append dataset to gridview
                gdvCoopReports.DataSource = ds;
                gdvCoopReports.DataBind();
            }
        }

    }

    //Display student report using studentID
    private void gdvCoopReportsUsingStudentID()
    {
        ObjCoopReportBO.StudentID = Convert.ToInt64(txtStudentID.Text);
        DataSet ds = new DataSet();
        ds = ObjCoopReportBO.ReportByStudentID();
        if (ds.Tables[0].Rows.Count > 0)
        {
            gdvCoopReports.DataSource = ds;
            gdvCoopReports.DataBind();
        }
    }

    //Display student coop report using month
    private void ReportByMonth()
    {
        ObjCoopReportBO.ReportMonth = ddlReportMonth.SelectedItem.ToString();
        DataSet ds = new DataSet();
        ds = ObjCoopReportBO.ReportsByMonth();
        if (ds.Tables[0].Rows.Count > 0)
        {
            gdvCoopReports.DataSource = ds;
            gdvCoopReports.DataBind();
        }
    }

    protected void gdvCoopReports_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvCoopReports.PageIndex = e.NewPageIndex;
        StudentCoopReports();
    }
}   