using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegistrationDAL
/// </summary>
public class RegistrationDAL
{
	public RegistrationDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    // code will be added- subash

    static SqlConnection SqlCon = BaseDAL.Connection_through_Config();

    // method to display tbl_student info- subash
    internal static DataSet SelectedStudentProfile(int StudentId)
    {

        SqlDataAdapter da = new SqlDataAdapter("Sp_StudentInfo", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da.SelectCommand.Parameters.Add(new SqlParameter("@StudentId", StudentId));
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

    internal static DataSet CurrentWorkTerm(int StudentId)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_WorkTerm", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentId", StudentId);
        // make sure new stored procedure "@Type=WT" exist in database
        da.SelectCommand.Parameters.AddWithValue("@Type", "WT");
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

    // method to display Grade from tbl_WorkTerm - Subash
    internal static DataSet Grade(int StudentId)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_WorkTerm", SqlCon);
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
}