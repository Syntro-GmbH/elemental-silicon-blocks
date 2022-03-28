<% if $Categories.exists || $Tags.exists %>
  <div class="mb-1">
    <% if $Categories.exists %>
      <% loop $Categories %>
      <a href="$Link" title="$Title" class="badge fs-sm text-white bg-primary shadow-primary text-decoration-none mb-2<% if not Last || $Up.Tags.exists %> me-2<% end_if %>">$Title</a>
      <% end_loop %>
    <% end_if %>
    <% if $Tags.exists %>
      <% loop $Tags %>
      <a href="$Link" title="$Title" class="fs-sm text-muted text-decoration-none mb-3<% if not Last %> me-2<% end_if %>">#$Title</a>
      <% end_loop %>
    <% end_if %>
  </div>
<% end_if %>
