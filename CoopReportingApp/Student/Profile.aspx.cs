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
        if (!IsPostBack)
        {
            StudentProfile();
            //display student grades 
            StudentGrade();
        }
    }
    RegistrationBO ObjRegistrationBO = new RegistrationBO();
    //Grage class reference
    GradepageBO ObjGradepageBO = new GradepageBO();
    private void StudentGrade()
    {
        ObjGradepageBO.StudentID = int.Parse(txtSId.Text);
        DataSet ds = new DataSet();
        ds = ObjGradepageBO.StudentGrade();
        if (ds.Tables[0].Rows.Count > 0)
        {
            gdvGrades.DataSource = ds;
            gdvGrades.DataBind();
        }
        else
        {
            lblGradeMessage.ForeColor = System.Drawing.Color.Red;
            lblGradeMessage.Text = "Grades are not avaialble";
        }
    }
    //display student profile information
    private void StudentProfile()
    {
        ObjRegistrationBO.StudentId = int.Parse(txtSId.Text);
        DataSet ds = new DataSet();
        ds = ObjRegistrationBO.StudentProfile();
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtSFName.Text = ds.Tables[0].Rows[0]["SFname"].ToString();
            txtSLName.Text = ds.Tables[0].Rows[0]["SLname"].ToString();
            txtProgram.Text = ds.Tables[0].Rows[0]["SProgram"].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0]["SEmail"].ToString();
            txtAddress1.Text = ds.Tables[0].Rows[0]["SAddress1"].ToString();
            txtAddress2.Text = ds.Tables[0].Rows[0]["SAddress2"].ToString();
            txtCity.Text = ds.Tables[0].Rows[0]["SCity"].ToString();
            if (ds.Tables[0].Rows[0]["SProvince"].ToString() != "")
            {
                ddlProvince.Items.FindByText(ds.Tables[0].Rows[0]["SProvince"].ToString()).Selected = true;
            }
            txtPostalCode.Text = ds.Tables[0].Rows[0]["SPostalCode"].ToString();
            txtPhoneNo.Text = ds.Tables[0].Rows[0]["SPhone"].ToString();
            txtMobileNo.Text = ds.Tables[0].Rows[0]["SCell"].ToString();
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        txtSFName.Focus();
        btnEdit.Enabled = false;
        btnSave.Enabled = true;
        btnClear.Enabled = true;
        txtSFName.ReadOnly = false;
        txtSLName.ReadOnly = false;
        txtAddress1.ReadOnly = false;
        txtAddress2.ReadOnly = false;
        txtCity.ReadOnly = false;
        ddlProvince.Enabled = true;
        txtPostalCode.ReadOnly = false;
        txtProgram.ReadOnly = false;
        txtEmail.ReadOnly = false;
        txtPhoneNo.ReadOnly = false;
        txtMobileNo.ReadOnly = false;
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        btnEdit.Enabled = true;
        btnSave.Enabled = false;
        btnClear.Enabled = false;
        txtSFName.ReadOnly = true;
        txtSLName.ReadOnly = true;
        txtAddress1.ReadOnly = true;
        txtAddress2.ReadOnly = true;
        txtCity.ReadOnly = true;
        ddlProvince.Enabled = false;
        txtPostalCode.ReadOnly = true;
        txtProgram.ReadOnly = true;
        txtEmail.ReadOnly = true;
        txtPhoneNo.ReadOnly = true;
        txtMobileNo.ReadOnly = true;
        lblMessage.Text = "";
        lblGradeMessage.Text = "";


    }
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