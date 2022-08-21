SELECT VendorName, DefaultAccountNo, AccountDescription
	FROM Vendors v
		Join GLAccounts g
		On v.DefaultAccountNo = g.AccountNo 
		ORDER BY AccountDescription, VendorName