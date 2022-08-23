WITH CAVendors as (
    SELECT *
        FROM Vendors
        WHERE VendorState in ('CA') --Use in for multiple, use = for one.
) --Use a CTE to look at vendors just in CA. Creates temp/virtual table for data.
SELECT *
    FROM Invoices
    JOIN CAVendors
        ON invoices.VendorID = CAVendors.VendorID