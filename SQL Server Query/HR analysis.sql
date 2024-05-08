 Use AdventureWorks2022

 select 
 e.BusinessEntityID,
 p.FirstName,
 p.MiddleName,
 p.LastName,
 e.JobTitle,
 d.Name as Department,
 d.GroupName as Department_Category,
 h.StartDate as Department_Startdate,
 e.BirthDate,
 e.HireDate,
 e.Gender,
 e.MaritalStatus,
 h.ShiftID as Shift_,
 s.Rate,
 s.PayFrequency
 
 from HumanResources.Employee e
 left join Person.Person p 
 on e.BusinessEntityID = p.BusinessEntityID
 left join HumanResources.EmployeePayHistory s
 On e.BusinessEntityID = s.BusinessEntityID
 left join HumanResources.EmployeeDepartmentHistory h
 On e.BusinessEntityID = h.BusinessEntityID
 left join HumanResources.Department d
 On h.DepartmentID = d.DepartmentID

 



 
