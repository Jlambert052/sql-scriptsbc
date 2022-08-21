SELECT InvoiceTotal, (InvoiceTotal*.1) as '10%', (InvoiceTotal*1.1) as '110%'
FROM Invoices
