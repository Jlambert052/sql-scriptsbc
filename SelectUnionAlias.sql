SELECT 'A' InvoiceClass, *
	FROM Invoices
	WHERE InvoiceTotal >= 10000
UNION
SELECT 'B' InvoiceClass, *
	FROM Invoices
	WHERE InvoiceTotal < 10000 and InvoiceTotal >= 100
UNION
SELECT 'C' InvoiceClass, *
	FROM Invoices
	WHERE InvoiceTotal < 100;