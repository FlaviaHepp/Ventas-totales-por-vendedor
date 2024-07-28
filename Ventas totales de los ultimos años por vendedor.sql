USE AdventureWorks2019
GO

--Se desea obtener las ventas totales de los últimos 4 años por vendedor y entidad de negocio

SELECT pp. BusinessEntityID, pp.FirstName, SUM(SalesQuota) as Ventas_Totales,
YEAR(QuotaDate) as año
FROM Sales.SalesPersonQuotaHistory qh
INNER JOIN Person.Person pp
ON qh.BusinessEntityID = pp.BusinessEntityID
GROUP BY pp.BusinessEntityID, YEAR(QuotaDate), pp.FirstName
ORDER BY pp.BusinessEntityID