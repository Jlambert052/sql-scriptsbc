INSERT INTO VendorsCopy
    (VendorName, VendorAddress1, VendorAddress2,
    VendorCity, VendorState, VendorZipCode, VendorPhone,
    VendorContactFName, VendorContactLName,
    DefaultTermsID, DefaultAccountNo)
    SELECT VendorName, VendorAddress1, VendorAddress2,
    VendorCity, VendorState, VendorZipCode, VendorPhone,
    VendorContactFName, VendorContactLName,
    DefaultTermsID, DefaultAccountNo
        FROM VendorsCopy   
            Where Vendorstate != 'CA'
--SELECT tells the INSERT to use each row that is not a CA row. 

SELECT count (*) From VendorsCopy
    Where VendorState != 'CA'