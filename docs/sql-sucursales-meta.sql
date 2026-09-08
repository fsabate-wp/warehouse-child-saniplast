-- SQL para crear ruta amigable /sucursales (slug pedido)
-- Ejecutar en phpMyAdmin o consola mysql en DEMO y PRODUCCION
-- Compatible PrestaShop 1.7. Requiere PS_REWRITING_SETTINGS=1

-- 1) Crear entrada en ps_meta (ajustar prefijo si no es ps_)
INSERT INTO `ps_meta` (`page`, `configurable`)
SELECT 'sucursales', 1
FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM `ps_meta` WHERE `page`='sucursales');

-- 2) Crear traducciones url_rewrite para cada idioma activo
--    Obtiene id_meta recién creado y el id_shop por defecto
SET @id_meta := (SELECT id_meta FROM `ps_meta` WHERE page='sucursales' LIMIT 1);
SET @id_shop := (SELECT id_shop FROM `ps_shop` WHERE active=1 ORDER BY id_shop LIMIT 1);

-- Español (id_lang=1 suele ser es) - ajustar si tu id es distinto: SELECT * FROM ps_lang;
INSERT INTO `ps_meta_lang` (`id_meta`, `id_shop`, `id_lang`, `url_rewrite`, `title`, `description`)
SELECT @id_meta, @id_shop, l.id_lang, 'sucursales', 'Sucursales', 'Nuestras sucursales en Córdoba'
FROM `ps_lang` l
WHERE NOT EXISTS (
  SELECT 1 FROM `ps_meta_lang` ml WHERE ml.id_meta=@id_meta AND ml.id_lang=l.id_lang AND ml.id_shop=@id_shop
);

-- Verificación:
-- SELECT * FROM ps_meta WHERE page='sucursales';
-- SELECT * FROM ps_meta_lang WHERE id_meta=@id_meta;

-- 3) Limpiar caché luego de ejecutar
-- rm -rf var/cache/*
