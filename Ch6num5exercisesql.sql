SELECT VendorName, i.InvoiceID, InvoiceSequence, InvoiceLineItemAmount
    FROM Vendors v JOIN Invoices i 
        ON v.vendorID = i.VendorID
    JOIN InvoiceLineItems l 
        On i.InvoiceID = l.InvoiceID
    WHERE I.InvoiceID IN (SELECT InvoiceID     
        FROM InvoiceLineItems
        WHERE InvoiceSequence > 1)

;
SELECT * 
    FROM InvoiceLineItems
--Write a SELECT statement that returns four columns: 
--VendorName, InvoiceID, InvoiceSequence, and InvoiceLineItemAmount for each invoice that has more than one line item in the InvoiceLineItems table.
