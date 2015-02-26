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
/// Summary description for CoopReportDAL
/// </summary>
public class CoopReportDAL
{
	public CoopReportDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    // declating connection string to connect the database
    static SqlConnection SqlCon = BaseDAL.Connection_through_Config();

    internal static System.Data.DataSet AllStudentCoopReports()
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_CoopForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@Type", "A");
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

    internal static DataSet ReportByStudentID(long StudentID)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_CoopForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentID", StudentID);
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

    internal static DataSet ReportsByMonth(string ReportMonth)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_CoopForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@ReportMonth", ReportMonth);
        da.SelectCommand.Parameters.AddWithValue("@Type", "M");
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

    internal static DataSet ReportaByStudentIDandMonth(long StudentID, string ReportMonth)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_CoopForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentID", StudentID);
        da.SelectCommand.Parameters.AddWithValue("@ReportMonth", ReportMonth);
        da.SelectCommand.Parameters.AddWithValue("@Type", "SM");
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