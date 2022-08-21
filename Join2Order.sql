SELECT VendorName Vendor, InvoiceDate Date, InvoiceNumber Number, InvoiceSequence #, InvoiceLineItemAmount LineItem
	FROM Vendors v
		Join Invoices i
			on v.VendorID = i.VendorID
		Join InvoiceLineItems li
			on i.InvoiceID = li.InvoiceID
		ORDER BY VendorName, InvoiceDate, InvoiceNumber, InvoiceSequence