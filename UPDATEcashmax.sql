UPDATE VendorsCopy SET
    DefaultAccountNo = (SELECT AccountNo from GLAccounts where AccountDescription like '%ash')
    Where VendorID = (
        SELECT VendorID 
            From VendorsCopy
            Where VendorName like 'MAX%'
    )
    --Choosing accounts with cash as tag/name with max