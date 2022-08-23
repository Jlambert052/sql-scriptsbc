UPDATE InvoicesCopy 
SET PaymentDate = GETDATE (),
    PaymentTotal = InvoiceTotal - (PaymentTotal + CreditTotal)
    Where InvoiceTotal - (PaymentTotal + CreditTotal) > 0

;
--Updates data to specified amounts/current payments based on remaining balances
--SELECT InvoiceTotal - PaymentTotal - CreditTotal Balance FROM InvoicesCopy