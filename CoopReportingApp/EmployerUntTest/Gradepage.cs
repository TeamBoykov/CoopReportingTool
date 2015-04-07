using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data;

namespace EmployerUntTest
{
    [TestClass]
    public class Gradepage
    {
        GradepageBO objGradepage = new GradepageBO();
        [TestMethod]


        //CoopAdviosr Inserts or updates Grade
        public void UpdateGradeTest()
        {
            objGradepage.StudentID = int.Parse("300755755");
            objGradepage.Grade = int.Parse("75");
            objGradepage.WorkTerm = "Summer";
            var ds = objGradepage.UpdateGrade(objGradepage);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Console.Write("Grade updated");
            }
            else
            {
                Console.Write("Grade already updated or Student does not exists");
            }
        }

        //display grades
        [TestMethod]
        public void displaygrade() { 
            objGradepage.StudentID = 300718283;
            var ds = objGradepage.StudentGrade();
            Console.WriteLine("Grades");
            foreach (DataTable table in ds.Tables)
            {
                foreach (DataRow dr in table.Rows)
                {
                    Console.Write(dr["WorkTerm"].ToString());
                    Console.Write(dr["Grade"].ToString());
                }
            }
        }

    }
}
