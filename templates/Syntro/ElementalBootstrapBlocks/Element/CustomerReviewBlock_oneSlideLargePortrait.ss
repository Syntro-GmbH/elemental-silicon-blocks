<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="card border-0 shadow-sm p-4 p-xxl-5 ms-xxl-5">

        <!-- Slider prev/next buttons + Quotation mark -->
        <div class="d-flex justify-content-between pb-4 mb-2">
          <span class="btn btn-icon btn-primary btn-lg shadow-primary pe-none">
            <i class="bx bxs-quote-left"></i>
          </span>
          <div class="d-flex">
            <button type="button" id="prev2" class="btn btn-prev btn-icon btn-sm me-2">
              <i class="bx bx-chevron-left"></i>
            </button>
            <button type="button" id="next2" class="btn btn-next btn-icon btn-sm ms-2">
              <i class="bx bx-chevron-right"></i>
            </button>
          </div>
        </div>

        <!-- Slider -->
        <div class="swiper mx-0 mb-md-n2 mb-xxl-n3" data-swiper-options='{
          "spaceBetween": 24,
          "loop": true,
          "tabs": true,
          "pagination": {
            "el": ".swiper-pagination",
            "clickable": true
          },
          "navigation": {
            "prevEl": "#prev2",
            "nextEl": "#next2"
          }
        }'>
          <div class="swiper-wrapper">
            <% loop Reviews %>
              <!-- Item -->
              <div class="swiper-slide h-auto" data-swiper-tab="#CustomerReviews-e{$Up.ID}-{$ID}">
                <figure class="card h-100 position-relative border-0 bg-transparent">
                  <blockquote class="card-body p-0 mb-0">
                    <% if $Comment %>
                      $Comment
                    <% else %>
                      <i class="text-muted"><%t Syntro\BlocksSilicon\Model\Review.NOCOMMENT 'No Comment' %></i>
                    <% end_if %>
                  </blockquote>
                  <figcaption class="card-footer border-0 d-sm-flex d-md-none w-100 pb-2">
                    <div class="d-flex align-items-center border-end-sm pe-sm-4 me-sm-2">
                      <% if Portrait %>
                        <img src="$Portrait.Fill(100,100).URL" width="48" class="rounded-circle" alt="$Title">
                      <% else %>
                        <svg xmlns="http://www.w3.org/2000/svg"  width="48" height="48" viewBox="0 0 24 24" style="fill: #cecdd3;transform: ;msFilter:;"><path d="M12 2C6.579 2 2 6.579 2 12s4.579 10 10 10 10-4.579 10-10S17.421 2 12 2zm0 5c1.727 0 3 1.272 3 3s-1.273 3-3 3c-1.726 0-3-1.272-3-3s1.274-3 3-3zm-5.106 9.772c.897-1.32 2.393-2.2 4.106-2.2h2c1.714 0 3.209.88 4.106 2.2C15.828 18.14 14.015 19 12 19s-3.828-.86-5.106-2.228z"></path></svg>
                      <% end_if %>
                      <div class="ps-3">
                        <h5 class="fw-semibold lh-base mb-0">$Title</h5>
                        <% if Position %>
                          <span class="fs-sm text-muted">$Position</span>
                        <% end_if %>
                      </div>
                    </div>
                    <%-- <img src="assets/img/brands/01.svg" width="160" class="d-block mt-2 ms-5 mt-sm-0 ms-sm-0" alt="Company logo"> --%>
                  </figcaption>
                </figure>
              </div>
            <% end_loop %>
          </div>

          <!-- Pagination (bullets) -->
          <div class="swiper-pagination position-relative pt-3 mt-4 d-none d-md-flex"></div>
        </div>
      </div>
    </div>
    <div class="col-md-4 d-none d-md-block">

      <!-- Swiper tabs (Author images) -->
      <div class="swiper-tabs">
        <% loop Reviews %>
          <!-- Author 1 image -->
          <div id="CustomerReviews-e{$Up.ID}-{$ID}" class="card bg-transparent border-0 swiper-tab<% if First %> active<% end_if %>">
            <div class="card-body p-0 rounded-3 bg-size-cover bg-repeat-0 bg-position-top-center" style="background-image: url(<% if Portrait %>$Portrait.ScaleWidth(600).URL<% else %>$resourceURL('syntro/blocks-silicon:client/img/user-placeholder.png')<% end_if %>);"></div>
            <div class="card-footer d-flex w-100 border-0 pb-0">
              <%-- <img src="assets/img/brands/01.svg" width="160" class="d-none d-xl-block" alt="Company logo"> --%>
              <div class="">
                <h5 class="fw-semibold lh-base mb-0">$Title</h5>
                <% if Position %>
                  <span class="fs-sm text-muted">$Position</span>
                <% end_if %>
              </div>
            </div>
          </div>
        <% end_loop %>
      </div>
    </div>
  </div>

</div>