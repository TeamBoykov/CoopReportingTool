﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CoopReportingApp
{
    public partial class Registration : System.Web.UI.Page
    {
        RegistrationBO ObjRegistrationBO = new RegistrationBO();
        GradepageBO ObjGradepageBO = new GradepageBO();
        AdvisorBO ObjAdvisorBO = new AdvisorBO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFirstName.Focus();
                AdvisorInfo();
            }
        }
        private void AdvisorInfo()
        {
            DataSet ds = new DataSet();
            ds = ObjAdvisorBO.AdvisorInfo();
            if (ds.Tables.Count > 0)
            {
                ddlAdvisorname.DataSource = ds;
                ddlAdvisorname.DataTextField = "AUsername";
                ddlAdvisorname.DataValueField = "AUsername";
                ddlAdvisorname.DataBind();
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            RegistrationDetails();
        }
        private void RegistrationDetails()
        {
            ObjRegistrationBO.StudentId = int.Parse(txtStudentNumber.Text);
            ObjRegistrationBO.SPassword = txtPassword.Text;
            ObjRegistrationBO.SFname = txtFirstName.Text;
            ObjRegistrationBO.SLname = txtLastName.Text;
            ObjRegistrationBO.SProgram = txtStudentProgram.Text;
            ObjRegistrationBO.SEmail = txtEmail.Text;
            ObjRegistrationBO.SAddress1 = txtAddress1.Text;
            ObjRegistrationBO.SAddress2 = txtAddress2.Text;
            ObjRegistrationBO.SCity = txtCity.Text;
            if (ddlProvince.SelectedItem.ToString() == "Select One")
            {
                ObjRegistrationBO.SProvince = "";
            }
            else
            {
                ObjRegistrationBO.SProvince = ddlProvince.SelectedItem.ToString();
            }
            ObjRegistrationBO.SPostalCode = txtPostalCode.Text;
            ObjRegistrationBO.SPhone = txtPhoneNo.Text;
            ObjRegistrationBO.SCell = txtMobileNo.Text;
            DataSet ds = new DataSet();
            ds = ObjRegistrationBO.Registration(ObjRegistrationBO);
            if (ds.Tables.Count > 0)
            {
                lblmessage.ForeColor = System.Drawing.Color.Green;
                lblmessage.Text = "Registration successfully completed";
                WorkTermInfo();
            }
            else
            {
                lblmessage.ForeColor = System.Drawing.Color.Red;
                lblmessage.Text = "Please, Enter valid a Student ID";
            }

        }
        private void WorkTermInfo()
        {
            ObjGradepageBO.StudentID = int.Parse(txtStudentNumber.Text);
            ObjGradepageBO.CompanyName = txtCompanyname.Text;
            ObjGradepageBO.CompanyAddress1 = txtCompanyAddress1.Text;
            ObjGradepageBO.CompanyAddress2 = txtCompanyAddress2.Text;
            ObjGradepageBO.City = txtCity.Text;
            if (ddlworkinfoprovience.SelectedItem.ToString() != "Select One")
            {
                ObjGradepageBO.Province = ddlworkinfoprovience.SelectedItem.ToString();
            }
            else
            {
                ObjGradepageBO.Province = "";
            }
            ObjGradepageBO.PostalCode = txtPostalCode.Text;
            if (ddlwiworkterm.SelectedItem.ToString() != "Select One")
            {
                ObjGradepageBO.WorkTerm = ddlwiworkterm.SelectedItem.ToString();
            }
            else
            {
                ObjGradepageBO.WorkTerm = "";
            }
            ObjGradepageBO.Position = txtPosition.Text;
            ObjGradepageBO.AUsername = ddlAdvisorname.SelectedItem.ToString();
            DataSet ds = new DataSet();
            ds = ObjGradepageBO.WorkTermInfo(ObjGradepageBO);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblwimessage.ForeColor = System.Drawing.Color.Green;
                lblwimessage.Text = "Work Term details successfully Inserted";
            }

        }
        protected void btnClear_Click1(object sender, EventArgs e)
        {
            txtStudentNumber.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtStudentProgram.Text = "";
            txtEmail.Text = "";
            txtAddress1.Text = "";
            txtAddress2.Text = "";
            txtCity.Text = "";
            ddlProvince.SelectedIndex = 0;
            txtPostalCode.Text = "";
            txtPhoneNo.Text = "";
            txtMobileNo.Text = "";
            txtCompanyname.Text = "";
            txtCompanyAddress1.Text = "";
            txtCompanyAddress2.Text = "";
            txtwicity.Text = "";
            ddlworkinfoprovience.SelectedIndex = 0;
            txtwipostalcode.Text = "";
            ddlwiworkterm.SelectedIndex = 0;
            txtPosition.Text = "";
            ddlAdvisorname.SelectedIndex = 0;
        }
    }
}