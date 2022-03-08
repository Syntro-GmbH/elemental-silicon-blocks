<div class="container">
  <% if UseCarousel %>
    <div class="swiper mx-n2" data-swiper-options='{
      "slidesPerView": 1,
      "spaceBetween": 8,
      "centerInsufficientSlides": true,
      "autoplay": <% if UseCarouselAutoplay %>true<% else %>false<% end_if %>,
      "pagination": {
        "el": ".swiper-pagination",
        "clickable": true
      },
      "breakpoints": {
        "500": {
          "slidesPerView": 2
        },
        "800": {
          "slidesPerView": 3
        },
        "1200": {
          "slidesPerView": 4
        }
      }
    }'>
      <div class="swiper-wrapper">
        <% loop IconBoxes %>
          <!-- Item -->
          <div class="swiper-slide h-auto py-3">
            <div class="card h-100 card-body card-hover mx-2">
              <i class="bx $Icon display-5 fw-normal card-icon" style="color: #b4b7c9;"></i>
              <% if $ShowTitle %>
              <h3 class="h5 pt-3 pb-1 <% if Content %>mb-2<% else %>mb-0<% end_if %>">$Title</h3>
              <% end_if %>
              <% if $Content %>
              <div class="mb-n2">$Content</div>
              <% end_if %>
              <% if Link %>
                <% with Link %>
                  <div class="d-flex justify-content-end">
                    <a {$IDAttr} href="{$LinkURL}" class="btn btn-link px-0" {$TargetAttr}>
                      {$Title}
                      <i class="bx bx-right-arrow-alt fs-xl ms-2"></i>
                    </a>
                  </div>
                <% end_with %>
              <% end_if %>
            </div>
          </div>
        <% end_loop %>
      </div>
      <!-- Pagination (bullets) -->
      <div class="swiper-pagination position-relative d-xl-none pt-3 mt-4"></div>
    </div>
  <% else %>
    <div class="row align-items-stretch mb-n3 mt-n2">
      <% loop IconBoxes %>
        <!-- Item -->
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-3 mt-2">
          <div class="card h-100 card-body card-hover">
            <i class="bx $Icon display-5 fw-normal card-icon" style="color: #b4b7c9;"></i>
            <% if $ShowTitle %>
            <h3 class="h5 pt-3 pb-1 <% if Content %>mb-2<% else %>mb-0<% end_if %>">$Title</h3>
            <% end_if %>
            <% if $Content %>
            <div class="mb-n2">$Content</div>
            <% end_if %>
            <% if Link %>
              <% with Link %>
                <div class="d-flex justify-content-end mt-2">
                  <a {$IDAttr} href="{$LinkURL}" class="btn btn-link px-0" {$TargetAttr}>
                    {$Title}
                    <i class="bx bx-right-arrow-alt fs-xl ms-2"></i>
                  </a>
                </div>
              <% end_with %>
            <% end_if %>
          </div>
        </div>
      <% end_loop %>
    </div>
  <% end_if %>
</div>
