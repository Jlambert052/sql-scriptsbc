SELECT VendorState, sum(InvoiceTotal) Total, Count(*) InvAmt
	FROM Invoices i
		JOIN Vendors v
			on v.vendorID = i.VendorID
		--where InvoiceTotal >=20000
	Group By Vendorstate
		Having sum(InvoiceTotal) > 10000
	Order By Vendorstate;