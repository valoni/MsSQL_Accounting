# MsSQL_Accounting
Simple MS SQL Accounting System



#Account Class

AccountId|AccountDescription|RegDate   |UserId
---------|------------------|----------|------
	1|Assets	    |2013-07-29|1
	2|Liability         |2013-07-29|1
	4|Revenue	    |2013-07-29|1
	5|Expenses          |2013-07-29|1
	6|Contra Accounts   |2013-07-29|1


#Account Chart and State
/*

AccChartId	AccId	AccChartNo	AccChartDescription	      AccChartAmnt
-----------------------------------------------------------------
1			      1		  100			  Bank Money					        0
2			      1		  101			  Cash						            0
3			      1		  102			  Account Receivable		      0
4			      1		  103			  Provisions					        0
5			      1		  104			  GST Receivable				      0		  	
6			      1		  105			  Inventory					          0
7			      1		  106			  Prepaid						          0
8			      1		  107			  Income Receivable			      0
9			      1		  110			  Other Assets				        0
10			    2		  201			  Account Payable				      0
11			    2		  206			  Credit Cards				        0
12			    2		  207			  Tax Payable					        0
13			    2		  210			  Employment Expenses	        0
14			    2 		220			  Accrued Expenses			      0
15			    2		  270			  Other Expenses				      0
16			    3		  300			  Profit and Loss				      0
17			    4		  400			  Sales Revenue				        0
18			    4		  420			  Interest Income				      0
19			    5		  500			  Purchase					          0
20			    6		  670			  Office Expenses				      0
21			    6		  685			  Legal Expenses				      0
22			    6		  690			  Personal Benefits			      0
23			    6		  695			  Communication Expenses	    0
24			    6		  696			  Travelling					        0
25			    6		  697			  Labor and Walfare Expenses	0

*/


#Type of Transactions
/*
AccTransId	AccTransactionDescription					          RegDate		  UserId
-------------------------------------------------------------------------------
1			      Purchase of static inventory				        2013-07-29	1
2			      Purchase of articles for sales				      2013-07-29	1
3			      Movement from one account to another ones	  2013-07-29	1

*/

#Formula for Batch Transactions
/*
AccTransDetailsId	AccTransId	ToAccountNo	TranAction	FormulaFromValues	RegDate		  UserId
------------------------------------------------------------------------------------------------
	1					       1			    100			     -			    VAL				        2013-07-29	1
	2					       2			    100			     -			    VAL				        2013-07-29	1
	3					       2			    105			     +			    VAL				        2013-07-29	1
	4					       3			    Acc1		     -			    VAL				        2013-07-29	1
	5					       3			    Acc2		     +			    VAL				        2013-07-29	1
*/

#Accounts/Transactions Movement and Formula for Calc
/*
AccTransDetailsId2	AccTransId	ToAccountNo	TranAction	FormulaFromValues	SetNewVal	SetNewFormula	SetNewAction	SetNewFormulaVar	RegDate		  UserId
---------------------------------------------------------------------------------------------------------------------------------------------------------------
	1					        1			      0			      I			      A	                =	        500			      NULL			    NULL				      2013-07-29	1
	2					        1			      0			      I			      B				          =				  A             /             1.16				      2013-07-29	1
	3					        1			      0			      I			      C				          =				  B			        /				      1.1					      2013-07-29	1
	4					        1			      0			      I			      D				          =				  C			        -				      A					        2013-07-29	1
	5					        1			      0			      I			      E				          =				  D			        -				      E					        2013-07-29	1
*/

