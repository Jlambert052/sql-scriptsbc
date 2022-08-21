SELECT VendorName, AccountDescription, COUNT(*) LineItemCount, SUM(InvoiceLineItemAmount) LineItemSum
FROM Vendors v
--Join invoices to connect vendors, ili, and gla. Do not need info off invoices but connects the tables.
	join Invoices i
		on v.VendorID = i.VendorID
	join InvoiceLineItems li
		on li.InvoiceID = i.InvoiceID
	join GLAccounts g
		on g.AccountNo = li.AccountNo
	GROUP BY VendorName, AccountDescription
	ORDER BY VendorName, AccountDescription