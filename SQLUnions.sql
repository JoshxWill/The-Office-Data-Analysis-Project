--Union
Select * 
From [SQL Tutorial].dbo.EmployeeDemographics
Union 
Select *
From [SQL Tutorial].dbo.WareHouseEmployeeDemographics
Order By EmployeeID


--Union All
Select * 
From [SQL Tutorial].dbo.EmployeeDemographics
Union 
Select *
From [SQL Tutorial].dbo.WareHouseEmployeeDemographics
Order By EmployeeID
