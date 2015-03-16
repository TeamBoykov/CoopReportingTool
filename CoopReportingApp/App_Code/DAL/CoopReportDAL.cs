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

    internal static DataSet ReportaByStudentIDandMonth(long StudentID, string ReportMonth,string Year)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_CoopForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentID", StudentID);
        da.SelectCommand.Parameters.AddWithValue("@ReportMonth", ReportMonth);
        da.SelectCommand.Parameters.AddWithValue("@Year", Year);
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

    internal static DataSet IndividualReport(int Id)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_CoopForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@Id", Id);
        da.SelectCommand.Parameters.AddWithValue("@Type", "R");
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

    //Method for Inserting StudentCoop Form data in DB
    public int SubmitForm(CoopReportBO objBEL)
    {
        int Save;
        try
        {
            SqlCommand cmd = new SqlCommand("Sp_CoopForm", SqlCon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentName", objBEL.StudentName);
            cmd.Parameters.AddWithValue("@StudentID", objBEL.StudentID);
            cmd.Parameters.AddWithValue("@Oraganization", objBEL.Oraganization);
            cmd.Parameters.AddWithValue("@Year", objBEL.Year);
            cmd.Parameters.AddWithValue("@AdvisorName", objBEL.AdvisorName);
            cmd.Parameters.AddWithValue("@JobTitle", objBEL.JobTitle);
            cmd.Parameters.AddWithValue("@ReportMonth", objBEL.ReportMonth);
            cmd.Parameters.AddWithValue("@LikeIntership", objBEL.LikeIntership);
            cmd.Parameters.AddWithValue("@AdequatelyPrepared", objBEL.AdequatelyPrepared);
            cmd.Parameters.AddWithValue("@Curriculum", objBEL.Curriculum);
            cmd.Parameters.AddWithValue("@Expectation", objBEL.Expectation);
            cmd.Parameters.AddWithValue("@Requirement", objBEL.Requirement);
            cmd.Parameters.AddWithValue("@AboutCoopAdvisor", objBEL.AboutCoopAdvisor);
            cmd.Parameters.AddWithValue("@AgencySupervisor", objBEL.AgencySupervisor);
            cmd.Parameters.AddWithValue("@SupervisorActive", objBEL.SupervisorActive);
            cmd.Parameters.AddWithValue("@Attendance", objBEL.Attendance);
            cmd.Parameters.AddWithValue("@Punctuality", objBEL.Punctuality);
            cmd.Parameters.AddWithValue("@Structured", objBEL.Structured);
            cmd.Parameters.AddWithValue("@OverStructured", objBEL.OverStructured);
            cmd.Parameters.AddWithValue("@Problems", objBEL.Problems);
            cmd.Parameters.AddWithValue("@HelpProblems", objBEL.HelpProblems);
            cmd.Parameters.AddWithValue("@Learning", objBEL.Learning);
            cmd.Parameters.AddWithValue("@Rewarding", objBEL.Rewarding);
            cmd.Parameters.AddWithValue("@ObjectiveEstablished", objBEL.ObjectiveEstablished);
            cmd.Parameters.AddWithValue("@Recommend", objBEL.Recommend);
            cmd.Parameters.AddWithValue("@SelfEvaluation", objBEL.SelfEvaluation);
            cmd.Parameters.AddWithValue("@DutiesPerformed", objBEL.DutiesPerformed);
            cmd.Parameters.AddWithValue("@Comments", objBEL.Comments);
            cmd.Parameters.AddWithValue("@Type", "I");
            if (SqlCon.State == ConnectionState.Closed)
            {
                SqlCon.Open();
            }
            Save = cmd.ExecuteNonQuery();
            cmd.Dispose();
            if (Save > 0)
            {
                return Save;
            }
            else
            {
                return 0;
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            if (SqlCon.State != ConnectionState.Closed)
            {
                SqlCon.Close();
            }
        }
    }
}