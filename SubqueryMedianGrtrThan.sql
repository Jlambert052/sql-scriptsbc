SELECT InvoiceNumber, InvoiceTotal 
    From Invoices
        WHERE PaymentTotal > ALL (
            SELECT TOP 50 PERCENT PaymentTotal
                FROM Invoices
                ORDER BY PaymentTotal
     )--Ch 6 q3 - Subquery/Correlated to find the median payment total and then only show those greater than.
Order BY InvoiceTotal;