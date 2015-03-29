using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace CoopReportingApp.CoopAdvisor
{
    public partial class GradePage1 : System.Web.UI.Page
    {
        GradepageBO ObjGradeBO = new GradepageBO();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblStudentID.Text = Request.QueryString["StudentID"];
                
            }


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            ObjGradeBO.StudentID = int.Parse(lblStudentID.Text);
            ObjGradeBO.WorkTerm = ddlWorkTerm.SelectedItem.Value;
            ObjGradeBO.Grade = int.Parse(TextStudentGrade.Text);
            ds = ObjGradeBO.UpdateGrade(ObjGradeBO);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Grade updated";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Grade already updated or Student does not exists";
            }
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            TextStudentGrade.Text = "";
            ddlWorkTerm.SelectedIndex = 0;
            lblMessage.Text = "";

        }
    }
}