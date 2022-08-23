UPDATE VendorsCopy SET
    DefaultAccountNo = (SELECT  AccountNo FROM GLAccounts Where AccountDescription = 'Software'), 
    DefaultTermsID = 1
    Where DefaultAccountNo = 100

SELECT * 
    FROM VendorsCopy
    WHERE DefaultAccountNo in (100, 167)

--Used to update the information in a table; Reassigning the accountno to the same as software rows, and the terms id changing to 1. Only applies to current accountno of 100 (newest table entry MAX)
