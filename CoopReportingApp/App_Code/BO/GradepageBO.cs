using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GradepageBO
/// </summary>
public class GradepageBO
{
	public GradepageBO()
	{
		//
		// TODO: Add constructor logic here
		//
<<<<<<< Updated upstream
	}
    public int ID { get; set; }
    public int StudentID { get; set; }
    public string CompanyName { get; set; }
    public string CompanyAddress1 { get; set; }
    public string CompanyAddress2 { get; set; }
    public string City { get; set; }
    public string Province { get; set; }
    public string PostalCode { get; set; }
    public string Position { get; set; }
    public string Duties { get; set; }
    public string AUsername { get; set; }
=======
	}
    // Entity layer to get and set values

    //For Grade Page
    public int StudentID { get; set; }
>>>>>>> Stashed changes
    public int Grade { get; set; }
    public string WorkTerm { get; set; }

    //For Profile and Registration Page
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
    public string CompanyName { get; set; }
    public string CompanyAddress1 { get; set; }
    public string CompanyAddress2 { get; set; }
    public string City { get; set; }
    public string Province { get; set; }
    public string PostalCode { get; set; }
    public string Position { get; set; }
    public string Duties { get; set; }
    public string AUsername { get; set; }
   
    //Refernce to insert a grade
    public System.Data.DataSet UpdateGrade(GradepageBO objGradeBO)
    {
        return GradepageDAL.UpdateGrade(objGradeBO);
    }

    //display student work term information
    public System.Data.DataSet WorkTermInfo() {
        return null;
    }
        
}