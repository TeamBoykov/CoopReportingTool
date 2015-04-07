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
    public int Grade { get; set; }
    public string WorkTerm { get; set; }

    public System.Data.DataSet UpdateGrade(GradepageBO objGradeBO)
    {
        return GradepageDAL.UpdateGrade(objGradeBO);
    }

    //display student work term information
    public System.Data.DataSet WorkTermInfo() {
        return null;
    }
        
}