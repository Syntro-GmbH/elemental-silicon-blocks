<div class="container">
  <div class="position-relative px-sm-5 mx-auto" style="max-width: 976px;">

    <!-- Prev button -->
    <button type="button" id="prev" class="btn btn-prev btn-icon btn-sm position-absolute top-50 translate-middle-y start-0 d-none d-sm-inline-flex mt-n4">
      <i class="bx bx-chevron-left"></i>
    </button>

    <!-- Next button -->
    <button type="button" id="next" class="btn btn-next btn-icon btn-sm position-absolute top-50 translate-middle-y end-0 d-none d-sm-inline-flex mt-n4">
      <i class="bx bx-chevron-right"></i>
    </button>

    <!-- Slider -->
    <div class="swiper swiper-nav-onhover pt-1 mx-md-2" data-swiper-options='{
      "spaceBetween": 12,
      "loop": true,
      "pagination": {
        "el": ".swiper-pagination",
        "clickable": true
      },
      "navigation": {
        "prevEl": "#prev",
        "nextEl": "#next"
      }
    }'>
      <div class="swiper-wrapper pt-4 pb-3">
        <% loop Reviews %>
          <!-- Item -->
          <div class="swiper-slide h-auto px-2">
            <figure class="card h-100 position-relative border-0 shadow-sm py-3 p-0 p-xxl-4 my-0">
              <span class="btn btn-icon btn-primary btn-lg shadow-primary pe-none position-absolute top-0 start-0 translate-middle-y ms-4 ms-xxl-5">
                <i class="bx bxs-quote-left"></i>
              </span>
              <blockquote class="card-body mt-2">
                <% if $Comment %>
                  $Comment
                <% else %>
                <i class="text-muted mb-2"><%t Syntro\BlocksSilicon\Model\Review.NOCOMMENT 'No Comment' %></i>
                <% end_if %>
              </blockquote>
              <figcaption class="card-footer d-flex align-items-center border-0 pt-0 mt-n2 mt-lg-0">
                <% if Portrait %>
                  <img src="$Portrait.Fill(100,100).URL" width="60" class="rounded-circle" alt="$Title">
                <% else %>
                  <svg xmlns="http://www.w3.org/2000/svg"  width="60" height="60" viewBox="0 0 24 24" style="fill: #cecdd3;transform: ;msFilter:;"><path d="M12 2C6.579 2 2 6.579 2 12s4.579 10 10 10 10-4.579 10-10S17.421 2 12 2zm0 5c1.727 0 3 1.272 3 3s-1.273 3-3 3c-1.726 0-3-1.272-3-3s1.274-3 3-3zm-5.106 9.772c.897-1.32 2.393-2.2 4.106-2.2h2c1.714 0 3.209.88 4.106 2.2C15.828 18.14 14.015 19 12 19s-3.828-.86-5.106-2.228z"></path></svg>
                <% end_if %>
                <div class="ps-3">
                  <h6 class="fw-semibold lh-base mb-0">$Title</h6>
                  <% if Position %>
                    <span class="fs-sm text-muted">$Position</span>
                  <% end_if %>
                </div>
              </figcaption>
            </figure>
          </div>
        <% end_loop %>
      </div>

      <!-- Pagination -->
      <div class="swiper-pagination position-relative pt-2 pt-sm-3 mt-4"></div>
    </div>
  </div>
</div>
