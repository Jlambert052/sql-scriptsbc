Select g.AccountNo, AccountDescription
    FROM GLAccounts g
        WHERE NOT EXISTS 
        (SELECT DISTINCT GLAccounts.AccountNo
    FROM GLAccounts JOIN InvoiceLineItems i
    On g.AccountNo = i.AccountNo 
        )
    ORDER BY AccountNo;

/*SELECT Distinct AccountNo
    FROM InvoiceLineItems;

SELECT Distinct AccountNo
    FROM GLAccounts;
  These queries show the total account #'s in the GLAccounts table and in the ILI table; 
  subquery searches for account #s that are present in g and i then asks to return the ones that are not used/do not exist in the ili table  */
