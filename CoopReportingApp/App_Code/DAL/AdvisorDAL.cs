using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for AdvisorDAL
/// </summary>
public class AdvisorDAL
{
	public AdvisorDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    static SqlConnection SqlCon = BaseDAL.Connection_through_Config();

    internal static System.Data.DataSet AdvisorInfo()
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_Advisor", SqlCon);
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

    internal static DataSet AdvisorLogin(AdvisorBO ObjAdvisorBO)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_Advisor", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@AUsername", ObjAdvisorBO.AUsername);
        da.SelectCommand.Parameters.AddWithValue("@APassword", ObjAdvisorBO.APassword);
        da.SelectCommand.Parameters.AddWithValue("@Type", "L");
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