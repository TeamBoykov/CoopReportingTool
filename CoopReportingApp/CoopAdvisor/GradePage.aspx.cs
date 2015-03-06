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
            lbl_msg.Visible = false;
            DevAlertMessage.Visible = false;
        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source=. ; Database=coop; Integrated Security=true");

        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            
        }

        protected void BunAlertMessage_Click(object sender, EventArgs e)
        {
            
            
        }
    }
}