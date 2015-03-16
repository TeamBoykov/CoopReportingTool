using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace EmployerUntTest
{
    [TestClass]
    public class Student
    {
        CoopReportBO objCoopReport = new CoopReportBO();
        [TestMethod]

        public void SubmitStudentTest()
        {
            CoopReportBO objBEL = new CoopReportBO();

            objBEL.AboutCoopAdvisor = "Yes";
            objBEL.AdequatelyPrepared = "Yes";
            objBEL.AdvisorName = "Mealanie";
            objBEL.AgencySupervisor = "";
            objBEL.Attendance = "Yes";
            objBEL.Comments = "Good Job";
            objBEL.Curriculum = "Yes";
            objBEL.DutiesPerformed = "KannanLal";
            objBEL.Expectation = "Yes";
            objBEL.HelpProblems = "Yes";
            objBEL.JobTitle = "Test Analyst";
            objBEL.Learning = "Yes";
            objBEL.LikeIntership = "Yes";
            objBEL.ObjectiveEstablished = "Yes";
            objBEL.Oraganization = "HSBC";
            objBEL.OverStructured = "Yes";
            objBEL.Problems = "Yes";
            objBEL.Punctuality = "Yes";
            objBEL.Recommend = "I will recommend";
            objBEL.ReportMonth = "Feburary";
            objBEL.Requirement = "Yes";
            objBEL.Rewarding = "Yes";
            objBEL.SelfEvaluation = "Yes";
            objBEL.Structured = "Yes";
            objBEL.StudentID = int.Parse("300262626");
            objBEL.StudentName = "Raj";
            objBEL.SupervisorActive = "Yes";
            objBEL.Year = "2015";

            objBEL.SubmitForm(objBEL);

        }
        public void AllStudentCoopReports()
        {
            var ds = objCoopReport.AllStudentCoopReports();
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentID"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AdvisorName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Oraganization"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Year"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ReportMonth"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["JobTitle"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["LikeIntership"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AdequatelyPrepared"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Curriculum"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Expectation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Requirement"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AboutCoopAdvisor"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AgencySupervisor"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorActive"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Attendance"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Punctuality"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Structured"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OverStructured"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Problems"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["HelpProblems"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Learning"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Rewarding"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ObjectiveEstablished"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Recommend"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SelfEvaluation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["DutiesPerformed"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Comments"].ToString());
        }

        [TestMethod]
        public void IndividualStudentReports()
        {
            objCoopReport.StudentID = 300718283;
            var ds = objCoopReport.AllStudentCoopReports();
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentID"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AdvisorName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Oraganization"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Year"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ReportMonth"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["JobTitle"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["LikeIntership"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AdequatelyPrepared"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Curriculum"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Expectation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Requirement"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AboutCoopAdvisor"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AgencySupervisor"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorActive"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Attendance"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Punctuality"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Structured"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OverStructured"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Problems"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["HelpProblems"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Learning"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Rewarding"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ObjectiveEstablished"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Recommend"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SelfEvaluation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["DutiesPerformed"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Comments"].ToString());
        }
        [TestMethod]
        public void PerticularIndividualStudentReports()
        {
            objCoopReport.Id = 2;
            var ds = objCoopReport.IndividualReport();
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentID"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["StudentName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AdvisorName"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Oraganization"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Year"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ReportMonth"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["JobTitle"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["LikeIntership"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AdequatelyPrepared"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Curriculum"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Expectation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Requirement"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AboutCoopAdvisor"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["AgencySupervisor"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SupervisorActive"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Attendance"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Punctuality"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Structured"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["OverStructured"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Problems"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["HelpProblems"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Learning"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Rewarding"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["ObjectiveEstablished"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Recommend"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["SelfEvaluation"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["DutiesPerformed"].ToString());
            Console.WriteLine(ds.Tables[0].Rows[0]["Comments"].ToString());
        }
    }
}
