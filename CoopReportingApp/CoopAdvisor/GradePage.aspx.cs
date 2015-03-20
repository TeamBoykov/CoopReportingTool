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

            if (Page.IsValid)
            {
                try
                {
                    cnn.Open();
                    SqlCommand insert = new SqlCommand("insert into Grade(StudentID, Grade, Term,AdvisorName) values(@StudentID, @Grade, @Term,@AdvisorName)", cnn);
                    insert.Parameters.AddWithValue("@StudentID", TextStudentID.Text);
                    insert.Parameters.AddWithValue("@Grade", TextStudentGrade.Text);
                    insert.Parameters.AddWithValue("@Term", dropWorkTerm.Text);
                    insert.Parameters.AddWithValue("@AdvisorName", TextAdvisorName.Text);
                    int rowsAffected = insert.ExecuteNonQuery();

                    if (rowsAffected == 1)
                    {
                        
                        //lbl_msg.Text = "You Have Successfuly Inserted Grade!";
                        //DevAlertMessage.Visible = true;
                    }

                }
                catch (Exception ex)
                {

                    lbl_msg.Text = "Error: " + ex.Message;
                    lbl_msg.Visible = true;
                }

                finally
                {
                    if (cnn != null)
                    {
                        cnn.Close();
                        TextStudentID.Text = "";
                        TextStudentGrade.Text = "";
                        dropWorkTerm.SelectedIndex = 0;
                        TextAdvisorName.Text = "";
                        DevAlertMessage.Visible = true;
                        TextStudentID.ReadOnly = true;
                        TextStudentGrade.ReadOnly = true;
                        dropWorkTerm.Enabled = false;
                        TextAdvisorName.ReadOnly = true;
                        BtniInsert.Enabled = false;
                        BtnCancel.Enabled = false;
                    }

                }
            }

        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            TextStudentID.Text = "";
            TextStudentGrade.Text = "";
            dropWorkTerm.SelectedIndex = 0;
            TextAdvisorName.Text = "";
            lbl_msg.Text = "";
            
        }

        protected void BunAlertMessage_Click(object sender, EventArgs e)
        {
            DevAlertMessage.Visible = false;
            lbl_msg.Text = "";
            TextStudentID.Text = "";
            TextStudentGrade.Text = "";
            dropWorkTerm.SelectedIndex = 0;
            TextAdvisorName.Text = "";
            TextStudentID.ReadOnly = false;
            TextStudentGrade.ReadOnly = false;
            dropWorkTerm.Enabled = true;
            TextAdvisorName.ReadOnly = false;
            BtniInsert.Enabled = true;
            BtnCancel.Enabled = true;
            
        }
    }
}