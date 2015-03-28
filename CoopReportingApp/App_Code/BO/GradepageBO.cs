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

    public int StudentID { get; set; }
    public int Grade { get; set; }
    public string WorkTerm { get; set; }

    public System.Data.DataSet UpdateGrade(GradepageBO objGradeBO)
    {
        return GradepageDAL.UpdateGrade(objGradeBO);
    }
        
}