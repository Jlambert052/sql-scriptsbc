UPDATE VendorsCopy SET
    DefaultAccountNo = 403
    WHERE DefaultAccountNo = 400

--Update account no to a new one from an old one
;
SELECT *
    From VendorsCopy
    Where DefaultAccountNo = 403