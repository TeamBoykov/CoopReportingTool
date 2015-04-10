using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoopReportingApp
{
    public partial class index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
<<<<<<< HEAD
            if (!IsPostBack)
            {
                txtusername.Focus();
            }
        }
        RegistrationBO ObjRegistrationBO = new RegistrationBO();
        AdvisorBO ObjAdvisorBO = new AdvisorBO();
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            if (ddlloginas.SelectedItem.ToString() == "Student")
            {
                ObjRegistrationBO.StudentId = int.Parse(txtusername.Text);
                ObjRegistrationBO.SPassword = txtpassword.Text;
                ds = ObjRegistrationBO.StudentLogin(ObjRegistrationBO);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["StudentID"] = int.Parse(txtusername.Text);
                    Response.Redirect("~/Student/Profile.aspx");
                }
                else
                {
                    lblmessage.ForeColor = System.Drawing.Color.Red;
                    lblmessage.Text = "Invalid login credentials";
                }
            }
            else
            {
                ObjAdvisorBO.AUsername = txtusername.Text;
                ObjAdvisorBO.APassword = txtpassword.Text;
                ds = ObjAdvisorBO.AdvisorLogin(ObjAdvisorBO);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["AdvisorName"] = txtusername.Text;
                    Response.Redirect("~/CoopAdvisor/StudentReport.aspx");
                }
                else
                {
                    lblmessage.ForeColor = System.Drawing.Color.Red;
                    lblmessage.Text = "Invalid login credentials";
                }
            }
        }

=======

        }
>>>>>>> 2fdea90df104d33248d29dd5ec1ad7e81e06f2d7
    }
}