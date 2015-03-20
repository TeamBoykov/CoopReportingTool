using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoopReportingApp.Student
{
    public partial class NewStudent : System.Web.UI.MasterPage
    {

        protected void DropDownReport_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect(DropDownReport.SelectedValue);
        }
    }
}