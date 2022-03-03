<div class="px-2 px-sm-0">
  <div class="swiper" data-swiper-options='{
    "slidesPerView": 1,
    "centeredSlides": true,
    "spaceBetween": 8,
    "loop": true,
    "pagination": {
      "el": ".swiper-pagination",
      "clickable": true
    },
    "breakpoints": {
      "500": {
        "slidesPerView": 2,
        "spaceBetween": 24
      },
      "1000": {
        "slidesPerView": 4,
        "spaceBetween": 24
      },
      "1500": {
        "slidesPerView": 6,
        "spaceBetween": 24
      }
    }
  }'>
    <div class="swiper-wrapper">
      <% loop Reviews %>
        <!-- Item -->
        <div class="swiper-slide h-auto pt-4">
          <figure class="d-flex flex-column h-100 px-2 px-sm-0 mb-0">
            <div class="card h-100 position-relative border-0 shadow-sm pt-4">
              <span class="btn btn-icon btn-primary shadow-primary pe-none position-absolute top-0 start-0 translate-middle-y ms-4">
                <i class="bx bxs-quote-left"></i>
              </span>
              <blockquote class="card-body pb-3 mb-0">
                <% if $Comment %>
                  $Comment
                <% else %>
                  <i class="text-muted"><%t Syntro\BlocksSilicon\Model\Review.NOCOMMENT 'No Comment' %></i>
                <% end_if %>
              </blockquote>
              <div class="card-footer border-0 text-nowrap pt-0">
              <i class="bx <% if Score >= 1 %>bxs-star text-warning<% else %>bx-star text-muted opacity-75<% end_if%>"></i>
              <i class="bx <% if Score >= 2 %>bxs-star text-warning<% else %>bx-star text-muted opacity-75<% end_if%>"></i>
              <i class="bx <% if Score >= 3 %>bxs-star text-warning<% else %>bx-star text-muted opacity-75<% end_if%>"></i>
              <i class="bx <% if Score >= 4 %>bxs-star text-warning<% else %>bx-star text-muted opacity-75<% end_if%>"></i>
              <i class="bx <% if Score >= 5 %>bxs-star text-warning<% else %>bx-star text-muted opacity-75<% end_if%>"></i>
              </div>
            </div>
            <figcaption class="d-flex align-items-center ps-4 pt-4">
              <% if Portrait %>
                <img src="$Portrait.Fill(100,100).URL" width="48" class="rounded-circle" alt="$Title">
              <% else %>
                <svg xmlns="http://www.w3.org/2000/svg"  width="48" height="48" viewBox="0 0 24 24" style="fill: #cecdd3;transform: ;msFilter:;"><path d="M12 2C6.579 2 2 6.579 2 12s4.579 10 10 10 10-4.579 10-10S17.421 2 12 2zm0 5c1.727 0 3 1.272 3 3s-1.273 3-3 3c-1.726 0-3-1.272-3-3s1.274-3 3-3zm-5.106 9.772c.897-1.32 2.393-2.2 4.106-2.2h2c1.714 0 3.209.88 4.106 2.2C15.828 18.14 14.015 19 12 19s-3.828-.86-5.106-2.228z"></path></svg>
              <% end_if %>
              <div class="ps-3">
                <h6 class="fs-sm fw-semibold mb-0">$Title</h6>
                <% if Position %>
                  <span class="fs-xs text-muted">$Position</span>
                <% end_if %>
              </div>
            </figcaption>
          </figure>
        </div>
      <% end_loop %>
    </div>

    <!-- Pagination (bullets) -->
    <div class="swiper-pagination position-relative pt-1 pt-sm-3 mt-5"></div>
  </div>
</div>
