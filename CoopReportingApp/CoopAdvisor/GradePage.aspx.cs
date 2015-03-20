using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoopReportingApp.CoopAdvisor
{
    public partial class GradePage1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            
        }
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            TextStudentID.Text = "";
            TextStudentGrade.Text = "";
            dropWorkTerm.SelectedIndex = 0;
            TextAdvisorName.Text = "";
                      
        }

    }
}