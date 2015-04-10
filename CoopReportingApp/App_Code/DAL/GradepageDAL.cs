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
    internal static DataSet StudentGrade(int StudentID)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_WorkTerm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentId", StudentID);
        da.SelectCommand.Parameters.AddWithValue("@Type", "S");
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

    internal static DataSet WorkTermInfo(GradepageBO ObjGradepageBO)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_WorkTerm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentId", ObjGradepageBO.StudentID);
        da.SelectCommand.Parameters.AddWithValue("@CompanyName", ObjGradepageBO.CompanyName);
        da.SelectCommand.Parameters.AddWithValue("@CompanyAddress1", ObjGradepageBO.CompanyAddress1);
        da.SelectCommand.Parameters.AddWithValue("@CompanyAddress2", ObjGradepageBO.CompanyAddress2);
        da.SelectCommand.Parameters.AddWithValue("@City", ObjGradepageBO.City);
        da.SelectCommand.Parameters.AddWithValue("@Province", ObjGradepageBO.Province);
        da.SelectCommand.Parameters.AddWithValue("@PostalCode", ObjGradepageBO.PostalCode);
        da.SelectCommand.Parameters.AddWithValue("@WorkTerm", ObjGradepageBO.WorkTerm);
        da.SelectCommand.Parameters.AddWithValue("@Position", ObjGradepageBO.Position);
        da.SelectCommand.Parameters.AddWithValue("@AUsername", ObjGradepageBO.AUsername);
        da.SelectCommand.Parameters.AddWithValue("@Type", "I");
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