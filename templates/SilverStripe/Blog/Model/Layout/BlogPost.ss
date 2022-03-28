<!-- Post title + Meta  -->
<section class="container mt-4 pt-lg-2 pb-3">
  <h1 class="pb-3" style="max-width: 970px;">$Title</h1>
  <div class="d-flex flex-md-row flex-column align-items-md-center justify-content-md-between mb-3">
    <div class="d-flex align-items-center flex-wrap text-muted mb-md-0 mb-4">
      <% if $Categories.exists %>
        <div class="fs-xs border-end pe-3 me-3 mb-2">
          <% loop $Categories %>
          <a href="$Link" title="$Title"  class="badge bg-faded-primary text-primary fs-base<% if not Last %> me-2<% end_if %>">$Title</a>
          <%-- <a href="$Link" title="$Title" class="badge fs-sm text-white bg-primary shadow-primary text-decoration-none mb-2<% if not Last %> me-2<% end_if %>">$Title</a> --%>
          <% end_loop %>
        </div>
      <% end_if %>
      <div class="fs-sm pe-3 me-3 mb-2">$PublishDate.ago</div>
    </div>
    <div class="d-flex align-items-center position-relative ps-md-3 pe-lg-5 mb-2">
      <% if $Credits %>
        <% if $Credits.count < 2 %>
          <% with $Credits.first %>
            <% if BlogProfileImage %>
              <img src="$BlogProfileImage.ScaleWidth(180).URL" class="rounded-circle" width="60" alt="$Name.XML">
            <% end_if %>
            <div class="ps-3">
              <h6 class="mb-1"><%t SilverStripe\\Blog\\Model\\Blog.By "by" %></h6>
              <% if $URLSegment && not $Up.ProfilesDisabled %>
              <a href="$URL" class="fw-semibold stretched-link">$Name.XML</a>
              <% else %>
              <span class="fw-semibold">$Name.XML</span>
              <% end_if %>
            </div>
          <% end_with %>
        <% else %>
          <div class="ps-3">
          <h6 class="mb-1"><%t SilverStripe\\Blog\\Model\\Blog.By "by" %></h6>
          <% loop $Credits %>
            <% if not $First && not $Last %>, <% end_if %>
            <% if not $First && $Last %> <%t SilverStripe\\Blog\\Model\\Blog.AND "and" %> <% end_if %>
            <% if $URLSegment && not $Up.ProfilesDisabled %>
                <a href="$URL">$Name.XML</a>
            <% else %>
                $Name.XML
            <% end_if %>
          <% end_loop %>
          </div>
        <% end_if %>

      <% end_if %>
    </div>
  </div>
</section>

<!-- Post image (parallax) -->
<% if FeaturedImage %>
  <div class="jarallax mb-lg-5 mb-4" data-jarallax data-speed="0.4" style="height: 36.45vw; min-height: 300px;">
    <div class="jarallax-img" style="background-image: url($FeaturedImage.ScaleWidth(2000).URL);"></div>
  </div>
<% end_if %>

<!-- Post content + Sharing -->
<section class="container mb-5 pt-4 pb-2 py-mg-4">
  <div class="row gy-4">

    <!-- Content -->
    <div class="col-lg-9">
      $ElementalArea
      <% if $Tags.exists %>
        <!-- Tags -->
        <hr class="mb-4">
        <div class="d-flex flex-sm-row flex-column pt-2">
          <h6 class="mt-sm-1 mb-sm-2 mb-3 me-2 text-nowrap"><%t SilverStripe\\Blog\\Model\\Blog.Tagged "Tagged" %>:</h6>
          <div>
            <% loop $Tags %>
              <a href="$Link" class="btn btn-sm btn-outline-secondary me-2 mb-2">#$Title</a>
            <% end_loop %>
          </div>
        </div>
      <% end_if %>
    </div>

    <!-- Sharing -->
    <div class="col-lg-3 position-relative">
      <div class="sticky-top ms-xl-5 ms-lg-4 ps-xxl-4" style="top: 105px !important;">
        <span class="d-block mb-3">
          <% if $MinutesToRead < 1 %>
              <%t SilverStripe\\Blog\\Model\\Blog.LessThanAMinuteToRead "Less than a minute to read" %>
          <% else %>
              $MinutesToRead <%t SilverStripe\\Blog\\Model\\Blog.MinutesToRead "Minute(s) to read" %>
          <% end_if %>
        </span>
        <h6><%t SilverStripe\\Blog\\Model\\Blog.ShareThisPost "Share this post" %>:</h6>
        <div class="mb-4 pb-lg-3">
          <a href="https://www.linkedin.com/shareArticle?url=$AbsoluteLink.URLATT" target="_blank" class="btn btn-icon btn-secondary btn-linkedin me-2 mb-2">
            <i class="bx bxl-linkedin"></i>
          </a>
          <a href="https://www.facebook.com/sharer.php?u=$AbsoluteLink.URLATT" target="_blank" class="btn btn-icon btn-secondary btn-facebook me-2 mb-2">
            <i class="bx bxl-facebook"></i>
          </a>
          <a href="https://twitter.com/share?url=$AbsoluteLink.URLATT" target="_blank" class="btn btn-icon btn-secondary btn-twitter me-2 mb-2">
            <i class="bx bxl-twitter"></i>
          </a>
        </div>
        <%-- <button class="btn btn-lg btn-outline-secondary">
          <i class="bx bx-like me-2 lead"></i>
          Like it
          <span class="badge bg-primary shadow-primary mt-n1 ms-3">8</span>
        </button> --%>
      </div>
    </div>
  </div>
</section>
