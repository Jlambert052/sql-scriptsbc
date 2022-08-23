INSERT InvoicesCopy

    (VendorID, InvoiceTotal, TermsID, 
    InvoiceNumber, PaymentTotal, InvoiceDueDate, 
    InvoiceDate, CreditTotal, PaymentDate)
    VALUES
    (32, 434.58, 2,
    'AX-014-027', 0.00, '2020-05-08', 
    '2020-04-21', 0.00, NULL);

    --insert new row to copy table with following values