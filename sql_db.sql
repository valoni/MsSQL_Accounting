/* thirre master db*/
USE [master]
GO

/* krijo accdb */
CREATE DATABASE [AccountTableDB]
GO

USE [AccountTableDB]
GO 

/* Krijo tabelen per account tabele */
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'tblAccountDescription' AND type = 'u')
DROP TABLE [tblAccountDescription]
GO 

CREATE TABLE [dbo].[tblAccountDescription](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[AccountDescription] [varchar](50) NULL,
	[RegDate] [date] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_tblAccountDescription] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/*
AccountId	AccountDescription	RegDate		UserId
--------------------------------------------------------
	1		Assets				2013-07-29	1
	2		Liability			2013-07-29	1
	3		Equity				2013-07-29	1
	4		Revenue				2013-07-29	1
	5		Expenses			2013-07-29	1
	6		Contra Accounts		2013-07-29	1
*/

INSERT INTO [tblAccountDescription] VALUES('Assets','2013-07-29',1);
INSERT INTO [tblAccountDescription] VALUES('Liability','2013-07-29',1);
INSERT INTO [tblAccountDescription] VALUES('Equity','2013-07-29',1);
INSERT INTO [tblAccountDescription] VALUES('Revenue','2013-07-29',1);
INSERT INTO [tblAccountDescription] VALUES('Expenses','2013-07-29',1);
INSERT INTO [tblAccountDescription] VALUES('Contra Accounts','2013-07-29',1);
GO

/* Krijo tabelen per account chart  */
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'tblAccountsChart' AND type = 'u')
DROP TABLE [tblAccountsChart]
GO 

CREATE TABLE [dbo].[tblAccountsChart](
	[AccChartId] [int] IDENTITY(1,1) NOT NULL,
	[AccId] [int] NULL,
	[AccChartNo] [int] NULL,
	[AccChartDescription] [varchar](50) NULL,
	[AccChartAmnt] [float] NULL,
 CONSTRAINT [PK_tblAccountsChart] PRIMARY KEY CLUSTERED 
(
	[AccChartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/*

AccChartId	AccId	AccChartNo	AccChartDescription	AccChartAmnt
-----------------------------------------------------------------
1			1		100			Bank Money					0
2			1		101			Cash						0
3			1		102			Account Receivable			0
4			1		103			Provisions					0
5			1		104			GST Receivable				0			
6			1		105			Inventory					0
7			1		106			Prepaid						0
8			1		107			Income Receivable			0
9			1		110			Other Assets				0
10			2		201			Account Payable				0
11			2		206			Credit Cards				0
12			2		207			Tax Payable					0
13			2		210			Employment Expenses			0
14			2		220			Accrued Expenses			0
15			2		270			Other Expenses				0
16			3		300			Profit and Loss				0
17			4		400			Sales Revenue				0
18			4		420			Interest Income				0
19			5		500			Purchase					0
20			6		670			Office Expenses				0
21			6		685			Legal Expenses				0
22			6		690			Personal Benefits			0
23			6		695			Communication Expenses		0
24			6		696			Travelling					0
25			6		697			Labor and Walfare Expenses	0

*/

INSERT INTO [dbo].[tblAccountsChart] VALUES (1,100,'Bank Money',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (1,101,'Cash',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (1,102,'Account Receviable',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (1,103,'Provisions',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (1,104,'GST Receivable',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (1,105,'Inventory',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (1,106,'Prepaid',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (1,107,'Income Receivable',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (1,110,'Other Assets',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (2,201,'Account Payable',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (2,206,'Credit Cards',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (2,207,'Tax Payable',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (2,210,'Employment Expenses',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (2,220,'Accrued Expenses',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (2,270,'Other Expenses',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (3,300,'Profit And Loss',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (4,400,'Sales Revenue',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (4,420,'Interest Income',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (5,500,'Purchase',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (6,670,'Office Expenses',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (6,685,'Legal Expenses',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (6,690,'Personal Benefits',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (6,695,'Communication Expenses',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (6,696,'Travelling',0);
INSERT INTO [dbo].[tblAccountsChart] VALUES (6,697,'Labor and Walfare Expenses',0);



/* Krijo tabelen per account transactions  */
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'tblAccountsTransactions' AND type = 'u')
DROP TABLE [tblAccountsTransactions]
GO 

CREATE TABLE [dbo].[tblAccountsTransactions](
	[AccTransId] [int] IDENTITY(1,1) NOT NULL,
	[AccTransactionDescription] [varchar](50) NULL,
	[RegDate] [date] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_tblAccountsTransactions] PRIMARY KEY CLUSTERED 
(
	[AccTransId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/*
AccTransId	AccTransactionDescription					RegDate		UserId
-------------------------------------------------------------------------------
1			Purchase of static inventory				2013-07-29	1
2			Purchase of articles for sales				2013-07-29	1
3			Movement from one account to another ones	2013-07-29	1

*/
INSERT INTO [tblAccountsTransactions]  VALUES ('Purchase of static inventory','2013-07-29',1);
INSERT INTO [tblAccountsTransactions]  VALUES ('Purchase of articles for sales','2013-07-29',1);
INSERT INTO [tblAccountsTransactions]  VALUES ('Movement from one account to another ones','2013-07-29',1);
GO


/* Krijo tabelen per account transactions language */
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'tblAccountsTransactionsDetails' AND type = 'u')
DROP TABLE [tblAccountsTransactionsDetails]
GO 

CREATE TABLE [dbo].[tblAccountsTransactionsDetails](
	[AccTransDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[AccTransId] [int] NULL,
	[ToAccountNo] [varchar](512) NULL,
	[TranAction] [varchar](1) NULL,
	[FormulaFromValues] [varchar](512) NULL,
	[RegDate] [date] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_tblAccountsTransactionsDetails] PRIMARY KEY CLUSTERED 
(
	[AccTransDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*

AccTransDetailsId	AccTransId	ToAccountNo	TranAction	FormulaFromValues	RegDate		UserId
------------------------------------------------------------------------------------------------
	1					1			100			-			VAL				2013-07-29	1
	2					2			100			-			VAL				2013-07-29	1
	3					2			105			+			VAL				2013-07-29	1
	4					3			Acc1		-			VAL				2013-07-29	1
	5					3			Acc2		+			VAL				2013-07-29	1
*/

INSERT INTO [tblAccountsTransactionsDetails] VALUES (1,'100','-','VAL','2013-07-29',1);
INSERT INTO [tblAccountsTransactionsDetails] VALUES (2,'100','-','VAL','2013-07-29',1);
INSERT INTO [tblAccountsTransactionsDetails] VALUES (2,'105','+','VAL','2013-07-29',1);
INSERT INTO [tblAccountsTransactionsDetails] VALUES (3,'Acc1','-','VAL','2013-07-29',1);
INSERT INTO [tblAccountsTransactionsDetails] VALUES (3,'Acc2','-','VAL','2013-07-29',1);


/* Procedura per levizjet neper Account-a e definuara */
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountMovementS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AccountMovementSP]
GO

CREATE PROCEDURE [dbo].[AccountMovementSP]
@Acc1 as VARCHAR(512),
@Acc2 as VARCHAR(512),
@Val AS VARCHAR(512),
@TransType AS INT
AS
BEGIN
Declare @Script as VARCHAR(2048)
Declare @FinalScript as VARCHAR(2048)

SET @Script=''

BEGIN 
SELECT 
 @Script=@Script+'UPDATE [dbo].[tblAccountsChart] SET [AccChartAmnt]=[AccChartAmnt] '
 + TranAction 
 +
 CASE WHEN ([FormulaFromValues]='VAL')
     THEN @Val
    ELSE [FormulaFromValues]
 END 
  + ' WHERE [AccChartNo]=' +
  Case WHEN (ToAccountNo='ACC1')  
   THEN @Acc1
      When ([ToAccountNo]='ACC2')  
   THEN @Acc2
   ELSE ToAccountNo
 END
 +';'
 FROM [dbo].[tblAccountsTransactionsDetails]
  WHERE [AccTransId]=@TransType
END

EXEC(@Script)

END
GO

/* Krijo tabelen per account transactions complex language */
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'tblAccountsTransactionsDetails2' AND type = 'u')
DROP TABLE [tblAccountsTransactionsDetails2]
GO 

CREATE TABLE [dbo].[tblAccountsTransactionsDetails2](
	[AccTransDetailsId2] [int] IDENTITY(1,1) NOT NULL,
	[AccTransId] [int] NULL,
	[ToAccountNo] [varchar](512) NULL,
	[TranAction] [varchar](1) NULL,
	[FormulaFromValues] [varchar](512) NULL,
	[SetNewVal] [varchar](512) NULL,
	[SetNewFormula] [varchar](512) NULL,
	[SetNewAction] [varchar](512) NULL,
	[SetNewFormulaVar] [varchar](512) NULL,
	[RegDate] [date] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_tblAccountsTransactionsDetails2] PRIMARY KEY CLUSTERED 
(
	[AccTransDetailsId2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/*
AccTransDetailsId2	AccTransId	ToAccountNo	TranAction	FormulaFromValues	SetNewVal	SetNewFormula	SetNewAction	SetNewFormulaVar	RegDate		UserId
---------------------------------------------------------------------------------------------------------------------------------------------------------------
	1					1			0			I			A				=				500			NULL			NULL				2013-07-29	1
	2					1			0			I			B				=				A			/				1.16				2013-07-29	1
	3					1			0			I			C				=				B			/				1.1					2013-07-29	1
	4					1			0			I			D				=				C			-				A					2013-07-29	1
	5					1			0			I			E				=				D			-				E					2013-07-29	1
*/

INSERT INTO [tblAccountsTransactionsDetails2] VALUES (1,'0','I','A','=','500',NULL,NULL,'2013-07-29',1);
INSERT INTO [tblAccountsTransactionsDetails2] VALUES (1,'0','I','B','=','A','/','1.16','2013-07-29',1);
INSERT INTO [tblAccountsTransactionsDetails2] VALUES (1,'0','I','C','=','B','/','1.1','2013-07-29',1);
INSERT INTO [tblAccountsTransactionsDetails2] VALUES (1,'0','I','D','=','C','-','A','2013-07-29',1);
INSERT INTO [tblAccountsTransactionsDetails2] VALUES (1,'0','I','E','=','D','-','E','2013-07-29',1);


/* stored procedure per perdorimin e kesaj tabele */



/* tabela per transactions ketu rexhistrohet cdo levizje nga fillimi e deri ne fund per secilen vlere veq e veq */
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'tblTransactions' AND type = 'u')
DROP TABLE [tblTransactions]
GO 

CREATE TABLE [dbo].[tblTransactions](
	[TransId] [int] IDENTITY(1,1) NOT NULL,
	[TransDescription] [varchar](50) NULL,
	[AccTransId] [int] NULL,
	[ArtTransId] [int] NULL,
	[ArtTransType] [int] NULL,
	[ArtTransAmount] [float] NULL,
	[TransPricePerArtOrMovement] [float] NULL,
	[TransRemarks] [varchar](50) NULL,
	[TransWay] [varchar](3) NULL,
	[RegDate] [date] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_tblTransactions] PRIMARY KEY CLUSTERED 
(
	[TransId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

