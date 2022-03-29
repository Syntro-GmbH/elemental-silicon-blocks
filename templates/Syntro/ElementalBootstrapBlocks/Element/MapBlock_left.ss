<div class="container">
  <div class="row">
    <!-- Map -->
    <div class="col-xl-7 col-md-8 order-2 order-md-1" style="color: #0c0d0d; min-height: 400px;">
        <div class="shadow-sm rounded-3 overflow-hidden mapblock-map h-100 bg-white"
          {$MarkerAttr}
          {$MapoptionsAttr}
        >
      </div>
    </div>
    <!-- Contact info -->
    <div class="col-md-4 pt-1 mb-4 mb-md-0 offset-xl-1 align-self-center order-1 order-md-2">
      $Content
      <% include Syntro/ElementalBootstrapBlocks/Element/MapBlockAdress %>
    </div>
  </div>
</div>
<% require javascript('syntro/elemental-bootstrap-blocks:client/dist/mapblock/bundle.js') %>
<% require javascript($GoogleJS) %>
