SELECT InvoiceNumber, InvoiceTotal 
    From Invoices
        WHERE PaymentTotal > (
            SELECT AVG(PaymentTotal)
    FROM Invoices
    Where InvoiceTotal - (PaymentTotal + CreditTotal) = 0

     )
Order BY InvoiceTotal;

/*
SELECT AVG(PaymentTotal)
    FROM Invoices
    Where InvoiceTotal - (PaymentTotal + CreditTotal) = 0
Subquery that will return the >avg payment totals
*/