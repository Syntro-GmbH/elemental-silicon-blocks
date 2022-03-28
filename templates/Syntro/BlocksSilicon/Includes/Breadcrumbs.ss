<nav class="container mt-lg-3 pt-4" aria-label="breadcrumb">
  <ol class="breadcrumb mb-0">
    <% if isHomePage %>
      <li class="breadcrumb-item active" aria-current="page"><i class="bx bx-home-alt fs-lg me-1"></i> Home</li>
    <% else %>
      <li class="breadcrumb-item">
        <a href="/">
        <i class="bx bx-home-alt fs-lg me-1"></i><%t Syntro\BlocksSilicon\Extension\BreadcrumbsExtension.HOME 'Home' %>
        </a>
      </li>
      <% if $BreadcrumbItems %>
        <% loop $BreadcrumbItems %>
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
</nav>
