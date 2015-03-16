using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data;
namespace EmployerUntTest
{
    [TestClass]
    public class Employer
    {
        EmployerEvaFormBO objEMPEval = new EmployerEvaFormBO();
        [TestMethod]
        public void EMPEvalForm() {
            objEMPEval.StudentId = 300718286;
            var ds = objEMPEval.EmpEvalutionForm();
            Console.WriteLine(ds.Tables[0].Rows[0]["Id"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentID"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Organization"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["JobTitle"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Term"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["year"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["InterestInWork"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AbilityToLearn"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["QualityofWork"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ProblemSolving"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["TeamWork"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Dependability"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ResponseToSupervision"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Reflection"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Resoursefulness"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["EthicalBehaviour"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AppreciationofDiversity"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["EnterpreneurialOrientation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["WrittenCommunication"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OralCommuniation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["InterpersonalCommunication"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OverallPerformanceRating"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsComments"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsRecommendations"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["NextWorkTerm"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OfferNextWorkTerm"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OfferStatus"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["NextWorkTermFrom"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["NextWorkTermTo"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsTitle"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Currentdate"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ManagerName"].ToString());
        }
        [TestMethod]
        public void IndividualEvalutionForm() {
            objEMPEval.Id = 1;
            var ds = objEMPEval.IndividualEvalutionForm();
            Console.WriteLine(ds.Tables[0].Rows[0]["Id"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentID"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Organization"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["JobTitle"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Term"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["year"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["InterestInWork"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AbilityToLearn"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["QualityofWork"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ProblemSolving"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["TeamWork"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Dependability"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ResponseToSupervision"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Reflection"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Resoursefulness"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["EthicalBehaviour"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AppreciationofDiversity"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["EnterpreneurialOrientation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["WrittenCommunication"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OralCommuniation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["InterpersonalCommunication"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OverallPerformanceRating"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsComments"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsRecommendations"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["NextWorkTerm"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OfferNextWorkTerm"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OfferStatus"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["NextWorkTermFrom"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["NextWorkTermTo"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsTitle"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Currentdate"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ManagerName"].ToString());
        }
    }
}
