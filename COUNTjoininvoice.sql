SELECT AccountDescription, Count(*)LineItemCount, Sum(InvoiceLineItemAmount) LineItemSum
	From GLAccounts g
		join InvoiceLineItems li on g.AccountNo = li.AccountNo
		Group By AccountDescription
		Having Count(*) > 1
		Order By LineItemCount DESC

SELECT *
	From InvoiceLineItems