Insert VendorsCopy
   
    (VendorName, VendorAddress1, VendorAddress2,
    VendorCity, VendorState, VendorZipCode, VendorPhone,
    VendorContactFName, VendorContactLName,
    DefaultTermsID, DefaultAccountNo)
    VALUES 
    ('MAX Technical Training', '4900 parkway drive', NULL, 
    'Mason', 'OH', '45040', '513-322-8888', 
    'Noah', 'Phence', 
    5, 100);
--This adds a new row to the tables with the strings/integers as shown; depending on the columns' requirements (see in the columns on the connections tab)

SELECT * 
    FROM VendorsCopy