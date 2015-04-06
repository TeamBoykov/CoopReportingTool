using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoopReportingApp
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtStudentNumber.Text = "";
            txtStudentProgram.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtMob.Text = "";
            txtPhoneNumber.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            txtCompany.Text = "";
            txtCompanyAddress.Text = "";
            txtPosition.Text = "";
            dropWorkTerm.SelectedIndex = 0;
            txtCoopAdvisor.Text = "";
        }
        protected void btnClear_Click1(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
}
}