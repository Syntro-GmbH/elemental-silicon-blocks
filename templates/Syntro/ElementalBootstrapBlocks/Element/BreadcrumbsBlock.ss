<div class="container" aria-label="breadcrumb">
  <ol class="breadcrumb mb-0">

    <% if Page.isHomePage %>
      <li class="breadcrumb-item active" aria-current="page"><i class="bx bx-home-alt fs-lg me-1"></i> Home</li>
    <% else %>
      <li class="breadcrumb-item">
        <a href="/"><i class="bx bx-home-alt fs-lg me-1"></i>Home</a>
      </li>
      <% if $Page.BreadcrumbItems %>
        <% loop $Page.BreadcrumbItems %>
          <% if Last %>
          <li class="breadcrumb-item active" aria-current="page">$MenuTitle.XML</li>
          <% else %>
            <li class="breadcrumb-item">
              <a href="$Link"></i>$MenuTitle.XML</a>
            </li>
          <% end_if %>
        <% end_loop %>
      <% end_if %>
    <% end_if %>
  </ol>
</div>
