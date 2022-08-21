SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal - (PaymentTotal + CreditTotal) Balance
	FROM Vendors v, Invoices i
	WHERE v.VendorID = i.VendorID and InvoiceTotal - (PaymentTotal + CreditTotal) > 0
	ORDER BY VendorName ASC