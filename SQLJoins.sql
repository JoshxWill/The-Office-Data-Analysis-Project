/*
Inner Joins, Full/Left/Right Outer Joins
*/

Select *
From [SQL Tutorial].dbo.EmployeeDemographics

Select *
From [SQL Tutorial].dbo.EmployeeSalary

--Inner Join

Select * 
From [SQL Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Full Outer Join

Select * 
From [SQL Tutorial].dbo.EmployeeDemographics
Full Outer Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Left Outer Join
Select * 
From [SQL Tutorial].dbo.EmployeeDemographics
Left Outer Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Right Outer Join
Select * 
From [SQL Tutorial].dbo.EmployeeDemographics
Right Outer Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


Select EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
From [SQL Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Tutorial].dbo.EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
	WHERE FirstName <> 'Michael'
	ORDER BY Salary DESC

Select JobTitle, AVG(Salary)
From [SQL Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle
	