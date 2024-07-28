USE AdventureWorks2019
GO

--Se desea obtener las ventas totales de los �ltimos 4 a�os por vendedor y entidad de negocio

SELECT pp. BusinessEntityID, pp.FirstName, SUM(SalesQuota) as Ventas_Totales,
YEAR(QuotaDate) as a�o
FROM Sales.SalesPersonQuotaHistory qh
INNER JOIN Person.Person pp
ON qh.BusinessEntityID = pp.BusinessEntityID
GROUP BY pp.BusinessEntityID, YEAR(QuotaDate), pp.FirstName
ORDER BY pp.BusinessEntityID