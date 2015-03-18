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
<<<<<<< HEAD
    }



    internal static DataSet InsertEmpEvalForm(EmployerEvaFormBO ObjEmployerBO)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_StudentEvalForm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentId", ObjEmployerBO.StudentId);
        da.SelectCommand.Parameters.AddWithValue("@StudentName", ObjEmployerBO.StudentName);
        da.SelectCommand.Parameters.AddWithValue("@Organization", ObjEmployerBO.Organization);
        da.SelectCommand.Parameters.AddWithValue("@JobTitle", ObjEmployerBO.JobTitle);
        da.SelectCommand.Parameters.AddWithValue("@Term", ObjEmployerBO.Term);
        da.SelectCommand.Parameters.AddWithValue("@year", ObjEmployerBO.year);
        da.SelectCommand.Parameters.AddWithValue("@InterestInWork", ObjEmployerBO.InterestInWork);
        da.SelectCommand.Parameters.AddWithValue("@AbilityToLearn", ObjEmployerBO.AbilityToLearn);
        da.SelectCommand.Parameters.AddWithValue("@QualityofWork", ObjEmployerBO.QualityofWork);
        da.SelectCommand.Parameters.AddWithValue("@ProblemSolving", ObjEmployerBO.ProblemSolving);
        da.SelectCommand.Parameters.AddWithValue("@TeamWork", ObjEmployerBO.TeamWork);
        da.SelectCommand.Parameters.AddWithValue("@Dependability", ObjEmployerBO.Dependability);
        da.SelectCommand.Parameters.AddWithValue("@ResponseToSupervision", ObjEmployerBO.ResponseToSupervision);
        da.SelectCommand.Parameters.AddWithValue("@Reflection", ObjEmployerBO.Reflection);
        da.SelectCommand.Parameters.AddWithValue("@Resoursefulness", ObjEmployerBO.Resoursefulness);
        da.SelectCommand.Parameters.AddWithValue("@EthicalBehaviour", ObjEmployerBO.EthicalBehaviour);
        da.SelectCommand.Parameters.AddWithValue("@AppreciationofDiversity", ObjEmployerBO.AppreciationofDiversity);
        da.SelectCommand.Parameters.AddWithValue("@EnterpreneurialOrientation", ObjEmployerBO.EnterpreneurialOrientation);
        da.SelectCommand.Parameters.AddWithValue("@WrittenCommunication", ObjEmployerBO.WrittenCommunication);
        da.SelectCommand.Parameters.AddWithValue("@OralCommuniation", ObjEmployerBO.OralCommuniation);
        da.SelectCommand.Parameters.AddWithValue("@InterpersonalCommunication", ObjEmployerBO.InterpersonalCommunication);
        da.SelectCommand.Parameters.AddWithValue("@OverallPerformanceRating", ObjEmployerBO.OverallPerformanceRating);
        da.SelectCommand.Parameters.AddWithValue("@SupervisorsComments", ObjEmployerBO.SupervisorsComments);
        da.SelectCommand.Parameters.AddWithValue("@SupervisorsRecommendations", ObjEmployerBO.SupervisorsRecommendations);
        da.SelectCommand.Parameters.AddWithValue("@NextWorkTerm", ObjEmployerBO.NextWorkTerm);
        da.SelectCommand.Parameters.AddWithValue("@OfferNextWorkTerm", ObjEmployerBO.OfferNextWorkTerm);
        da.SelectCommand.Parameters.AddWithValue("@OfferStatus", ObjEmployerBO.OfferStatus);
        da.SelectCommand.Parameters.AddWithValue("@NextWorkTermFrom", ObjEmployerBO.NextWorkTermFrom);
        da.SelectCommand.Parameters.AddWithValue("@NextWorkTermTo", ObjEmployerBO.NextWorkTermTo);
        da.SelectCommand.Parameters.AddWithValue("@SupervisorsName", ObjEmployerBO.SupervisorsName);
        da.SelectCommand.Parameters.AddWithValue("@SupervisorsTitle", ObjEmployerBO.SupervisorsTitle);
        da.SelectCommand.Parameters.AddWithValue("@Currentdate", ObjEmployerBO.Currentdate);
        da.SelectCommand.Parameters.AddWithValue("@ManagerName", ObjEmployerBO.ManagerName);
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
=======
    }     
>>>>>>> 93514cdf4a943575cc9260ea354d062c43711391
}