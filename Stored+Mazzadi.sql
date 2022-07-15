
DELIMITER $$

CREATE PROCEDURE `sp_sumar_sucursal` (IN p_provincia_sucursal char(255), IN p_direccion_sucursal char(255), IN p_codigo_postal_sucursal char(4))
BEGIN
      INSERT INTO freres.sucursales(provincia_sucursal,direccion_sucursal,codigo_postal_sucursal) values(p_provincia_sucursal,p_direccion_sucursal,p_codigo_postal_sucursal);
	
END;$$



DELIMITER $$

CREATE PROCEDURE `sp_order_clientes` (IN campo int, in orden INT)
BEGIN
SELECT *
FROM CLIENTES
ORDER BY
CASE WHEN campo=1 AND orden=1 THEN id_cliente END,
CASE WHEN campo = 1 AND orden = 2 THEN id_cliente END DESC,
CASE WHEN campo = 2 AND orden = 1 THEN nombre_cliente END,
CASE WHEN campo = 2 AND orden = 2 THEN nombre_cliente END DESC,
CASE WHEN campo = 3 AND orden = 1 THEN apellido_cliente END,
CASE WHEN campo = 3 AND orden = 2 THEN apellido_cliente END DESC,
CASE WHEN campo = 4 AND orden = 1 THEN direccion_cliente END,
CASE WHEN campo = 4 AND orden = 2 THEN direccion_cliente END DESC,
CASE WHEN campo = 5 AND orden = 1 THEN provincia_cliente END,
CASE WHEN campo = 5 AND orden = 2 THEN provincia_cliente END DESC,
CASE WHEN campo = 6 AND orden = 1 THEN codigo_postal_cliente END,
CASE WHEN campo = 6 AND orden = 2 THEN codigo_postal_cliente END DESC; 
 
END;$$


