using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data;
namespace EmployerUntTest
{
    [TestClass]
    public class Student
    {
        CoopReportBO objCoopReport = new CoopReportBO();
        [TestMethod]

        //student submit monthly coop report to coop advisor
        public void SubmitStudentTest()
        {

            objCoopReport.AboutCoopAdvisor = "Yes";
            objCoopReport.AdequatelyPrepared = "Yes";
            objCoopReport.AdvisorName = "Mealanie";
            objCoopReport.AgencySupervisor = "";
            objCoopReport.Attendance = "Yes";
            objCoopReport.Comments = "Good Job";
            objCoopReport.Curriculum = "Yes";
            objCoopReport.DutiesPerformed = "KannanLal";
            objCoopReport.Expectation = "Yes";
            objCoopReport.HelpProblems = "Yes";
            objCoopReport.JobTitle = "Test Analyst";
            objCoopReport.Learning = "Yes";
            objCoopReport.LikeIntership = "Yes";
            objCoopReport.ObjectiveEstablished = "Yes";
            objCoopReport.Oraganization = "HSBC";
            objCoopReport.OverStructured = "Yes";
            objCoopReport.Problems = "Yes";
            objCoopReport.Punctuality = "Yes";
            objCoopReport.Recommend = "I will recommend";
            objCoopReport.ReportMonth = "Feburary";
            objCoopReport.Requirement = "Yes";
            objCoopReport.Rewarding = "Yes";
            objCoopReport.SelfEvaluation = "Yes";
            objCoopReport.Structured = "Yes";
            objCoopReport.StudentID = int.Parse("300262626");
            objCoopReport.StudentName = "Raj";
            objCoopReport.SupervisorActive = "Yes";
            objCoopReport.Year = int.Parse("2015");

           var ds =  objCoopReport.InsertCoopReport(objCoopReport);
           if (ds.Tables.Count > 0)
           {
               Console.Write("Student Monthly coop form successfully inserted");
           }
           else {
               Console.Write("Coop report already submitted");
           }

        }
        [TestMethod]
        //Display all students monthly coop reports
        public void AllStudentCoopReports()
        {
            var ds = objCoopReport.AllStudentCoopReports();
            Console.WriteLine("All Students monthly Coop Reports");
            foreach (DataTable table in ds.Tables)
            {
                foreach (DataRow dr in table.Rows)
                {
                    Console.Write("Id:");
                    Console.WriteLine(dr["Id"].ToString());
                    Console.Write("StudentID:");
                    Console.WriteLine(dr["StudentID"].ToString());
                    Console.Write("StudentName:");
                    Console.WriteLine(dr["StudentName"].ToString());
                    Console.Write("AdvisorName:");
                    Console.WriteLine(dr["AdvisorName"].ToString());
                    Console.Write("Oraganization:");
                    Console.WriteLine(dr["Oraganization"].ToString());
                    Console.Write("Year:");
                    Console.WriteLine(dr["Year"].ToString());
                    Console.Write("ReportMonth:");
                    Console.WriteLine(dr["ReportMonth"].ToString());
                    Console.Write("JobTitle:");
                    Console.WriteLine(dr["JobTitle"].ToString());
                    Console.Write("LikeIntership:");
                    Console.WriteLine(dr["LikeIntership"].ToString());
                    Console.Write("AdequatelyPrepared:");
                    Console.WriteLine(dr["AdequatelyPrepared"].ToString());
                    Console.Write("Curriculum:");
                    Console.WriteLine(dr["Curriculum"].ToString());
                    Console.Write("Expectation:");
                    Console.WriteLine(dr["Expectation"].ToString());
                    Console.Write("Requirement:");
                    Console.WriteLine(dr["Requirement"].ToString());
                    Console.Write("AboutCoopAdvisor:");
                    Console.WriteLine(dr["AboutCoopAdvisor"].ToString());
                    Console.Write("AgencySupervisor:");
                    Console.WriteLine(dr["AgencySupervisor"].ToString());
                    Console.Write("SupervisorActive:");
                    Console.WriteLine(dr["SupervisorActive"].ToString());
                    Console.Write("Attendance:");
                    Console.WriteLine(dr["Attendance"].ToString());
                    Console.Write("Punctuality:");
                    Console.WriteLine(dr["Punctuality"].ToString());
                    Console.Write("Structured:");
                    Console.WriteLine(dr["Structured"].ToString());
                    Console.Write("OverStructured:");
                    Console.WriteLine(dr["OverStructured"].ToString());
                    Console.Write("Problems:");
                    Console.WriteLine(dr["Problems"].ToString());
                    Console.Write("HelpProblems:");
                    Console.WriteLine(dr["HelpProblems"].ToString());
                    Console.Write("Learning:");
                    Console.WriteLine(dr["Learning"].ToString());
                    Console.Write("Rewarding:");
                    Console.WriteLine(dr["Rewarding"].ToString());
                    Console.Write("ObjectiveEstablished:");
                    Console.WriteLine(dr["ObjectiveEstablished"].ToString());
                    Console.Write("Recommend:");
                    Console.WriteLine(dr["Recommend"].ToString());
                    Console.Write("SelfEvaluation:");
                    Console.WriteLine(dr["SelfEvaluation"].ToString());
                    Console.Write("DutiesPerformed:");
                    Console.WriteLine(dr["DutiesPerformed"].ToString());
                    Console.Write("Comments:");
                    Console.WriteLine(dr["Comments"].ToString());
                }
            }
        }

        //To display list of all student monthly coop reports of perticular student
        [TestMethod]
        public void IndividualStudentReports()
        {
            objCoopReport.StudentID = 300718283;
            Console.WriteLine("Perticualr Student Monthly coop reports");
            var ds = objCoopReport.AllStudentCoopReports();
            foreach (DataTable table in ds.Tables)
            {
                foreach (DataRow dr in table.Rows)
                {
                    Console.Write("Id:");
                    Console.WriteLine(dr["Id"].ToString());
                    Console.Write("StudentID:");
                    Console.WriteLine(dr["StudentID"].ToString());
                    Console.Write("StudentName:");
                    Console.WriteLine(dr["StudentName"].ToString());
                    Console.Write("AdvisorName:");
                    Console.WriteLine(dr["AdvisorName"].ToString());
                    Console.Write("Oraganization:");
                    Console.WriteLine(dr["Oraganization"].ToString());
                    Console.Write("Year:");
                    Console.WriteLine(dr["Year"].ToString());
                    Console.Write("ReportMonth:");
                    Console.WriteLine(dr["ReportMonth"].ToString());
                    Console.Write("JobTitle:");
                    Console.WriteLine(dr["JobTitle"].ToString());
                    Console.Write("LikeIntership:");
                    Console.WriteLine(dr["LikeIntership"].ToString());
                    Console.Write("AdequatelyPrepared:");
                    Console.WriteLine(dr["AdequatelyPrepared"].ToString());
                    Console.Write("Curriculum:");
                    Console.WriteLine(dr["Curriculum"].ToString());
                    Console.Write("Expectation:");
                    Console.WriteLine(dr["Expectation"].ToString());
                    Console.Write("Requirement:");
                    Console.WriteLine(dr["Requirement"].ToString());
                    Console.Write("AboutCoopAdvisor:");
                    Console.WriteLine(dr["AboutCoopAdvisor"].ToString());
                    Console.Write("AgencySupervisor:");
                    Console.WriteLine(dr["AgencySupervisor"].ToString());
                    Console.Write("SupervisorActive:");
                    Console.WriteLine(dr["SupervisorActive"].ToString());
                    Console.Write("Attendance:");
                    Console.WriteLine(dr["Attendance"].ToString());
                    Console.Write("Punctuality:");
                    Console.WriteLine(dr["Punctuality"].ToString());
                    Console.Write("Structured:");
                    Console.WriteLine(dr["Structured"].ToString());
                    Console.Write("OverStructured:");
                    Console.WriteLine(dr["OverStructured"].ToString());
                    Console.Write("Problems:");
                    Console.WriteLine(dr["Problems"].ToString());
                    Console.Write("HelpProblems:");
                    Console.WriteLine(dr["HelpProblems"].ToString());
                    Console.Write("Learning:");
                    Console.WriteLine(dr["Learning"].ToString());
                    Console.Write("Rewarding:");
                    Console.WriteLine(dr["Rewarding"].ToString());
                    Console.Write("ObjectiveEstablished:");
                    Console.WriteLine(dr["ObjectiveEstablished"].ToString());
                    Console.Write("Recommend:");
                    Console.WriteLine(dr["Recommend"].ToString());
                    Console.Write("SelfEvaluation:");
                    Console.WriteLine(dr["SelfEvaluation"].ToString());
                    Console.Write("DutiesPerformed:");
                    Console.WriteLine(dr["DutiesPerformed"].ToString());
                    Console.Write("Comments:");
                    Console.WriteLine(dr["Comments"].ToString());
                }
            }
        }

        //display perticulat student monthly report using ID of the report
        [TestMethod]
        public void PerticularIndividualStudentReports()
        {
            objCoopReport.Id = 2;
            var ds = objCoopReport.IndividualReport();
            Console.Write("Id:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Id"].ToString());
            Console.Write("StudentID:");
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentID"].ToString());
            Console.Write("StudentName:");
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentName"].ToString());
            Console.Write("AdvisorName:");
            Console.WriteLine(ds.Tables[0].Rows[0]["AdvisorName"].ToString());
            Console.Write("Oraganization:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Oraganization"].ToString());
            Console.Write("Year:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Year"].ToString());
            Console.Write("ReportMonth:");
            Console.WriteLine(ds.Tables[0].Rows[0]["ReportMonth"].ToString());
            Console.Write("JobTitle:");
            Console.WriteLine(ds.Tables[0].Rows[0]["JobTitle"].ToString());
            Console.Write("LikeIntership:");
            Console.WriteLine(ds.Tables[0].Rows[0]["LikeIntership"].ToString());
            Console.Write("AdequatelyPrepared:");
            Console.WriteLine(ds.Tables[0].Rows[0]["AdequatelyPrepared"].ToString());
            Console.Write("Curriculum:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Curriculum"].ToString());
            Console.Write("Expectation:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Expectation"].ToString());
            Console.Write("Requirement:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Requirement"].ToString());
            Console.Write("AboutCoopAdvisor:");
            Console.WriteLine(ds.Tables[0].Rows[0]["AboutCoopAdvisor"].ToString());
            Console.Write("AgencySupervisor:");
            Console.WriteLine(ds.Tables[0].Rows[0]["AgencySupervisor"].ToString());
            Console.Write("SupervisorActive:");
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorActive"].ToString());
            Console.Write("Attendance:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Attendance"].ToString());
            Console.Write("Punctuality:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Punctuality"].ToString());
            Console.Write("Structured:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Structured"].ToString());
            Console.Write("OverStructured:");
            Console.WriteLine(ds.Tables[0].Rows[0]["OverStructured"].ToString());
            Console.Write("Problems:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Problems"].ToString());
            Console.Write("HelpProblems:");
            Console.WriteLine(ds.Tables[0].Rows[0]["HelpProblems"].ToString());
            Console.Write("Learning:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Learning"].ToString());
            Console.Write("Rewarding:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Rewarding"].ToString());
            Console.Write("ObjectiveEstablished:");
            Console.WriteLine(ds.Tables[0].Rows[0]["ObjectiveEstablished"].ToString());
            Console.Write("Recommend:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Recommend"].ToString());
            Console.Write("SelfEvaluation:");
            Console.WriteLine(ds.Tables[0].Rows[0]["SelfEvaluation"].ToString());
            Console.Write("DutiesPerformed:");
            Console.WriteLine(ds.Tables[0].Rows[0]["DutiesPerformed"].ToString());
            Console.Write("Comments:");
            Console.WriteLine(ds.Tables[0].Rows[0]["Comments"].ToString());
        }

        //get all the company names that student worked
        [TestMethod]
        public void companies()
        {
            var ds = objCoopReport.GetCompanies();
            Console.WriteLine("Company Names");
            foreach (DataTable table in ds.Tables)
            {
                foreach (DataRow dr in table.Rows)
                {
                    Console.WriteLine(dr["Oraganization"].ToString());
                }
            }
        }

        //Coop adivisor can questionnaires report by using company name and question
        [TestMethod]
        public void GenerateQuestionnaires() {
            objCoopReport.Oraganization = "CIBC";
            objCoopReport.Questionnaires = "LikeIntership";
            var ds = objCoopReport.GetQuestionnairesInfo();
            Console.WriteLine("Total Feed Back");
            Console.WriteLine(ds.Tables[0].Rows[0]["Total_Feed_Back"].ToString());
            Console.WriteLine("Yes Definitely");
            Console.WriteLine(ds.Tables[0].Rows[0]["Yes_Definitely"].ToString());
            Console.WriteLine("Yes");
            Console.WriteLine(ds.Tables[0].Rows[0]["Yes"].ToString());
            Console.WriteLine("Some What");
            Console.WriteLine(ds.Tables[0].Rows[0]["Some_What"].ToString());
            Console.WriteLine("No");
            Console.WriteLine(ds.Tables[0].Rows[0]["No"].ToString());
            Console.WriteLine("Definitely Not");
            Console.WriteLine(ds.Tables[0].Rows[0]["Definitely_Not"].ToString());
        }
    }
}
