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

    internal static DataSet ReportByStudentID(int StudentID)
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

    internal static DataSet ReportaByStudentIDandMonth(int StudentID, string ReportMonth,int Year)
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

    internal static DataSet InsertCoopReport(CoopReportBO objCoopReportBO)
    {
                SqlDataAdapter da = new SqlDataAdapter("Sp_CoopForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentId", objCoopReportBO.StudentID);
        da.SelectCommand.Parameters.AddWithValue("@StudentName", objCoopReportBO.StudentName);
        da.SelectCommand.Parameters.AddWithValue("@AdvisorName", objCoopReportBO.AdvisorName);
        da.SelectCommand.Parameters.AddWithValue("@Oraganization", objCoopReportBO.Oraganization);
        da.SelectCommand.Parameters.AddWithValue("@Year", objCoopReportBO.Year);
        da.SelectCommand.Parameters.AddWithValue("@ReportMonth", objCoopReportBO.ReportMonth);
        da.SelectCommand.Parameters.AddWithValue("@JobTitle", objCoopReportBO.JobTitle);
        da.SelectCommand.Parameters.AddWithValue("@LikeIntership", objCoopReportBO.LikeIntership);
        da.SelectCommand.Parameters.AddWithValue("@AdequatelyPrepared", objCoopReportBO.AdequatelyPrepared);
        da.SelectCommand.Parameters.AddWithValue("@Curriculum", objCoopReportBO.Curriculum);
        da.SelectCommand.Parameters.AddWithValue("@Expectation", objCoopReportBO.Expectation);
        da.SelectCommand.Parameters.AddWithValue("@Requirement", objCoopReportBO.Requirement);
        da.SelectCommand.Parameters.AddWithValue("@AboutCoopAdvisor", objCoopReportBO.AboutCoopAdvisor);
        da.SelectCommand.Parameters.AddWithValue("@AgencySupervisor",objCoopReportBO. AgencySupervisor);
        da.SelectCommand.Parameters.AddWithValue("@SupervisorActive", objCoopReportBO.SupervisorActive);
        da.SelectCommand.Parameters.AddWithValue("@Attendance", objCoopReportBO.Attendance);
        da.SelectCommand.Parameters.AddWithValue("@Punctuality", objCoopReportBO.Punctuality);
        da.SelectCommand.Parameters.AddWithValue("@Structured", objCoopReportBO.Structured);
        da.SelectCommand.Parameters.AddWithValue("@OverStructured", objCoopReportBO.OverStructured);
        da.SelectCommand.Parameters.AddWithValue("@Problems", objCoopReportBO.Problems);
        da.SelectCommand.Parameters.AddWithValue("@HelpProblems", objCoopReportBO.HelpProblems);
        da.SelectCommand.Parameters.AddWithValue("@Learning", objCoopReportBO.Learning);
        da.SelectCommand.Parameters.AddWithValue("@Rewarding", objCoopReportBO.Rewarding);
        da.SelectCommand.Parameters.AddWithValue("@ObjectiveEstablished", objCoopReportBO.ObjectiveEstablished);
        da.SelectCommand.Parameters.AddWithValue("@Recommend", objCoopReportBO.Recommend);
        da.SelectCommand.Parameters.AddWithValue("@SelfEvaluation", objCoopReportBO.SelfEvaluation);
        da.SelectCommand.Parameters.AddWithValue("@DutiesPerformed", objCoopReportBO.DutiesPerformed);
        da.SelectCommand.Parameters.AddWithValue("@Comments", objCoopReportBO.Comments);
        da.SelectCommand.Parameters.AddWithValue("@Type", "I");
        DataSet ds = new DataSet();
        da.Fill(ds);
        try
        {
            return ds;
        }
        catch {
            throw;
        }
    }
    internal static DataSet GetQuestionnaresInfo(string Oraganization, string Questionnaires)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_CoopForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@Oraganization", Oraganization);
        da.SelectCommand.Parameters.AddWithValue("@Questionnaires", Questionnaires);
        da.SelectCommand.Parameters.AddWithValue("@Type", "GR");
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

    internal static DataSet GetCompanies()
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_CoopForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@Type", "C");
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