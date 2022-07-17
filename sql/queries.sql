SELECT *
FROM forms
LIMIT 5;

SELECT COUNT(id_form)
FROM forms;

SELECT *
FROM forms
LEFT JOIN order_items
ON forms.id_form = order_items.id_form
LIMIT 5;

SELECT * 
FROM order_items
WHERE id_pedido = 'a93ced3b9bf757a'
LIMIT 100;

SELECT * 
FROM orders
LIMIT 5;

SELECT DISTINCT f.*, o.id_pedido, o.status_pagamento,
CASE WHEN o.status_pagamento is NULL THEN 0
	 WHEN o.status_pagamento = 'Cancelado' THEN 0
	 ELSE 1
	 END as target
FROM forms f
LEFT JOIN order_items oi
ON f.id_form = oi.id_form
LEFT JOIN orders o
ON oi.id_pedido = o.id_pedido;