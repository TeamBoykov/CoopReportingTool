using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

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

    static SqlConnection SqlCon = BaseDAL.Connection_through_Config();

    internal static System.Data.DataSet StudentProfile(long StudentId)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_StudentInfo", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentID", StudentId);
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

    internal static DataSet UpdateProfile(RegistrationBO ObjRegistrationBO)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_StudentInfo", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentID", ObjRegistrationBO.StudentId);
        da.SelectCommand.Parameters.AddWithValue("@SFname", ObjRegistrationBO.SFname);
        da.SelectCommand.Parameters.AddWithValue("@SLname", ObjRegistrationBO.SLname);
        da.SelectCommand.Parameters.AddWithValue("@SProgram", ObjRegistrationBO.SProgram);
        da.SelectCommand.Parameters.AddWithValue("@SEmail", ObjRegistrationBO.SEmail);
        da.SelectCommand.Parameters.AddWithValue("@SAddress1", ObjRegistrationBO.SAddress1);
        da.SelectCommand.Parameters.AddWithValue("@SAddress2", ObjRegistrationBO.SAddress2);
        da.SelectCommand.Parameters.AddWithValue("@SCity", ObjRegistrationBO.SCity);
        da.SelectCommand.Parameters.AddWithValue("@SProvince", ObjRegistrationBO.SProvince);
        da.SelectCommand.Parameters.AddWithValue("@SPostalCode", ObjRegistrationBO.SPostalCode);
        da.SelectCommand.Parameters.AddWithValue("@SPhone", ObjRegistrationBO.SPhone);
        da.SelectCommand.Parameters.AddWithValue("@SCell", ObjRegistrationBO.SCell);
        da.SelectCommand.Parameters.AddWithValue("@Type", "U");
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

    internal static DataSet Registration(RegistrationBO ObjRegistrationBO)
    {
        SqlDataAdapter da = new SqlDataAdapter("Sp_StudentInfo", SqlCon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@StudentID", ObjRegistrationBO.StudentId);
        da.SelectCommand.Parameters.AddWithValue("@SPassword", ObjRegistrationBO.SPassword);
        da.SelectCommand.Parameters.AddWithValue("@SFname", ObjRegistrationBO.SFname);
        da.SelectCommand.Parameters.AddWithValue("@SLname", ObjRegistrationBO.SLname);
        da.SelectCommand.Parameters.AddWithValue("@SProgram", ObjRegistrationBO.SProgram);
        da.SelectCommand.Parameters.AddWithValue("@SEmail", ObjRegistrationBO.SEmail);
        da.SelectCommand.Parameters.AddWithValue("@SAddress1", ObjRegistrationBO.SAddress1);
        da.SelectCommand.Parameters.AddWithValue("@SAddress2", ObjRegistrationBO.SAddress2);
        da.SelectCommand.Parameters.AddWithValue("@SCity", ObjRegistrationBO.SCity);
        da.SelectCommand.Parameters.AddWithValue("@SProvince", ObjRegistrationBO.SProvince);
        da.SelectCommand.Parameters.AddWithValue("@SPostalCode", ObjRegistrationBO.SPostalCode);
        da.SelectCommand.Parameters.AddWithValue("@SPhone", ObjRegistrationBO.SPhone);
        da.SelectCommand.Parameters.AddWithValue("@SCell", ObjRegistrationBO.SCell);
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