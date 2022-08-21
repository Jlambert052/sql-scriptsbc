SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal - (PaymentTotal + CreditTotal) as Balance
FROM Vendors v
	JOIN Invoices i
	On v.vendorID = i.vendorID
	Where InvoiceTotal - (PaymentTotal + CreditTotal) > 0 
	ORDER BY VendorName Asc