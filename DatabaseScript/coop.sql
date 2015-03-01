USE [master]
GO
/****** Object:  Database [coop]    Script Date: 2/26/2015 10:45:57 PM ******/
CREATE DATABASE [coop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'coop', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\coop.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'coop_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\coop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [coop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [coop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [coop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [coop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [coop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [coop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [coop] SET ARITHABORT OFF 
GO
ALTER DATABASE [coop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [coop] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [coop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [coop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [coop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [coop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [coop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [coop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [coop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [coop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [coop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [coop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [coop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [coop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [coop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [coop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [coop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [coop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [coop] SET RECOVERY FULL 
GO
ALTER DATABASE [coop] SET  MULTI_USER 
GO
ALTER DATABASE [coop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [coop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [coop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [coop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'coop', N'ON'
GO
USE [coop]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Advisorinfo]    Script Date: 2/26/2015 10:45:58 PM ******/
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
	@Type varchar(10)
)
as
	begin
		
				insert into dbo.Advisorinfo(AFname,ALname,AEmail,APhone,ACell,AArea,AUsername,APassword)
							values(@AFname,@ALname,@AEmail,@APhone,@ACell,@AArea,@AUsername,@APassword)
			
	end
	

GO
/****** Object:  StoredProcedure [dbo].[Sp_CoopForm]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_CoopForm](
	@Id int=0 output,
	@StudentName varchar(50)=null,
	@StudentID int=null,
	@CoopAdvisor varchar(50)=null,
	@Oraganization varchar(50)=null,
	@ReportMonth varchar(50)=null,
	@JobTitle varchar(50)=null,
	@LikeIntership varchar(50)=null,
	@AdequatelyPrepared varchar(50)=null,
	@Curriculum varchar(50)=null,
	@Expectation varchar(50)=null,
	@Requirement varchar(50)=null,
	@AboutCoopAdvisor varchar(50)=null,
	@AgencySupervisor varchar(50)=null,
	@SupervisorActive varchar(50)=null,
	@Attendance varchar(50)=null,
	@Punctuality varchar(50)=null,
	@Structured varchar(50)=null,
	@OverStructured varchar(50)=null,
	@Problems varchar(50)=null,
	@HelpProblems varchar(50)=null,
	@Learning varchar(50)=null,
	@Rewarding varchar(50)=null,
	@ObjectiveEstablished varchar(50)=null,
	@Recommend varchar(50)=null,
	@SelfEvaluation varchar(50)=null,
	@DutiesPerformed nvarchar(250)=null,
	@Comments nvarchar(50)=null,
	@Type char(2)=null
)
as 
	begin
		if(@Type='I')
			begin
				insert into tbl_CoopForm(StudentName,StudentID,CoopAdvisor,Oraganization,ReportMonth,JobTitle,LikeIntership,AdequatelyPrepared,Curriculum,
							Expectation,Requirement,AboutCoopAdvisor,AgencySupervisor,SupervisorActive,Attendance,Punctuality,Structured,
							OverStructured,Problems,HelpProblems,Learning,Rewarding,ObjectiveEstablished,Recommend,SelfEvaluation,DutiesPerformed,
							Comments)
					values(@StudentName,@StudentID,@CoopAdvisor,@Oraganization,@ReportMonth,@JobTitle,@LikeIntership,@AdequatelyPrepared,@Curriculum,
							@Expectation,@Requirement,@AboutCoopAdvisor,@AgencySupervisor,@SupervisorActive,@Attendance,@Punctuality,@Structured,
							@OverStructured,@Problems,@HelpProblems,@Learning,@Rewarding,@ObjectiveEstablished,@Recommend,@SelfEvaluation,@DutiesPerformed,
							@Comments)
			end
	end
	begin
		if(@Type='A')
			begin
				select * from tbl_CoopForm	
			end
	end
	begin
		if(@Type='S')
			begin
				select * from tbl_CoopForm where StudentID = @StudentID
			end
	end
	begin
		if(@Type='M')
			begin
				select * from tbl_CoopForm where ReportMonth = @ReportMonth
			end
	end
	begin
		if(@Type='SM')
			begin
				select * from tbl_CoopForm where StudentID = @StudentID and ReportMonth = @ReportMonth
			end
	end

GO
/****** Object:  StoredProcedure [dbo].[Sp_CoopformTest]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_CoopformTest]
(
	
	@Id	int,	
	@StudentName nvarchar(50),	
	@StudentId	int	,
	@Organization	nvarchar(50),
	@JobTitle	nvarchar(50),
	@Date	date,
	@LikeInternship	nvarchar(50),	
	@AdequatelyPrepared	nvarchar(50),	
	@Curriculum	nvarchar(50),	
	@Expectation	nvarchar(50),	
	@Requirements	nvarchar(50),	
	@CoopAdvisor	nvarchar(50),	
	@AgencySupervisor	nvarchar(50),	
	@SupervisorActive	nvarchar(50),	
	@Attendance	nvarchar(50),	
	@Punctuality	nvarchar(50),	
	@Structured	nvarchar(50),	
	@OverStructured	nvarchar(50),	
	@Problems	nvarchar(50),	
	@HelpProblems	nvarchar(50),	
	@Learning	nvarchar(50),	
	@Rewarding	nvarchar(50),	
	@ObjectiveEstablished	nvarchar(50),	
	@Recommend	nvarchar(50),	
	@SelfEvaluation	nvarchar(50),	
	@DutiesPerformed	nvarchar(250),	
	@Comments	nvarchar(250),
	@Type nvarchar(10)
)

As
Begin
	
	SET NOCOUNT ON

	INSERT INTO dbo.Coopform(Id,StudentName,StudentId,Organization,JobTitle,Date,LikeInternship,AdequatelyPrepared,Curriculum,Expectation,Requirements,CoopAdvisor,AgencySupervisor,SupervisorActive,Attendance,Punctuality,Structured,OverStructured,Problems,HelpProblems,Learning,Rewarding,ObjectiveEstablished,Recommend,SelfEvaluation,DutiesPerformed,Comments)	
	values (@Id,@StudentName,@StudentId,@Organization,@JobTitle,@Date,@LikeInternship,@AdequatelyPrepared,@Curriculum,@Expectation,@Requirements,@CoopAdvisor,@AgencySupervisor,@SupervisorActive,@Attendance,@Punctuality,@Structured,@OverStructured,@Problems,@HelpProblems,@Learning,@Rewarding,@ObjectiveEstablished,@Recommend,@SelfEvaluation,@DutiesPerformed,@Comments)

end

GO
/****** Object:  StoredProcedure [dbo].[Sp_Grade]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  StoredProcedure [dbo].[Sp_StudentEvalForm]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_StudentEvalForm]
(
	@Id int=0 output,
	@StudentName varchar(50),
	@StudentId int,
	@Organization varchar(50),
	@JobTitle varchar(50),
	@Term varchar(50),
	@Year int,
	@InterestInWork nvarchar(50),
	@AbilityToLearn nvarchar(50),
	@QualityofWork nvarchar(50),
	@ProblemSolving nvarchar(50),
	@TeamWork nvarchar(50),
	@Dependability nvarchar(50),
	@ResponseToSupervision nvarchar(50),
	@Reflection nvarchar(50),
	@Resoursefulness nvarchar(50),
	@EthicalBehaviour nvarchar(50),
	@AppreciationofDiversity nvarchar(50),
	@EnterpreneurialOrientation nvarchar(50),
	@WrittenCommunication nvarchar(50),
	@OralCommuniation nvarchar(50),
	@InterpersonalCommunication nvarchar(50),
	@OverallPerformanceRating nvarchar(50),
	@SupervisorsComments nvarchar(50)=null,
	@SupervisorsRecommendations nvarchar(50)=null,
	@NextWorkTerm varchar(50)=null,
	@OfferNextWorkTerm varchar(50)=null,
	@OfferStatus varchar(50)=null,
	@NextWorkTermFrom date=null,
	@NextWorkTermTo date=null,
	@SupervisorsName varchar(50),
	@SupervisorsTitle varchar(50),
	@Currentdate date,
	@ManagerName varchar(50)=null,
	@Type char(2)=null
)
as
	begin
		if(@Type='I')
			begin
				insert into tbl_StudnetEvalForm(StudentName,StudentId,Organization,JobTitle,Term,year,InterestInWork,AbilityToLearn,QualityofWork,
							ProblemSolving,TeamWork,Dependability,ResponseToSupervision,Reflection,Resoursefulness,EthicalBehaviour,
							AppreciationofDiversity,EnterpreneurialOrientation,WrittenCommunication,OralCommuniation,InterpersonalCommunication,
							OverallPerformanceRating,SupervisorsComments,SupervisorsRecommendations,NextWorkTerm,OfferNextWorkTerm,
							OfferStatus,NextWorkTermFrom,NextWorkTermTo,SupervisorsName,SupervisorsTitle,Currentdate,ManagerName)
							values(@StudentName,@StudentId,@Organization,@JobTitle,@Term,@year,@InterestInWork,@AbilityToLearn,@QualityofWork,
							@ProblemSolving,@TeamWork,@Dependability,@ResponseToSupervision,@Reflection,@Resoursefulness,@EthicalBehaviour,
							@AppreciationofDiversity,@EnterpreneurialOrientation,@WrittenCommunication,@OralCommuniation,@InterpersonalCommunication,
							@OverallPerformanceRating,@SupervisorsComments,@SupervisorsRecommendations,@NextWorkTerm,@OfferNextWorkTerm,
							@OfferStatus,@NextWorkTermFrom,@NextWorkTermTo,@SupervisorsName,@SupervisorsTitle,@Currentdate,@ManagerName)
			end
	end
	begin
		if(@Type='A')
			begin
				select * from tbl_StudnetEvalForm
			end
	end
	begin
		if(@Type='S')
			begin
				select * from tbl_StudnetEvalForm where StudentId=@StudentId
			end
	end


GO
/****** Object:  StoredProcedure [dbo].[Sp_StudentInfo]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	@Type varchar(10)
)
as
	begin
		if(@Type='I')
			begin
				insert into dbo.StudentInfo(StudentID,SFname,SLname,SProgram,SEmail,SAddress,SPhone,SCell,SPassword)
							values(@StudentID,@SFname,@SLname,@SProgram,@SEmail,@SAddress,@SPhone,@SCell,@SPassword)
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
/****** Object:  StoredProcedure [dbo].[Sp_WorkInfo]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[Advisorinfo]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
 CONSTRAINT [PK_Advisorinfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[AUsername] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Coopform]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coopform](
	[Id] [int] NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[StudentId] [int] NOT NULL,
	[Organization] [nvarchar](50) NOT NULL,
	[JobTitle] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[LikeInternship] [nvarchar](50) NOT NULL,
	[AdequatelyPrepared] [nvarchar](50) NOT NULL,
	[Curriculum] [nvarchar](50) NOT NULL,
	[Expectation] [nvarchar](50) NOT NULL,
	[Requirements] [nvarchar](50) NOT NULL,
	[CoopAdvisor] [nvarchar](50) NOT NULL,
	[AgencySupervisor] [nvarchar](50) NOT NULL,
	[SupervisorActive] [nvarchar](50) NOT NULL,
	[Attendance] [nvarchar](50) NOT NULL,
	[Punctuality] [nvarchar](50) NOT NULL,
	[Structured] [nvarchar](50) NOT NULL,
	[OverStructured] [nvarchar](50) NOT NULL,
	[Problems] [nvarchar](50) NOT NULL,
	[HelpProblems] [nvarchar](50) NOT NULL,
	[Learning] [nvarchar](50) NOT NULL,
	[Rewarding] [nvarchar](50) NOT NULL,
	[ObjectiveEstablished] [nvarchar](50) NOT NULL,
	[Recommend] [nvarchar](50) NOT NULL,
	[SelfEvaluation] [nvarchar](50) NOT NULL,
	[DutiesPerformed] [nvarchar](250) NOT NULL,
	[Comments] [nvarchar](250) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grade]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[StudentInfo]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
 CONSTRAINT [PK_StudentInfo] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_CoopForm]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CoopForm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[StudentID] [int] NULL,
	[CoopAdvisor] [varchar](50) NULL,
	[Oraganization] [varchar](50) NULL,
	[ReportMonth] [varchar](50) NULL,
	[JobTitle] [varchar](50) NULL,
	[LikeIntership] [varchar](50) NULL,
	[AdequatelyPrepared] [varchar](50) NULL,
	[Curriculum] [varchar](50) NULL,
	[Expectation] [varchar](50) NULL,
	[Requirement] [varchar](50) NULL,
	[AboutCoopAdvisor] [varchar](50) NULL,
	[AgencySupervisor] [varchar](50) NULL,
	[SupervisorActive] [varchar](50) NULL,
	[Attendance] [varchar](50) NULL,
	[Punctuality] [varchar](50) NULL,
	[Structured] [varchar](50) NULL,
	[OverStructured] [varchar](50) NULL,
	[Problems] [varchar](50) NULL,
	[HelpProblems] [varchar](50) NULL,
	[Learning] [varchar](50) NULL,
	[Rewarding] [varchar](50) NULL,
	[ObjectiveEstablished] [varchar](50) NULL,
	[Recommend] [varchar](50) NULL,
	[SelfEvaluation] [varchar](50) NULL,
	[DutiesPerformed] [nvarchar](50) NULL,
	[Comments] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_CoopForm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_StudnetEvalForm]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_StudnetEvalForm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[StudentId] [int] NOT NULL,
	[Organization] [nvarchar](50) NOT NULL,
	[JobTitle] [nvarchar](50) NOT NULL,
	[Term] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[InterestInWork] [nvarchar](50) NOT NULL,
	[AbilityToLearn] [nvarchar](50) NOT NULL,
	[QualityofWork] [nvarchar](50) NOT NULL,
	[ProblemSolving] [nvarchar](50) NOT NULL,
	[TeamWork] [nvarchar](50) NOT NULL,
	[Dependability] [nvarchar](50) NOT NULL,
	[ResponseToSupervision] [nvarchar](50) NOT NULL,
	[Reflection] [nvarchar](50) NOT NULL,
	[Resoursefulness] [nvarchar](50) NOT NULL,
	[EthicalBehaviour] [nvarchar](50) NOT NULL,
	[AppreciationofDiversity] [nvarchar](50) NOT NULL,
	[EnterpreneurialOrientation] [nvarchar](50) NOT NULL,
	[WrittenCommunication] [nvarchar](50) NOT NULL,
	[OralCommuniation] [nvarchar](50) NOT NULL,
	[InterpersonalCommunication] [nvarchar](50) NOT NULL,
	[OverallPerformanceRating] [nvarchar](50) NOT NULL,
	[SupervisorsComments] [nvarchar](50) NULL,
	[SupervisorsRecommendations] [nvarchar](50) NULL,
	[NextWorkTerm] [varchar](50) NULL,
	[OfferNextWorkTerm] [varchar](50) NULL,
	[OfferStatus] [varchar](50) NULL,
	[NextWorkTermFrom] [date] NULL,
	[NextWorkTermTo] [date] NOT NULL,
	[SupervisorsName] [varchar](50) NOT NULL,
	[SupervisorsTitle] [nvarchar](50) NOT NULL,
	[Currentdate] [date] NOT NULL,
	[ManagerName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkInfo]    Script Date: 2/26/2015 10:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
USE [master]
GO
ALTER DATABASE [coop] SET  READ_WRITE 
GO
