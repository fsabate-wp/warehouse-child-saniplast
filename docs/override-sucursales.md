# Sucursales - Override Controller

Este tema requiere un FrontController fuera del tema.

**Archivo real en servidor:** `override/controllers/front/SucursalesController.php`

> Este archivo NO vive dentro del repo del child por diseño de PrestaShop
> (Dispatcher escanea `_PS_OVERRIDE_DIR_.'controllers/front/'`). Se incluye
> aquí como referencia y para re-crearlo en producción/demo.

Ver archivo de referencia: `docs/SucursalesController.php.reference`

**Instalación en producción:**
1. Copiar `docs/SucursalesController.php.reference` → `override/controllers/front/SucursalesController.php`
2. Ejecutar SQL de `docs/sql-sucursales-meta.sql` (crea ruta `/sucursales` amigable)
3. Vaciar caché: BO > Parámetros Avanzados > Rendimiento > Limpiar caché o `rm -rf var/cache/*`
4. Verificar `https://www.saniplast.com.ar/sucursales` y `https://demo/sucursales` y `index.php?controller=sucursales`

**Assets solo en /sucursales:**
- `assets/css/sucursales.css` y `assets/js/sucursales.js` registrados via `SucursalesController::setMedia()` (no global)
- Leaflet CDN remoto también solo ahí.
