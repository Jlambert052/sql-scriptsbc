Set IDENTITY_INSERT VendorsTrueCopy on;
--For if you want to add rows/information to a table; activate identity_insert then turn off after changes made.
Insert into VendorsTrueCopy (VendorID, VendorName, VendorAddress1, VendorAddress2, 
            VendorCity, VendorState, VendorZipCode, VendorPhone, 
            VendorContactLName, VendorContactFName, 
            DefaultTermsID, DefaultAccountNo)
        Select VendorID, VendorName, VendorAddress1, VendorAddress2, 
            VendorCity, VendorState, VendorZipCode, VendorPhone, 
            VendorContactLName, VendorContactFName, 
            DefaultTermsID, DefaultAccountNo
            from Vendors;

Set IDENTITY_INSERT VendorsTrueCopy off;


Select *
    From VendorsTrueCopy