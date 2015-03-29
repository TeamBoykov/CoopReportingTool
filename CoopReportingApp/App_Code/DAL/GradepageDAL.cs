using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for GradepageDAL
/// </summary>
public class GradepageDAL
{
    public GradepageDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    static SqlConnection SqlCon = BaseDAL.Connection_through_Config();
    internal static DataSet UpdateGrade(GradepageBO objGradepageBO)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_WorkTerm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentId", objGradepageBO.StudentID);
        da.SelectCommand.Parameters.AddWithValue("@Grade", objGradepageBO.Grade);
        da.SelectCommand.Parameters.AddWithValue("@WorkTerm", objGradepageBO.WorkTerm);
        da.SelectCommand.Parameters.AddWithValue("@Type", "Up");
        DataSet ds = new DataSet();
        da.Fill(ds);
        try
        {
            return ds;
        }
        catch
        {
            throw;
        }
    }
}