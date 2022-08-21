SELECT InvoiceDate, Count(*) InvoiceQty, Sum(InvoiceTotal) InvoiceSum
	From Invoices
	Group By InvoiceDate
	Having InvoiceDate BETWEEN '2020-01-01' AND '2020-01-31'
		AND Count(*) > 1
		AND Sum(InvoiceTotal) > 100
	Order By InvoiceDate DESC;