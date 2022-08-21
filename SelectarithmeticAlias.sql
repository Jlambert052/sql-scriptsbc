SELECT 
InvoiceNumber as Number, 
InvoiceTotal as Total, 
PaymentTotal+CreditTotal as Credits, 
InvoiceTotal-(PaymentTotal+CreditTotal) as Balance

	From Invoices
	Where InvoiceTotal >= 500 and InvoiceTotal <= 10000