<% if FeaturedImage %>
  <article class="card border-0 bg-transparent me-xl-5 mb-4">
    <div class="row g-0">
      <div class="col-sm-5 position-relative bg-position-center bg-repeat-0 bg-size-cover rounded-3" style="background-image: url($FeaturedImage.ScaleWidth(500).URL); min-height: 15rem;">
        <a href="$Link" class="position-absolute top-0 start-0 w-100 h-100" aria-label="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>"></a>
      </div>
      <div class="col-sm-7">
        <div class="card-body px-0 pt-sm-0 ps-sm-4 pb-0 pb-sm-4">
          <% include SilverStripe\\Blog\\PostTags %>
          <h3 class="h4">
            <a href="blog-single.html">$Title</a>
          </h3>
          <% if $Summary %>
            $Summary
          <% else %>
          <p class="mb-4">$ElementalArea.forTemplate.LimitSentences(2)</p>
          <% end_if %>
          <div class="d-flex align-items-center text-muted">
            <div class="fs-sm">$PublishDate.Format(d. MMM YYYY )</div>
          </div>
        </div>
      </div>
    </div>
  </article>
<% else %>
  <article class="card me-xl-5 mb-4">
    <div class="card-body">
      <% include SilverStripe\\Blog\\PostTags %>
      <h3 class="h4">
      <a href="$Link">$Title</a>
      </h3>
      <% if $Summary %>
        $Summary
      <% else %>
        <p class="mb-4">$ElementalArea.forTemplate.LimitSentences(2)</p>
      <% end_if %>
      <div class="d-flex align-items-center text-muted">
        <div class="fs-sm">$PublishDate.Format(d. MMM YYYY )</div>
      </div>
    </div>
  </article>
<% end_if %>
<% if not $Last %>
  <div class="pb-2 pb-lg-3"></div>
<% end_if %>
