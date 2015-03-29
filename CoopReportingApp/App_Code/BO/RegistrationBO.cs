using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegistrationBO
/// </summary>
public class RegistrationBO
{
	public RegistrationBO()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    // NOTE: Please put your name in comment if you add code in this class

    // public accessor properties from tbl_Student - Subash
    public int Id { get; set; }
    public Int64 StudentId { get; set; }
    public string SFname { get; set; }
    public string SLname { get; set; }
    public string SProgram { get; set; }
    public string SEmail { get; set; }
    public string SAddress1 { get; set; }
    public string SAddress2 { get; set; }
    public string SCity { get; set; }
    public string SProvince { get; set; }
    public string SPostalCode { get; set; }
    public string SPhone { get; set; }
    public string SCell { get; set; }
    public string SPassword { get; set; }

    // public accessor properties from tbl_WorkTerm - subash

    public string CompanyName { get; set; }
    public string CompanyAddress1 { get; set; }
    public string CompanyAddress2 { get; set; }
    public string City { get; set; }
    public string Province { get; set; }
    public string PostalCode { get; set; }
    public string WorkTerm { get; set; }
    public string Position { get; set; }
    public string Duties { get; set; }
    public string AUsername { get; set; }
    public string Grade { get; set; }

    // SelectedStudentProfile() method will be added upcoming RegistrationDAL-Subash
    public System.Data.DataSet SelectedStudentProfile()
    {
        return null;
        // edit return after creating SelectedStudentProfile() method in DAL
    }
    // Grade1() method will be needed in upcoming RegistrationDAL to display Grade 1 (firtst work term grade)- Subash
    public System.Data.DataSet Grade1()
    {
        return null;
        // edit return after creating Grade1() method in DAL

    }

    // Grade1() method will be needed in upcoming RegistrationDAL to display Grade 2 (second work term grade)- Subash
    public System.Data.DataSet Grade2()
    {
        return null;
        // edit return after creating Grade2() method in DAL

    }

    // Grade1() method will be needed in upcoming RegistrationDAL to display Grade 3 (third work term grade)- Subash
    public System.Data.DataSet Grade3()
    {
        return null;
        // edit return after creating Grade3() method in DAL

    }
}