using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data;
namespace EmployerUntTest
{
    [TestClass]
    public class Advisor
    {
        AdvisorBO ObjAdvisorBO = new AdvisorBO();

        //display advosor information
        [TestMethod]
        public void AdvisorInfo()
        {
            var ds = ObjAdvisorBO.AdvisorInfo();
            Console.WriteLine("Avisor Names");
            foreach (DataTable table in ds.Tables)
            {
                foreach (DataRow dr in table.Rows)
                {
                    Console.WriteLine(dr["AUsername"].ToString());
                }
            }
        }
        //display login information
        [TestMethod]
        public void AdvisorLoginInfo()
        {
            ObjAdvisorBO.AUsername = "john";
            ObjAdvisorBO.APassword = "john";
            var ds = ObjAdvisorBO.AdvisorLogin(ObjAdvisorBO);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Console.WriteLine("Successfully Login");
            }
            else {
                Console.WriteLine("Invalid login credentials");
            }
        }
    }
}
