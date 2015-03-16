using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EmployerEvaFormBO
/// </summary>
public class EmployerEvaFormBO
{
	public EmployerEvaFormBO()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //Business object of Employer Evalution form
    public int Id { get; set; }
    public string StudentName { get; set; }
    public int StudentId { get; set; }
    public string Organization { get; set; }
    public string JobTitle { get; set; }
    public string Term { get; set; }
    public int year { get; set; }
    public string InterestInWork { get; set; }
    public string AbilityToLearn { get; set; }
    public string QualityofWork { get; set; }
    public string ProblemSolving { get; set; }
    public string TeamWork { get; set; }
    public string Dependability { get; set; }
    public string ResponseToSupervision { get; set; }
    public string Reflection { get; set; }
    public string Resoursefulness { get; set; }
    public string EthicalBehaviour { get; set; }
    public string AppreciationofDiversity { get; set; }
    public string EnterpreneurialOrientation { get; set; }
    public string WrittenCommunication { get; set; }
    public string OralCommuniation { get; set; }
    public string InterpersonalCommunication { get; set; }
    public string OverallPerformanceRating { get; set; }
    public string SupervisorsComments { get; set; }
    public string SupervisorsRecommendations { get; set; }
    public string NextWorkTerm { get; set; }
    public string OfferNextWorkTerm { get; set; }

    public string OfferStatus { get; set; }
    
    public string NextWorkTermFrom { get; set; }
    public string NextWorkTermTo { get; set; }
    public string SupervisorsName { get; set; }
    public string SupervisorsTitle { get; set; }
    public DateTime Currentdate { get; set; }
    public string ManagerName { get; set; }

    public System.Data.DataSet EmpEvalutionForm()
    {
        return EmployerEvalFromDAL.EmpEvalutionForm(StudentId);
    }

    public System.Data.DataSet IndividualEvalutionForm()
    {
        return EmployerEvalFromDAL.IndividualEvalutionForm(Id);
    }

    public int SubmitEmployerForm(EmployerEvaFormBO objBel)
    {
        EmployerEvalFromDAL objDal = new EmployerEvalFromDAL();
        try
        {
            return objDal.SubmitEmployerForm(objBel);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            objDal = null;
        }
    }
}