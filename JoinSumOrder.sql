SELECT TOP 10 VendorName, Sum(PaymentTotal) PaymentSum
	From Vendors v
	Join Invoices i on v.VendorID = i.VendorID
	Group By v.VendorName
	Order By PaymentSum Desc