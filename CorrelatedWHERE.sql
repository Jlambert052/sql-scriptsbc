SELECT VendorID, InvoiceNumber, InvoiceTotal
    FROM Invoices as Inv_Main
    WHERE InvoiceTotal > (
        SELECT AVG(InvoiceTotal)
            FROM Invoices Inv_Sub
            WHERE Inv_sub.VendorID = Inv_Main.VendorID
    )--Inner WHERE Clause correlates the query to individual vendors
ORDER BY VendorID, InvoiceTotal;

