SELECT VendorID, sum(PaymentTotal) PaymentSum
	From Invoices
	Group by VendorID