
SELECT VendorName, Count(*) InvoiceCount, Sum(InvoiceTotal) InvoiceSum
	From Vendors v
		Join Invoices i on v.VendorID = i.VendorID
	Group By v.VendorID, VendorName
	Order By InvoiceCount DESC
