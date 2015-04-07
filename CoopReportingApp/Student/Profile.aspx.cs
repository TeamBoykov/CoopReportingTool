using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    RegistrationBO ObjRegistrationBO = new RegistrationBO();
    protected void btnSave_Click(object sender, EventArgs e)
    {
        ObjRegistrationBO.StudentId = int.Parse(txtSId.Text);
        ObjRegistrationBO.SFname = txtSFName.Text;
        ObjRegistrationBO.SLname = txtSLName.Text;
        ObjRegistrationBO.SProgram = txtProgram.Text;
        ObjRegistrationBO.SEmail = txtEmail.Text;
        ObjRegistrationBO.SAddress1 = txtAddress1.Text;
        ObjRegistrationBO.SAddress2 = txtAddress2.Text;
        ObjRegistrationBO.SCity = txtCity.Text;
        ObjRegistrationBO.SProvince = ddlProvince.SelectedItem.ToString();
        ObjRegistrationBO.SPostalCode = txtPostalCode.Text;
        ObjRegistrationBO.SPhone = txtPhoneNo.Text;
        ObjRegistrationBO.SCell = txtMobileNo.Text;
        DataSet ds = new DataSet();
        ds = ObjRegistrationBO.UpdateProfile(ObjRegistrationBO);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Profile Updated";
        }
    }
}