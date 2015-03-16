using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for EmployerEvalFromDAL
/// </summary>
public class EmployerEvalFromDAL
{
	public EmployerEvalFromDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //Eslablishing a connections to connect database to perform different queries
    static SqlConnection SqlCon = BaseDAL.Connection_through_Config();

    //Method for Inserting EmployerForm Form data in DB
    public int SubmitEmployerForm(EmployerEvaFormBO objBEL)
    {
        int Save;
        try
        {
            SqlCommand cmd = new SqlCommand("Sp_StudentEvalForm", SqlCon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentName", objBEL.StudentName);
            cmd.Parameters.AddWithValue("@StudentId", objBEL.StudentId);
            cmd.Parameters.AddWithValue("@Organization", objBEL.Organization);
            cmd.Parameters.AddWithValue("@year", objBEL.year);
            cmd.Parameters.AddWithValue("@Term", objBEL.Term);
            cmd.Parameters.AddWithValue("@JobTitle", objBEL.JobTitle);
            cmd.Parameters.AddWithValue("@InterestInWork", objBEL.InterestInWork);
            cmd.Parameters.AddWithValue("@AbilityToLearn", objBEL.AbilityToLearn);
            cmd.Parameters.AddWithValue("@QualityofWork", objBEL.QualityofWork);
            cmd.Parameters.AddWithValue("@ProblemSolving", objBEL.ProblemSolving);
            cmd.Parameters.AddWithValue("@TeamWork", objBEL.TeamWork);
            cmd.Parameters.AddWithValue("@Dependability", objBEL.Dependability);
            cmd.Parameters.AddWithValue("@ResponseToSupervision", objBEL.ResponseToSupervision);
            cmd.Parameters.AddWithValue("@Reflection", objBEL.Reflection);
            cmd.Parameters.AddWithValue("@Resoursefulness", objBEL.Resoursefulness);
            cmd.Parameters.AddWithValue("@EthicalBehaviour", objBEL.EthicalBehaviour);
            cmd.Parameters.AddWithValue("@AppreciationofDiversity", objBEL.AppreciationofDiversity);
            cmd.Parameters.AddWithValue("@EnterpreneurialOrientation", objBEL.EnterpreneurialOrientation);
            cmd.Parameters.AddWithValue("@WrittenCommunication", objBEL.WrittenCommunication);
            cmd.Parameters.AddWithValue("@OralCommuniation", objBEL.OralCommuniation);
            cmd.Parameters.AddWithValue("@InterpersonalCommunication", objBEL.InterpersonalCommunication);
            cmd.Parameters.AddWithValue("@OverallPerformanceRating", objBEL.OverallPerformanceRating);
            cmd.Parameters.AddWithValue("@SupervisorsComments", objBEL.SupervisorsComments);
            cmd.Parameters.AddWithValue("@SupervisorsRecommendations", objBEL.SupervisorsRecommendations);
            cmd.Parameters.AddWithValue("@NextWorkTerm", objBEL.NextWorkTerm);
            cmd.Parameters.AddWithValue("@OfferNextWorkTerm", objBEL.OfferNextWorkTerm);
            cmd.Parameters.AddWithValue("@OfferStatus", objBEL.OfferStatus);
            cmd.Parameters.AddWithValue("@NextWorkTermFrom", objBEL.NextWorkTermFrom);
            cmd.Parameters.AddWithValue("@NextWorkTermTo", objBEL.NextWorkTermTo);
            cmd.Parameters.AddWithValue("@SupervisorsName", objBEL.SupervisorsName);
            cmd.Parameters.AddWithValue("@SupervisorsTitle", objBEL.SupervisorsTitle);
            cmd.Parameters.AddWithValue("@Currentdate", objBEL.Currentdate);
            cmd.Parameters.AddWithValue("@ManagerName", objBEL.ManagerName);
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
    internal static DataSet EmpEvalutionForm(int StudentId)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_StudentEvalForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentId", StudentId);
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

    internal static DataSet IndividualEvalutionForm(int Id)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_StudentEvalForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@Id", Id);
        da.SelectCommand.Parameters.AddWithValue("@Type", "SR");
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