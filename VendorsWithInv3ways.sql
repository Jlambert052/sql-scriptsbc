SELECT DISTINCT VendorName 
    FROM Vendors JOIN Invoices
        ON Vendors.VendorID = Invoices.VendorID
ORDER BY VendorName; 

SELECT DISTINCT VendorName
    From Vendors
        WHERE EXISTS (
        SELECT *
            FROM Invoices
            WHERE Invoices.VendorID = Vendors.VendorID
        )
ORDER BY VendorName

SELECT VendorName   
    FROM Vendors
    where VendorID in (
        SELECT VendorID 
            FROM Invoices
    )
    Order By VendorName

    --Three Queries that run and result in the same data result using different subquery methods, or a join for the first. 