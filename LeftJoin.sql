SELECT *
	FROM Terms t 
	left join Invoices i
	ON i.TermsID = t.TermsID