DELETE VendorsCopy 
    Where VendorID = (
        SELECT VendorID
            from VendorsCopy
            Where VendorName like 'MAX%'
    )

    --deleting the row we just added