/* This Query is to find the NULL account numbers that have not been used. You can check the accounts by adding i.* and changing it to an inner join.
Left Join is used to pull account numbers for all accounts
*/
SELECT g.AccountNO, AccountDescription
	FROM GLAccounts g
		Left Join InvoiceLineItems i
			on g.AccountNo = i.AccountNo 
		WHERE i.InvoiceID is null 