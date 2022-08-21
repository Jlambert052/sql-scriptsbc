SELECT *
FROM Vendors v
	JOIN Invoices i
		On v.VendorID = i.VendorID;