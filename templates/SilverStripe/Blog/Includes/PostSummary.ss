<div class="masonry-grid-item col pb-2 pb-lg-3">
  <% if FeaturedImage %>
    <article class="card border-0 bg-transparent">
      <div class="position-relative overflow-hidden rounded-3">
      <a href="$Link" class="position-absolute top-0 start-0 w-100 h-100" aria-label="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>"></a>
        <%-- <a href="#" class="btn btn-icon btn-light bg-white border-white btn-sm rounded-circle position-absolute top-0 end-0 zindex-5 me-3 mt-3" data-bs-toggle="tooltip" data-bs-placement="left" title="Read later">
          <i class="bx bx-bookmark"></i>
        </a> --%>
        <img src="$FeaturedImage.ScaleWidth(795).URL" alt="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
      </div>
      <div class="card-body pb-1 px-0">
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
        <%-- <div class="fs-sm border-end pe-3 me-3">$PublishDate.Nice</div> --%>
        <div class="fs-sm">$PublishDate.Format(d. MMM YYYY )</div>
          <%-- <div class="d-flex align-items-center me-3">
            <i class="bx bx-like fs-lg me-1"></i>
            <span class="fs-sm">5</span>
          </div>
          <div class="d-flex align-items-center me-3">
            <i class="bx bx-comment fs-lg me-1"></i>
            <span class="fs-sm">0</span>
          </div>
          <div class="d-flex align-items-center">
            <i class="bx bx-share-alt fs-lg me-1"></i>
            <span class="fs-sm">2</span>
          </div> --%>
        </div>
      </div>
    </article>
  <% else %>
    <article class="card">
      <div class="card-body">
        <%-- <div class="d-flex justify-content-between mb-3"> --%>
          <% include SilverStripe\\Blog\\PostTags %>
          <%-- <a href="#" class="btn btn-icon btn-secondary btn-sm rounded-circle position-absolute top-0 end-0 zindex-5 me-3 mt-3" data-bs-toggle="tooltip" data-bs-placement="left" title="Read later">
            <i class="bx bx-bookmark"></i>
          </a> --%>
        <%-- </div> --%>
        <h3 class="h4">
          <a href="$Link">$Title</a>
        </h3>
        <% if $Summary %>
          $Summary
        <% else %>
          <p class="mb-4">$ElementalArea.forTemplate.LimitSentences(2)</p>
        <% end_if %>
        <div class="d-flex align-items-center text-muted">
        <%-- <div class="fs-sm border-end pe-3 me-3">$PublishDate.Nice</div> --%>
        <div class="fs-sm">$PublishDate.Format(d. MMM YYYY )</div>
          <%-- <div class="d-flex align-items-center me-3">
            <i class="bx bx-like fs-lg me-1"></i>
            <span class="fs-sm">5</span>
          </div>
          <div class="d-flex align-items-center me-3">
            <i class="bx bx-comment fs-lg me-1"></i>
            <span class="fs-sm">0</span>
          </div>
          <div class="d-flex align-items-center">
            <i class="bx bx-share-alt fs-lg me-1"></i>
            <span class="fs-sm">2</span>
          </div> --%>
        </div>
      </div>
    </article>
  <% end_if %>

</div>
