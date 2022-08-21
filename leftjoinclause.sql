SELECT VendorName, InvoiceNumber	
	from Vendors v left join Invoices i
		on i.VendorID = v.VendorID