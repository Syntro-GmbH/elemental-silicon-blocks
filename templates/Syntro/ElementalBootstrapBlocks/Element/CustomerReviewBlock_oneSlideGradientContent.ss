<div class="container">
  <div class="row">
    <div class="col-md-5">
      <div class="card h-100 border-0 overflow-hidden">
        <span class="bg-gradient-primary position-absolute top-0 start-0 w-100 h-100 opacity-10 d-none d-md-block"></span>
        <div class="card-body d-flex flex-column align-items-center justify-content-center position-relative zindex-2 p-0 pb-2 p-lg-4">
          <div class="p-lg-4">
            $Content
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-7">
      <div class="card border-0 shadow-sm p-4 p-xxl-5">
        <div class="d-flex justify-content-between pb-4 mb-2">
          <span class="btn btn-icon btn-primary btn-lg shadow-primary pe-none">
            <i class="bx bxs-quote-left"></i>
          </span>
          <div class="d-flex">
            <button type="button" id="testimonials-prev" class="btn btn-prev btn-icon btn-sm me-2">
              <i class="bx bx-chevron-left"></i>
            </button>
            <button type="button" id="testimonials-next" class="btn btn-next btn-icon btn-sm ms-2">
              <i class="bx bx-chevron-right"></i>
            </button>
          </div>
        </div>

        <!-- Slider -->
        <div class="swiper mx-0 mb-md-n2 mb-xxl-n3" data-swiper-options='{
          "spaceBetween": 24,
          "loop": true,
          "pagination": {
            "el": ".swiper-pagination",
            "clickable": true
          },
          "navigation": {
            "prevEl": "#testimonials-prev",
            "nextEl": "#testimonials-next"
          }
        }'>
          <div class="swiper-wrapper">
            <% loop Reviews %>
              <!-- Item -->
              <div class="swiper-slide h-auto">
                <figure class="card h-100 position-relative border-0 bg-transparent">
                  <blockquote class="card-body p-0 mb-0">
                    <% if $Comment %>
                      $Comment
                    <% else %>
                      <p><i class="text-muted"><%t Syntro\BlocksSilicon\Model\Review.NOCOMMENT 'No Comment' %></i></p>
                    <% end_if %>
                  </blockquote>
                  <figcaption class="card-footer border-0 d-flex align-items-center w-100 pb-2">
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
          <!-- Pagination (bullets) -->
          <div class="swiper-pagination position-relative mt-5"></div>
        </div>
      </div>
    </div>
  </div>

</div>
