﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegistrationBO
/// </summary>
public class RegistrationBO
{
	public RegistrationBO()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    // NOTE: Please put your name in comment if you add code in this class

    
    public int ID { get; set; }
<<<<<<< HEAD
    public int StudentId { get; set; }
=======
    public Int64 StudentId { get; set; }
>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
    public string SFname { get; set; }
    public string SLname { get; set; }
    public string SProgram { get; set; }
    public string SEmail { get; set; }
    public string SAddress1 { get; set; }
    public string SAddress2 { get; set; }
    public string SCity { get; set; }
    public string SProvince { get; set; }
    public string SPostalCode { get; set; }
    public string SPhone { get; set; }
    public string SCell { get; set; }
    public string SPassword { get; set; }

    //display student profile information

<<<<<<< HEAD
    public System.Data.DataSet StudentProfile() {
        return null;
    }

    public System.Data.DataSet SelectedStudentProfile()
    {
        return RegistrationDAL.SelectedStudentProfile(StudentId);
    }

    public System.Data.DataSet CurrentWorkTerm()
    {

        return RegistrationDAL.CurrentWorkTerm(StudentId);
    }

    public System.Data.DataSet StudentGrade()
    {
        return RegistrationDAL.Grade(StudentId);
        
    }
=======
    public System.Data.DataSet StudentProfile()
    {
        return RegistrationDAL.StudentProfile(StudentId);
    }
    public System.Data.DataSet UpdateProfile(RegistrationBO ObjRegistrationBO)
    {
        return RegistrationDAL.UpdateProfile(ObjRegistrationBO);
    }
    //Refernce t insert Registration Info
    public System.Data.DataSet Registration(RegistrationBO ObjRegistrationBO)
    {
        return RegistrationDAL.Registration(ObjRegistrationBO);
    }

>>>>>>> a7211cb0ff4008030f8ff94ae6cb98561b05f5fa
}
