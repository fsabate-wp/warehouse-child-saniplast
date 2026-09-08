/* SUCURSALES MAP - solo en /sucursales | OSM puro sin API key */
(function(){
  if (typeof L === 'undefined') return;
  var elMap = document.getElementById('sp-map');
  if (!elMap) return;

  var DATA = {
    central: { name:'Casa Central', addr:'A. Magariños Cervantes 911, Bº Gral. Bustos — Córdoba', lat:-31.3984886, lng:-64.1726006, dest:'A.+Magariños+Cervantes+911+Cordoba+Argentina', wa:'5493517386414' },
    sur:     { name:'Sucursal Zona Sur', addr:'Av. Armada Argentina 772, Bº Parque Latina — Córdoba', lat:-31.4578933, lng:-64.2112438, dest:'Av.+Armada+Argentina+772+Cordoba+Argentina', wa:'5493512007301' },
    norte:   { name:'Sucursal Zona Norte', addr:'Recta Martinolli 8163, Bº Villa Belgrano — Córdoba', lat:-31.35256, lng:-64.2484001, dest:'Recta+Martinolli+8163+Cordoba+Argentina', wa:'5493513196414' }
  };

  var map = L.map('sp-map', { zoomControl:false, scrollWheelZoom:false }).setView([-31.41, -64.20], 11);
  L.control.zoom({ position:'bottomright' }).addTo(map);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; OpenStreetMap contributors',
    maxZoom: 19
  }).addTo(map);

  var markers = {};
  function createIcon(active){
    return L.divIcon({
      className: '',
      html: '<div class="sp-marker '+(active?'is-active':'')+'"></div>',
      iconSize:[36,36],
      iconAnchor:[18,36],
      popupAnchor:[0,-36]
    });
  }
  Object.keys(DATA).forEach(function(id){
    var d = DATA[id];
    var m = L.marker([d.lat, d.lng], { icon: createIcon(id==='central') }).addTo(map);
    m.bindPopup('<b style="color:#00264d">'+d.name+'</b><br><span style="font-size:13px;color:#475569">'+d.addr+'</span><br><span style="font-size:12px;color:#64748b">Lun a Vie 8–18h | Sáb 8–13h</span><br><a href="https://www.google.com/maps/dir/?api=1&destination='+d.dest+'" target="_blank" style="color:#004489;font-weight:700;font-size:13px">Cómo llegar →</a> &nbsp;|&nbsp; <a href="https://wa.me/'+d.wa+'" target="_blank" style="color:#25D366;font-weight:700;font-size:13px">WhatsApp</a>');
    m.on('click', function(){ setActive(id); });
    markers[id]=m;
  });
  var group = L.featureGroup(Object.values(markers));
  map.fitBounds(group.getBounds().pad(0.25));
  var cards = document.querySelectorAll('.sp-card');
  var toolbarBtns = document.querySelectorAll('.sp-toolbar button');
  var titleText = document.getElementById('sp-map-title-text');
  var chip = document.getElementById('sp-map-chip');
  var footerText = document.getElementById('sp-map-footer-text');
  var directions = document.getElementById('sp-map-directions');
  function setActive(id){
    var d = DATA[id];
    if(!d) return;
    cards.forEach(function(c){ c.classList.toggle('is-active', c.dataset.id===id); });
    toolbarBtns.forEach(function(b){ b.classList.toggle('is-active', b.dataset.view===id); });
    Object.keys(markers).forEach(function(k){ markers[k].setIcon(createIcon(k===id)); });
    map.flyTo([d.lat, d.lng], 15, { duration:0.8 });
    markers[id].openPopup();
    if (titleText) titleText.innerHTML = '<b>'+d.name+'</b> — '+d.addr.split('—')[0];
    if (chip) chip.textContent = d.name;
    if (footerText) footerText.innerHTML = '<strong id="sp-footer-name">'+d.name+'</strong> — '+d.addr;
    if (directions) directions.href = 'https://www.google.com/maps/dir/?api=1&destination='+d.dest;
  }
  function setGeneral(){
    cards.forEach(function(c){ c.classList.remove('is-active'); });
    toolbarBtns.forEach(function(b){ b.classList.toggle('is-active', b.dataset.view==='general'); });
    Object.keys(markers).forEach(function(k){ markers[k].setIcon(createIcon(false)); });
    map.flyToBounds(group.getBounds().pad(0.25), { duration:0.8 });
    if (titleText) titleText.innerHTML = '<b>Vista general</b> — 3 sucursales en Córdoba';
    if (chip) chip.textContent = 'Córdoba Capital';
    if (footerText) footerText.innerHTML = '<strong>Vista general</strong> — Tocá una tarjeta para ver el detalle';
    if (directions) directions.href = 'https://www.google.com/search?q=Saniplast+Cordoba';
    map.closePopup();
  }
  cards.forEach(function(card){
    card.addEventListener('click', function(e){
      if(e.target.closest('a')) return;
      setActive(card.dataset.id);
    });
    card.addEventListener('keydown', function(e){
      if(e.key==='Enter' || e.key===' ') { e.preventDefault(); setActive(card.dataset.id); }
    });
  });
  toolbarBtns.forEach(function(btn){
    btn.addEventListener('click', function(){
      if(btn.dataset.view==='general') setGeneral();
      else setActive(btn.dataset.view);
    });
  });
  setTimeout(function(){ map.invalidateSize(); }, 400);
  window.addEventListener('resize', function(){ map.invalidateSize(); });
  if (window.ResizeObserver) {
    var ro = new ResizeObserver(function(){ map.invalidateSize(); });
    ro.observe(elMap);
  }
})();
