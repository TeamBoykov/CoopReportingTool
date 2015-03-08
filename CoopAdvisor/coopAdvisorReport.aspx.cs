using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CoopAdvisor_coopAdvisorReport : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            ddlType.AppendDataBoundItems = true;

            String strConnString = ConfigurationManager.ConnectionStrings["CoopReportSampleConnectionString"].ConnectionString;

            String strQuery = "select ID, TypeName from type";

            SqlConnection con = new SqlConnection(strConnString);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = strQuery;

            cmd.Connection = con;



            con.Open();

            ddlType.DataSource = cmd.ExecuteReader();

            ddlType.DataTextField = "TypeName";

            ddlType.DataValueField = "ID";

            ddlType.DataBind();





            con.Close();

            con.Dispose();



        }

    }

    protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlParameter.Items.Clear();

        ddlParameter.Items.Add(new ListItem("--Select parameter--", ""));

        ddlQuestion.Items.Clear();

        ddlQuestion.Items.Add(new ListItem("--Select question--", ""));



        ddlParameter.AppendDataBoundItems = true;

        String strConnString = ConfigurationManager.ConnectionStrings["CoopReportSampleConnectionString"].ConnectionString;

        String strQuery = "select ID, ParameterName from parameter " +

                           "where TypeID=@TypeID";

        SqlConnection con = new SqlConnection(strConnString);

        SqlCommand cmd = new SqlCommand();

        cmd.Parameters.AddWithValue("@TypeID",

            ddlType.SelectedItem.Value);

        cmd.CommandType = CommandType.Text;

        cmd.CommandText = strQuery;

        cmd.Connection = con;



        con.Open();

        ddlParameter.DataSource = cmd.ExecuteReader();

        ddlParameter.DataTextField = "ParameterName";

        ddlParameter.DataValueField = "ID";

        ddlParameter.DataBind();

        if (ddlParameter.Items.Count > 1)
        {

            ddlParameter.Enabled = true;

        }

        else
        {

            ddlParameter.Enabled = false;

            ddlQuestion.Enabled = false;

        }
    }
    protected void ddlParameter_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlQuestion.Items.Clear();

        ddlQuestion.Items.Add(new ListItem("--Select question--", ""));

        ddlQuestion.AppendDataBoundItems = true;

        String strConnString = ConfigurationManager.ConnectionStrings["CoopReportSampleConnectionString"].ConnectionString;

        String strQuery = "select ID, Questions from questions " +

                                    "where ParameterID=@ParameterID";

        SqlConnection con = new SqlConnection(strConnString);

        SqlCommand cmd = new SqlCommand();

        cmd.Parameters.AddWithValue("@ParameterID",

                              ddlParameter.SelectedItem.Value);

        cmd.CommandType = CommandType.Text;

        cmd.CommandText = strQuery;

        cmd.Connection = con;



        con.Open();

        ddlQuestion.DataSource = cmd.ExecuteReader();

        ddlQuestion.DataTextField = "Questions";

        ddlQuestion.DataValueField = "ID";

        ddlQuestion.DataBind();

        if (ddlQuestion.Items.Count > 1)
        {

            ddlQuestion.Enabled = true;

        }

        else
        {

            ddlQuestion.Enabled = false;

        }
    }
    protected void ddlQuestion_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblResult.Text = "You Selected " +

                                  ddlType.SelectedItem.Text + " -----> " +

                                  ddlParameter.SelectedItem.Text + " -----> " +

                                  ddlQuestion.SelectedItem.Text;
    }
}