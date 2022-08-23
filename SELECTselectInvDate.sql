SELECT distinct VendorName, 
    (SELECT MAX(InvoiceDate) FROM Invoices
    WHERE Invoices.VendorID = Vendors.VendorID) LatestInv --Subquery in the SELECT statement; not the where clause
FROM Vendors
ORDER By LatestInv Desc; 