using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AdvisorBO
/// </summary>
public class AdvisorBO
{
	public AdvisorBO()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ID { get; set; }
    public string AdvisorName { get; set; }
    public string AEmail { get; set; }
    public string APhone { get; set; }
    public string ACell { get; set; }
    public string AArea { get; set; }
    public string AUsername { get; set; }
    public string APassword { get; set; }


    //Refernce to insert advisor info
    public System.Data.DataSet AdvisorInfo()
    {
        return AdvisorDAL.AdvisorInfo();
    }
}

 