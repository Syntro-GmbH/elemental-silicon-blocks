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
          <div class="swiper-slide h-auto">
            <div class="card h-100 card-hover bg-light border-0">
              <div class="bg-secondary rounded-3 w-auto lh-1 p-2 mt-4 ms-4 me-auto">
                <i class="bx $Icon fs-2 text-gradient-primary" style="padding: .375rem;"></i>
              </div>
              <div class="card-body">
                <% if ShowTitle %>
                  <h3 class="h6">$Title</h3>
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
            </div>
          </div>
        <% end_loop %>
      </div>
      <!-- Pagination (bullets) -->
      <div class="swiper-pagination position-relative d-xl-none pt-3 mt-4"></div>
    </div>
  <% else %>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-2 g-lg-3 g-xl-4">
      <% loop IconBoxes %>
        <div class="col">
          <div class="card h-100 card-hover bg-light border-0">
            <div class="bg-secondary rounded-3 w-auto lh-1 p-2 mt-4 ms-4 me-auto">
              <i class="bx $Icon fs-2 text-gradient-primary" style="padding: .375rem;"></i>
            </div>
            <div class="card-body">
              <% if ShowTitle %>
                <h3 class="h6">$Title</h3>
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
          </div>
        </div>
      <% end_loop %>
    </div>
  <% end_if %>
</div>
