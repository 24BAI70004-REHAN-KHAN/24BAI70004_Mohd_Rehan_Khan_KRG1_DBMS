SELECT DISTINCT s.city, p.category
FROM Tbl_Suppliers s
JOIN Supplier_Products sp ON s.sup_id = sp.sup_id
JOIN Tbl_Products p ON sp.prod_id = p.prod_id;
