<div class="container">
  <div class="row">
    <div class="col-lg-3 col-md-4">
      $Content
      <!-- Slider controls (Prev / next buttons) -->
      <div class="d-flex justify-content-center justify-content-md-start pb-4 mb-2 pt-2 pt-md-4 mt-md-5">
        <button type="button" id="prev-testimonial" class="btn btn-prev btn-icon btn-sm me-2">
          <i class="bx bx-chevron-left"></i>
        </button>
        <button type="button" id="next-testimonial" class="btn btn-next btn-icon btn-sm ms-2">
          <i class="bx bx-chevron-right"></i>
        </button>
      </div>
    </div>
    <div class="col-lg-9 col-md-8">
      <div class="swiper mx-n2" data-swiper-options='{
        "slidesPerView": 1,
        "spaceBetween": 8,
        "loop": true,
        "navigation": {
          "prevEl": "#prev-testimonial",
          "nextEl": "#next-testimonial"
        },
        "breakpoints": {
          "500": {
            "slidesPerView": 2
          },
          "1000": {
            "slidesPerView": 2
          },
          "1200": {
            "slidesPerView": 3
          }
        }
      }'>
        <div class="swiper-wrapper">
          <% loop Reviews %>
            <!-- Item -->
            <div class="swiper-slide h-auto pt-4">
              <figure class="d-flex flex-column h-100 px-2 px-sm-0 mb-0 mx-2">
                <div class="card h-100 position-relative border-0 shadow-sm pt-4">
                  <span class="btn btn-icon btn-primary shadow-primary pe-none position-absolute top-0 start-0 translate-middle-y ms-4">
                    <i class="bx bxs-quote-left"></i>
                  </span>
                  <blockquote class="card-body pb-3 mb-0">
                  <p class="mb-0">
                    <% if $Comment %>
                      $Comment
                    <% else %>
                    <i class="text-muted"><%t Syntro\BlocksSilicon\Model\Review.NOCOMMENT 'No Comment' %></i>
                    <% end_if %>
                  </p>
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
                    <svg xmlns="http://www.w3.org/2000/svg"  width="48" height="48" viewBox="0 0 24 24" style="fill: #dddddd;transform: ;msFilter:;"><path d="M12 2C6.579 2 2 6.579 2 12s4.579 10 10 10 10-4.579 10-10S17.421 2 12 2zm0 5c1.727 0 3 1.272 3 3s-1.273 3-3 3c-1.726 0-3-1.272-3-3s1.274-3 3-3zm-5.106 9.772c.897-1.32 2.393-2.2 4.106-2.2h2c1.714 0 3.209.88 4.106 2.2C15.828 18.14 14.015 19 12 19s-3.828-.86-5.106-2.228z"></path></svg>
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
      </div>
    </div>
  </div>
</div>
