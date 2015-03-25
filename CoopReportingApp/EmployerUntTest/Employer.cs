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

        // Employer submits student evalution form
        public void SubmitFormTest()
        {
            //Parameters

            objEMPEval.AbilityToLearn = "Good";
            objEMPEval.AppreciationofDiversity = "Good";
            objEMPEval.Currentdate = DateTime.Parse("2015-03-16");
            objEMPEval.Dependability = "Bad";
            objEMPEval.EnterpreneurialOrientation = "Good";
            objEMPEval.EthicalBehaviour = "Bad";
            objEMPEval.InterestInWork = "Good";
            objEMPEval.InterpersonalCommunication = "Fair";
            objEMPEval.JobTitle = "Devloper";
            objEMPEval.ManagerName = "Jon";
            objEMPEval.NextWorkTerm = "Yes";
            objEMPEval.NextWorkTermFrom = "2015-03-16";
            objEMPEval.NextWorkTermTo = "2015-03-16";
            objEMPEval.OfferNextWorkTerm = "Yes";
            objEMPEval.OfferStatus = "Yes";
            objEMPEval.OralCommuniation = "Good";
            objEMPEval.Organization = "CIBC";
            objEMPEval.OverallPerformanceRating = "Exceptional";
            objEMPEval.ProblemSolving = "Good";
            objEMPEval.QualityofWork = "Good";
            objEMPEval.Reflection = "Good";
            objEMPEval.Resoursefulness = "Good";
            objEMPEval.ResponseToSupervision = "Good";
            objEMPEval.StudentId = int.Parse("300756756");
            objEMPEval.StudentName = "Dipen";
            objEMPEval.SupervisorsComments = "Excellent team player and good in communication";
            objEMPEval.SupervisorsName = "Jake";
            objEMPEval.SupervisorsRecommendations = "Keep working the same way";
            objEMPEval.SupervisorsTitle = "Customer";
            objEMPEval.TeamWork = "Very good";
            objEMPEval.Term = "Spring";
            objEMPEval.WrittenCommunication = "Good";
            objEMPEval.year = int.Parse("1997");
            var ds = objEMPEval.InsertEmpEvalForm(objEMPEval);
            if (ds.Tables.Count > 0)
            {
                Console.Write("Student Evaluation form successfully submitted");
            }
            else
            {
                Console.Write("Already evalution for submitted for this work term");
            }

          
        }

        //Display all evalution form of a perticular student
        [TestMethod]
        public void EMPEvalForm() {
            objEMPEval.StudentId = 300718286;
            var ds = objEMPEval.EmpEvalutionForm();
            Console.WriteLine("Employer Evalution Form");
            foreach (DataTable table in ds.Tables)
            {
                foreach (DataRow dr in table.Rows)
                {
                    Console.Write("Id:");
                    Console.WriteLine(dr["Id"].ToString());
                    Console.Write("Student Name:");
                    Console.WriteLine(dr["StudentName"].ToString());
                    Console.Write("Student ID:");
                    Console.WriteLine(dr["StudentID"].ToString());
                    Console.Write("Organization:");
                    Console.WriteLine(dr["Organization"].ToString());
                    Console.Write("Job Title:");
                    Console.WriteLine(dr["JobTitle"].ToString());
                    Console.Write("Term:");
                    Console.WriteLine(dr["Term"].ToString());
                    Console.Write("Year:");
                    Console.WriteLine(dr["year"].ToString());
                    Console.Write("InterestInWork:");
                    Console.WriteLine(dr["InterestInWork"].ToString());
                    Console.Write("AbilityToLearn:");
                    Console.WriteLine(dr["AbilityToLearn"].ToString());
                    Console.Write("QualityofWork:");
                    Console.WriteLine(dr["QualityofWork"].ToString());
                    Console.Write("ProblemSolving:");
                    Console.WriteLine(dr["ProblemSolving"].ToString());
                    Console.Write("TeamWork:");
                    Console.WriteLine(dr["TeamWork"].ToString());
                    Console.Write("Dependability:");
                    Console.WriteLine(dr["Dependability"].ToString());
                    Console.Write("ResponseToSupervision:");
                    Console.WriteLine(dr["ResponseToSupervision"].ToString());
                    Console.Write("Reflection:");
                    Console.WriteLine(dr["Reflection"].ToString());
                    Console.Write("Resoursefulness:");
                    Console.WriteLine(dr["Resoursefulness"].ToString());
                    Console.Write("EthicalBehaviour:");
                    Console.WriteLine(dr["EthicalBehaviour"].ToString());
                    Console.Write("AppreciationofDiversity:");
                    Console.WriteLine(dr["AppreciationofDiversity"].ToString());
                    Console.Write("EnterpreneurialOrientation:");
                    Console.WriteLine(dr["EnterpreneurialOrientation"].ToString());
                    Console.Write("WrittenCommunication:");
                    Console.WriteLine(dr["WrittenCommunication"].ToString());
                    Console.Write("OralCommuniation:");
                    Console.WriteLine(dr["OralCommuniation"].ToString());
                    Console.Write("InterpersonalCommunication:");
                    Console.WriteLine(dr["InterpersonalCommunication"].ToString());
                    Console.Write("OverallPerformanceRating:");
                    Console.WriteLine(dr["OverallPerformanceRating"].ToString());
                    Console.Write("SupervisorsComments:");
                    Console.WriteLine(dr["SupervisorsComments"].ToString());
                    Console.Write("SupervisorsRecommendations:");
                    Console.WriteLine(dr["SupervisorsRecommendations"].ToString());
                    Console.Write("NextWorkTerm:");
                    Console.WriteLine(dr["NextWorkTerm"].ToString());
                    Console.Write("OfferNextWorkTerm:");
                    Console.WriteLine(dr["OfferNextWorkTerm"].ToString());
                    Console.Write("OfferStatus:");
                    Console.WriteLine(dr["OfferStatus"].ToString());
                    Console.Write("NextWorkTermFrom:");
                    Console.WriteLine(dr["NextWorkTermFrom"].ToString());
                    Console.Write("NextWorkTermTo:");
                    Console.WriteLine(dr["NextWorkTermTo"].ToString());
                    Console.Write("SupervisorsName:");
                    Console.WriteLine(dr["SupervisorsName"].ToString());
                    Console.Write("SupervisorsTitle:");
                    Console.WriteLine(dr["SupervisorsTitle"].ToString());
                    Console.Write("Currentdate:");
                    Console.WriteLine(dr["Currentdate"].ToString());
                    Console.Write("ManagerName:");
                    Console.WriteLine(dr["ManagerName"].ToString());
                }
            }
        }

        //display specific student evalution form by using ID of the record
        [TestMethod]
        public void IndividualEvalutionForm() {
            objEMPEval.Id = 1;
            var ds = objEMPEval.IndividualEvalutionForm();
            Console.Write("Id:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Id"].ToString());
            Console.Write("Student Name:");
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentName"].ToString());
            Console.Write("Student ID:");
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentID"].ToString());
            Console.Write("Organization:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Organization"].ToString());
            Console.Write("Job Title:");
            Console.WriteLine(ds.Tables[0].Rows[0]["JobTitle"].ToString());
            Console.Write("Term:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Term"].ToString());
            Console.Write("Year:");
            Console.WriteLine(ds.Tables[0].Rows[0]["year"].ToString());
            Console.Write("InterestInWork:");
            Console.WriteLine(ds.Tables[0].Rows[0]["InterestInWork"].ToString());
            Console.Write("AbilityToLearn:");
            Console.WriteLine(ds.Tables[0].Rows[0]["AbilityToLearn"].ToString());
            Console.Write("QualityofWork:");
            Console.WriteLine(ds.Tables[0].Rows[0]["QualityofWork"].ToString());
            Console.Write("ProblemSolving:");
            Console.WriteLine(ds.Tables[0].Rows[0]["ProblemSolving"].ToString());
            Console.Write("TeamWork:");
            Console.WriteLine(ds.Tables[0].Rows[0]["TeamWork"].ToString());
            Console.Write("Dependability:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Dependability"].ToString());
            Console.Write("ResponseToSupervision:");
            Console.WriteLine(ds.Tables[0].Rows[0]["ResponseToSupervision"].ToString());
            Console.Write("Reflection:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Reflection"].ToString());
            Console.Write("Resoursefulness:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Resoursefulness"].ToString());
            Console.Write("EthicalBehaviour:");
            Console.WriteLine(ds.Tables[0].Rows[0]["EthicalBehaviour"].ToString());
            Console.Write("AppreciationofDiversity:");
            Console.WriteLine(ds.Tables[0].Rows[0]["AppreciationofDiversity"].ToString());
            Console.Write("EnterpreneurialOrientation:");
            Console.WriteLine(ds.Tables[0].Rows[0]["EnterpreneurialOrientation"].ToString());
            Console.Write("WrittenCommunication:");
            Console.WriteLine(ds.Tables[0].Rows[0]["WrittenCommunication"].ToString());
            Console.Write("OralCommuniation:");
            Console.WriteLine(ds.Tables[0].Rows[0]["OralCommuniation"].ToString());
            Console.Write("InterpersonalCommunication:");
            Console.WriteLine(ds.Tables[0].Rows[0]["InterpersonalCommunication"].ToString());
            Console.Write("OverallPerformanceRating:");
            Console.WriteLine(ds.Tables[0].Rows[0]["OverallPerformanceRating"].ToString());
            Console.Write("SupervisorsComments:");
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsComments"].ToString());
            Console.Write("SupervisorsRecommendations:");
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsRecommendations"].ToString());
            Console.Write("NextWorkTerm:");
            Console.WriteLine(ds.Tables[0].Rows[0]["NextWorkTerm"].ToString());
            Console.Write("OfferNextWorkTerm:");
            Console.WriteLine(ds.Tables[0].Rows[0]["OfferNextWorkTerm"].ToString());
            Console.Write("OfferStatus:");
            Console.WriteLine(ds.Tables[0].Rows[0]["OfferStatus"].ToString());
            Console.Write("NextWorkTermFrom:");
            Console.WriteLine(ds.Tables[0].Rows[0]["NextWorkTermFrom"].ToString());
            Console.Write("NextWorkTermTo:");
            Console.WriteLine(ds.Tables[0].Rows[0]["NextWorkTermTo"].ToString());
            Console.Write("SupervisorsName:");
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsName"].ToString());
            Console.Write("SupervisorsTitle:");
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorsTitle"].ToString());
            Console.Write("Currentdate:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Currentdate"].ToString());
            Console.Write("ManagerName:");
            Console.WriteLine(ds.Tables[0].Rows[0]["ManagerName"].ToString());
        }

        //get all the company names that student worked
        [TestMethod]
        public void EmployerCompnaies()
        {
            var ds = objEMPEval.GetCompanies();
            Console.WriteLine("Company Names");
            foreach (DataTable table in ds.Tables)
            {
                foreach (DataRow dr in table.Rows)
                {
                    Console.WriteLine(dr["Organization"].ToString());
                }
            }
        }
        //Coop adivisor can questionnaires report by using company name and question from emmployer evalution form
        [TestMethod]
        public void EmployerGenerateQuestionnaires()
        {
            objEMPEval.Organization = "CIBC";
            objEMPEval.Questionnaires = "InterestInWork";
            var ds = objEMPEval.GetQuestionnairesInfo();
            Console.WriteLine("Total Feed Back");
            Console.WriteLine(ds.Tables[0].Rows[0]["Total_Feed_Back"].ToString());
            Console.WriteLine("Excellent");
            Console.WriteLine(ds.Tables[0].Rows[0]["Excellent"].ToString());
            Console.WriteLine("Very Good");
            Console.WriteLine(ds.Tables[0].Rows[0]["Very_Good"].ToString());
            Console.WriteLine("Good");
            Console.WriteLine(ds.Tables[0].Rows[0]["Good"].ToString());
            Console.WriteLine("Fair");
            Console.WriteLine(ds.Tables[0].Rows[0]["Fair"].ToString());
            Console.WriteLine("Bad");
            Console.WriteLine(ds.Tables[0].Rows[0]["Bad"].ToString());
        }
    }
}
