SELECT InvoiceNumber, InvoiceDate, InvoiceTotal
    FROM Invoices
        WHERE VendorID in
            (SELECT VendorID
                FROM Vendors
                WHERE VendorState = 'CA')


SELECT InvoiceNumber, InvoiceDate, InvoiceTotal
    FROM Invoices i JOIN Vendors v 
        ON i.vendorID = v.VendorID
            WHERE VendorState = 'CA'
                ORDER BY InvoiceDate