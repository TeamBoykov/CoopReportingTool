CREATE TABLE [dbo].[Advisorinfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AFname] [nvarchar](50) NOT NULL,
	[ALname] [nvarchar](50) NOT NULL,
	[AEmail] [nvarchar](100) NOT NULL,
	[APhone] [int] NULL,
	[ACell] [int] NULL,
	[AArea] [nvarchar](100) NOT NULL,
	[AUsername] [nvarchar](50) NOT NULL,
	[APassword] [nvarchar](50) NOT NULL,
	[AConfirmPass] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Advisorinfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[AUsername] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Sp_Advisorinfo]
(
	
	@AFname varchar(50),
	@ALname varchar(50),
	@AEmail varchar(100),
	@APhone varchar(50),
	@ACell int,
	@AArea int,
	@AUsername varchar(100),
	@APassword varchar(50),
	@AConfirmpass varchar(50),
	@Type varchar(10)
)
as
	begin
		
				insert into dbo.Advisorinfo(AFname,ALname,AEmail,APhone,ACell,AArea,AUsername,APassword,AConfirmPass)
							values(@AFname,@ALname,@AEmail,@APhone,@ACell,@AArea,@AUsername,@APassword,@AConfirmpass)
			
	end
	
GO

/*grades table and stored procedure*/
CREATE TABLE [dbo].[Grade](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Grade] [nvarchar](50) NOT NULL,
	[Term] [nvarchar](50) NOT NULL,
	[AdvisorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/*grades stored procedure*/
CREATE procedure [dbo].[Sp_Grade]
(
	@Id int=0 output,
	@GStudentID int,
	@GGrade varchar(50),
	@GTerm varchar(50),
	@GAdvisorName varchar(50),
	@Type varchar(10)
)
as
	begin
		if(@Type='I')
			begin
				insert into dbo.Grade(StudentID,Grade,Term,AdvisorName)
							values(@GStudentID,@GGrade,@GTerm,@GAdvisorName)
			end
	end
	begin
		if(@Type='A')
			begin
				select * from dbo.Grade
			end
	end
	begin
		if(@Type='S')
			begin
				select * from dbo.Grade where StudentId=@GStudentID
			end
	end


GO
/*student information table*/
CREATE TABLE [dbo].[StudentInfo](
	[StudentID] [int] NOT NULL,
	[SFname] [nvarchar](50) NOT NULL,
	[SLname] [nvarchar](50) NOT NULL,
	[SProgram] [nvarchar](50) NOT NULL,
	[SEmail] [nvarchar](max) NOT NULL,
	[SAddress] [nvarchar](50) NOT NULL,
	[SPhone] [int] NULL,
	[SCell] [int] NULL,
	[SPassword] [nvarchar](50) NOT NULL,
	[SConfirmPass] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StudentInfo] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/*student information stored procedure*/

CREATE procedure [dbo].[Sp_StudentInfo]
(
	@StudentID int,
	@SFname varchar(50),
	@SLname varchar (50),
	@SProgram varchar(50),
	@SEmail varchar(50),
	@SAddress varchar(50),
	@SPhone int=0,
	@SCell int=0,
	@SPassword varchar(50),
	@SConfirmPass varchar (50),
	@Type varchar(10)
)
as
	begin
		if(@Type='I')
			begin
				insert into dbo.StudentInfo(StudentID,SFname,SLname,SProgram,SEmail,SAddress,SPhone,SCell,SPassword,SConfirmPass)
							values(@StudentID,@SFname,@SLname,@SProgram,@SEmail,@SAddress,@SPhone,@SCell,@SPassword,@SConfirmPass)
			end
	end
	begin
		if(@Type='A')
			begin
				select * from dbo.StudentInfo
			end
	end
	begin
		if(@Type='S')
			begin
				select * from dbo.StudentInfo where StudentId=@StudentId
			end
	end
	GO

	/*table for work info*/
	CREATE TABLE [dbo].[WorkInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[CompanyAddress] [nvarchar](100) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[AdvisorName] [nvarchar](50) NOT NULL,
	[Term] [nvarchar](50) NOT NULL,
	[Grade] [nchar](10) NULL,
 CONSTRAINT [PK_WorkInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[WorkInfo]  WITH CHECK ADD  CONSTRAINT [FK_WorkInfo_StudentInfo] FOREIGN KEY([StudentID])
REFERENCES [dbo].[StudentInfo] ([StudentID])
GO
ALTER TABLE [dbo].[WorkInfo] CHECK CONSTRAINT [FK_WorkInfo_StudentInfo]
GO

/*stored procedure for work info*/
CREATE procedure [dbo].[Sp_WorkInfo]
(
	@StudentId int,
    @CompanyName varchar(50),
	@CompanyAddress varchar(100),
	@Position varchar(50),
	@AdvisorName  varchar(50),
	@Term varchar(50),
	@Grade varchar(50),
	@Type varchar(10)
)
as
	begin
		if(@Type='I')
			begin
				insert into dbo.WorkInfo(StudentID,CompanyName,CompanyAddress,Position,AdvisorName,Term,Grade)
							values(@StudentId,@CompanyName,@CompanyAddress,@Position,@AdvisorName,@Term,@Grade)
			end
	end
	begin
		if(@Type='A')
			begin
				select * from dbo.WorkInfo
			end
	end
	begin
		if(@Type='S')
			begin
				select * from dbo.WorkInfo where StudentId=@StudentId
			end
	end
	GO


