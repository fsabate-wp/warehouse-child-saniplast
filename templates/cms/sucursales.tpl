{**
 * Sucursales - Template fijo con mapa Leaflet OSM
 * Ruta: /sucursales via SucursalesController (php_self = sucursales)
 * No depende de ps_store ni de CMS - contenido 100% fijo
 * Assets solo en esta pagina via SucursalesController::setMedia()
 *}
{extends file='page.tpl'}

{block name='page_title'}
  Sucursales
{/block}

{block name='page_content_container'}
  <section id="content" class="page-content page-sucursales">

    <section id="sp-sucursales">
      <div class="sp-header">
        <h2>Nuestras <span>Sucursales</span> en Córdoba</h2>
      </div>

      <div class="sp-toolbar" role="tablist" aria-label="Vista de mapa">
        <button type="button" class="is-active" data-view="general">Todas (3)</button>
        <button type="button" data-view="central">Casa Central</button>
        <button type="button" data-view="sur">Zona Sur</button>
        <button type="button" data-view="norte">Zona Norte</button>
      </div>

      <div class="sp-layout">
        <div class="sp-cards">

          <article class="sp-card is-active" data-id="central" data-lat="-31.3984886" data-lng="-64.1726006" tabindex="0" role="button" aria-label="Ver Casa Central en mapa">
            <div class="sp-card-top">
              <span class="sp-badge sp-badge--central">Casa Central</span>
              <span class="sp-live"><i></i> Abierto</span>
            </div>
            <h3>Casa Central — Gral. Bustos</h3>
            <address>A. Magariños Cervantes 911, Bº Gral. Bustos, X5001AGH — Córdoba</address>
            <div class="sp-horario">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.9"><circle cx="12" cy="12" r="10"/><path d="M12 6v6l4 2"/></svg>
              <span><b>Lun a Vie</b> 8:00–18:00 &nbsp;|&nbsp; <b>Sáb</b> 8:00–13:00</span>
            </div>
            <div class="sp-meta">
              <a href="mailto:ventas@saniplast.com.ar"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 4h16v16H4z"/><path d="m4 7 8 7 8-7"/></svg> ventas@saniplast.com.ar</a>
              <a href="tel:+5493517386414"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M22 16.9v3a2 2 0 0 1-2.2 2A19.8 19.8 0 0 1 3.1 5.2 2 2 0 0 1 5 3h3a2 2 0 0 1 2 1.7l.4 3a2 2 0 0 1-.6 1.6l-1.4 1.4a16 16 0 0 0 6 6l1.4-1.4a2 2 0 0 1 1.6-.6l3 .4A2 2 0 0 1 22 16.9z"/></svg> +54 9 3517 386414</a>
            </div>
            <div class="sp-card-actions">
              <button type="button" class="sp-btn sp-btn--primary">Ver en mapa</button>
              <a class="sp-btn sp-btn--ghost" href="https://www.google.com/maps/dir/?api=1&destination=A.+Magariños+Cervantes+911+Cordoba+Argentina" target="_blank" rel="noopener">Cómo llegar →</a>
              <a class="sp-btn sp-btn--wa" href="https://wa.me/5493517386414?text=Hola%20Saniplast%20Casa%20Central%2C%20quisiera%20hacer%20una%20consulta" target="_blank" rel="noopener">WhatsApp Casa Central</a>
            </div>
          </article>

          <article class="sp-card" data-id="sur" data-lat="-31.4578933" data-lng="-64.2112438" tabindex="0" role="button" aria-label="Ver Sucursal Zona Sur en mapa">
            <div class="sp-card-top">
              <span class="sp-badge sp-badge--sur">Zona Sur</span>
              <span class="sp-live"><i></i> Abierto</span>
            </div>
            <h3>Sucursal Zona Sur — Parque Latina</h3>
            <address>Av. Armada Argentina 772, Bº Parque Latina, X5016DFU — Córdoba</address>
            <div class="sp-horario">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.9"><circle cx="12" cy="12" r="10"/><path d="M12 6v6l4 2"/></svg>
              <span><b>Lun a Vie</b> 8:00–18:00 &nbsp;|&nbsp; <b>Sáb</b> 8:00–13:00</span>
            </div>
            <div class="sp-meta">
              <a href="mailto:ventasarmada@saniplast.com.ar"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 4h16v16H4z"/><path d="m4 7 8 7 8-7"/></svg> ventasarmada@saniplast.com.ar</a>
              <a href="tel:+5493512007301"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M22 16.9v3a2 2 0 0 1-2.2 2A19.8 19.8 0 0 1 3.1 5.2 2 2 0 0 1 5 3h3a2 2 0 0 1 2 1.7l.4 3a2 2 0 0 1-.6 1.6l-1.4 1.4a16 16 0 0 0 6 6l1.4-1.4a2 2 0 0 1 1.6-.6l3 .4A2 2 0 0 1 22 16.9z"/></svg> +54 9 3512 007301</a>
            </div>
            <div class="sp-card-actions">
              <button type="button" class="sp-btn sp-btn--primary">Ver en mapa</button>
              <a class="sp-btn sp-btn--ghost" href="https://www.google.com/maps/dir/?api=1&destination=Av.+Armada+Argentina+772+Cordoba+Argentina" target="_blank" rel="noopener">Cómo llegar →</a>
              <a class="sp-btn sp-btn--wa" href="https://wa.me/5493512007301?text=Hola%20Saniplast%20Zona%20Sur%2C%20quisiera%20hacer%20una%20consulta" target="_blank" rel="noopener">WhatsApp Zona Sur</a>
            </div>
          </article>

          <article class="sp-card" data-id="norte" data-lat="-31.35256" data-lng="-64.2484001" tabindex="0" role="button" aria-label="Ver Sucursal Zona Norte en mapa">
            <div class="sp-card-top">
              <span class="sp-badge sp-badge--norte">Zona Norte</span>
              <span class="sp-live"><i></i> Abierto</span>
            </div>
            <h3>Sucursal Zona Norte — Villa Belgrano</h3>
            <address>Recta Martinolli 8163, Bº Villa Belgrano — Córdoba</address>
            <div class="sp-horario">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.9"><circle cx="12" cy="12" r="10"/><path d="M12 6v6l4 2"/></svg>
              <span><b>Lun a Vie</b> 8:00–18:00 &nbsp;|&nbsp; <b>Sáb</b> 8:00–13:00</span>
            </div>
            <div class="sp-meta">
              <a href="mailto:ventasmartinolli@saniplast.com.ar"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 4h16v16H4z"/><path d="m4 7 8 7 8-7"/></svg> ventasmartinolli@saniplast.com.ar</a>
              <a href="tel:+5493513196414"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M22 16.9v3a2 2 0 0 1-2.2 2A19.8 19.8 0 0 1 3.1 5.2 2 2 0 0 1 5 3h3a2 2 0 0 1 2 1.7l.4 3a2 2 0 0 1-.6 1.6l-1.4 1.4a16 16 0 0 0 6 6l1.4-1.4a2 2 0 0 1 1.6-.6l3 .4A2 2 0 0 1 22 16.9z"/></svg> +54 9 3513 196414</a>
            </div>
            <div class="sp-card-actions">
              <button type="button" class="sp-btn sp-btn--primary">Ver en mapa</button>
              <a class="sp-btn sp-btn--ghost" href="https://www.google.com/maps/dir/?api=1&destination=Recta+Martinolli+8163+Cordoba+Argentina" target="_blank" rel="noopener">Cómo llegar →</a>
              <a class="sp-btn sp-btn--wa" href="https://wa.me/5493513196414?text=Hola%20Saniplast%20Zona%20Norte%2C%20quisiera%20hacer%20una%20consulta" target="_blank" rel="noopener">WhatsApp Zona Norte</a>
            </div>
          </article>

        </div>

        <div class="sp-map-wrap">
          <div class="sp-map-header">
            <div class="sp-map-title">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="#004489"><path d="M12 2a7 7 0 0 0-7 7c0 5.2 7 13 7 13s7-7.8 7-13a7 7 0 0 0-7-7zm0 9.5A2.5 2.5 0 1 1 12 6a2.5 2.5 0 0 1 0 5.5z"/></svg>
              <span id="sp-map-title-text"><b>Vista general</b> — 3 sucursales en Córdoba</span>
            </div>
            <span class="sp-chip" id="sp-map-chip">Córdoba Capital</span>
          </div>
          <div id="sp-map" class="sp-map" aria-label="Mapa de sucursales Saniplast"></div>
          <div class="sp-map-footer">
            <small id="sp-map-footer-text"><strong id="sp-footer-name">Casa Central</strong> — A. Magariños Cervantes 911, Gral. Bustos</small>
            <a id="sp-map-directions" class="sp-link" href="https://www.google.com/maps/dir/?api=1&destination=A.+Magariños+Cervantes+911+Cordoba+Argentina" target="_blank" rel="noopener">Abrir en Google Maps ↗</a>
          </div>
        </div>
      </div>
      <p class="sp-nota">Horarios a confirmar — edición directa en el HTML. Sin API key: mapa 100% OpenStreetMap.</p>
    </section>

  </section>
{/block}
