SELECT *
FROM forms
LIMIT 5;
LEFT JOIN order_items
ON forms.id_form = order_items.id_form
LIMIT 5;

SELECT * 
FROM order_items
LIMIT 5;

SELECT * 
FROM orders
LIMIT 5;

SELECT DISTINCT f.*, o.id_pedido
FROM forms f
LEFT JOIN order_items oi
ON f.id_form = oi.id_form
LEFT JOIN orders o
ON oi.id_pedido = o.id_pedido;