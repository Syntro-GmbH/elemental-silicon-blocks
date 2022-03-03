<div class="container">
  <div class="masonry-grid gallery row g-md-4 g-3 mb-4" data-thumbnails="true">
    <% loop Items %>
      <!-- Item -->
    <div class="masonry-grid-item col-md-4 col-sm-6 col-12">
        <a
          <% if not IsVideo %>
            href="$Image.URL"
          <% else %>
            href="$VideoURL"
            data-lg-size="1280-720"
          <% end_if %>
          class="gallery-item rounded-3<% if IsVideo %> video-item is-hovered<% end_if %>"
          data-sub-html='<h6 class="fs-sm text-light">$Title</h6>'
        >
          <img src="$Image.ScaleWidth(500).URL" alt="<% if Title %>$Title<% else %>$Image.Title<% end_if %>">
          <div class="gallery-item-caption fs-sm fw-medium">$Title</div>
        </a>
      </div>
    <% end_loop %>

</div>
