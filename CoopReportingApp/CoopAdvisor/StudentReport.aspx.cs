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
        if (!IsPostBack) {
            StudentCoopReports();
        }
    }
    CoopReportBO ObjCoopReportBO = new CoopReportBO();
    private void StudentCoopReports()
    {
        DataSet ds = new DataSet();
        ds = ObjCoopReportBO.AllStudentCoopReports();
        if (ds.Tables[0].Rows.Count > 0) {
            gdvCoopReports.DataSource = ds;
            gdvCoopReports.DataBind();
        }
    }
    protected void btnFilter_Click(object sender, EventArgs e)
    {
        gdvCoopReports.DataSource = null;
        gdvCoopReports.DataBind();
        if (txtStudentID.Text == "") {
            ReportByMonth();
        }
        else if (ddlReportMonth.SelectedIndex == 0){
            gdvCoopReportsUsingStudentID();
        }
        else {
            ObjCoopReportBO.StudentID = Convert.ToInt64(txtStudentID.Text);
            ObjCoopReportBO.ReportMonth = ddlReportMonth.SelectedItem.ToString();
            DataSet ds = new DataSet();
            ds = ObjCoopReportBO.ReportByStudentIDandMonth();
            if (ds.Tables[0].Rows.Count > 0)
            {
                gdvCoopReports.DataSource = ds;
                gdvCoopReports.DataBind();
            }
        }
       
    }

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
}