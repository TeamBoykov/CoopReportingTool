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
    }
}