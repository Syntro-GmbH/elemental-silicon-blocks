<section class="container mt-4 mb-2 mb-md-4 mb-lg-5 pt-lg-2 pb-5">
  <div class="d-flex align-items-center justify-content-between mb-4 pb-1 pb-md-3">
    <h1 class="mb-0"><%t SilverStripe\\Blog\\Model\\Blog.PostsByUserNoTitle 'Posts by {firstname} {surname}' firstname=$CurrentProfile.FirstName surname=$CurrentProfile.Surname %></h1>
    <div class="d-flex align-items-center ms-sm-4 ms-3">
    </div>
  </div>

  <div class="row">
    <div class="col-xl-9 col-lg-8">
      <% if $PaginatedList.Exists %>
        <% loop $PaginatedList %>
          <% include SilverStripe\\Blog\\PostSummary_list %>
        <% end_loop %>
      <% else %>
        <p class="p-5 text-muted text-center"><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %>...</p>
      <% end_if %>
      <% with $PaginatedList %>
        <% include SilverStripe\\Blog\\Pagination %>
      <% end_with %>
    </div>
    <aside class="col-xl-3 col-lg-4 position-relative">
      <div class="sticky-top ms-lg-4" style="top: 105px !important;">
        <div class="card card-body bg-faded-primary bg-repeat-0 bg-size-cover border-0">
          <% if CurrentProfile %>
            <img src="$CurrentProfile.BlogProfileImage.ScaleWidth(250).URL" class="rounded-circle mx-auto mb-3" width="60" alt="$CurrentProfile.Name.XML">
            <h3 class="h4 text-center">$CurrentProfile.Name.XML</h3>
            <% if CurrentProfile.BlogProfileSummary %>
            <p class="fs-md">$CurrentProfile.BlogProfileSummary</p>
            <% end_if %>
          <% end_if %>
        </div>
      </div>
    </aside>
  </div>
</section>
