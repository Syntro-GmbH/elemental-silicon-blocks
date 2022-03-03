<div class="container">
  <% if UseCarousel %>
    <div class="swiper mx-n2" data-swiper-options='{
      "slidesPerView": 1,
      "spaceBetween": 8,
      "centerInsufficientSlides": true,
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
          <div class="swiper-slide text-center h-auto pb-md-2 mb-3 mb-lg-4">
            <span class="btn btn-icon btn-secondary btn-xl rounded-circle pe-none p-3 mb-4">
            <i class="bx $Icon display-5 fw-normal card-icon text-primary"></i>
            </span>
            <% if ShowTitle %>
              <h3 class="h5 pb-1 mb-2">$Title</h3>
            <% end_if %>
            <div class="fs-sm mb-n2">$Content</div>
            <% if Link %>
              <% with Link %>
                <a {$IDAttr} href="{$LinkURL}" class="btn btn-link px-0" {$TargetAttr}>
                  {$Title}
                  <i class="bx bx-right-arrow-alt fs-xl ms-2"></i>
                </a>
              <% end_with %>
            <% end_if %>
          </div>
        <% end_loop %>
      </div>
      <!-- Pagination (bullets) -->
      <div class="swiper-pagination position-relative d-xl-none pt-3 mt-4"></div>
    </div>
  <% else %>
    <div class="row">
      <% loop IconBoxes %>
        <div class="col-lg-3 col-md-4 col-sm-6 text-center pb-md-2 mb-3 mb-lg-4">
          <span class="btn btn-icon btn-secondary btn-xl rounded-circle pe-none p-3 mb-4">
          <i class="bx $Icon display-5 fw-normal card-icon text-primary"></i>
          </span>
          <% if ShowTitle %>
            <h3 class="h5 pb-1 mb-2">$Title</h3>
          <% end_if %>
          <div class="fs-sm mb-n2">$Content</div>
          <% if Link %>
            <% with Link %>
              <a {$IDAttr} href="{$LinkURL}" class="btn btn-link px-0" {$TargetAttr}>
                {$Title}
                <i class="bx bx-right-arrow-alt fs-xl ms-2"></i>
              </a>
            <% end_with %>
          <% end_if %>
        </div>
      <% end_loop %>
    </div>
  <% end_if %>
</div>
