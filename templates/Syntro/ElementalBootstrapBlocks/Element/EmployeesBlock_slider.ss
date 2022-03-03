<div class="container-fluid">
  <div class="swiper mx-0 mb-md-n2 mb-xxl-n3" data-swiper-options='{
    "slidesPerView": 1,
    "spaceBetween": 8,
    "loop": true,
    "pagination": {
      "el": ".swiper-pagination",
      "clickable": true
    },
    "breakpoints": {
      "480": {
        "slidesPerView": 2
      },
      "700": {
        "slidesPerView": 3
      },
      "900": {
        "slidesPerView": 4
      },
      "1160": {
        "slidesPerView": 5
      },
      "1500": {
        "slidesPerView": 6
      }
    }
  }'>
    <div class="swiper-wrapper">
      <% loop Employees %>
        <!-- Item -->
        <div class="swiper-slide py-3">
          <div class="card card-body card-hover bg-light border-0 text-center mx-2">
            <img src="$Portrait.Fill(306,320).URL" class="d-block rounded-circle mx-auto mb-3" width="162" alt="$Title">
            <h5 class="fw-medium fs-lg mb-1">$Title</h5>
            <p class="fs-sm mb-3">$Position</p>

            <% if RenderSocialProfiles %>
              <div class="d-flex justify-content-center">
                <% if SMLLinkedin %>
                  <a href="{$SMLLinkedin}" class="btn btn-icon btn-outline-secondary btn-linkedin btn-sm me-2">
                    <i class="bx bxl-linkedin"></i>
                  </a>
                <% end_if %>
                <% if SMLFacebook %>
                  <a href="{$SMLFacebook}" class="btn btn-icon btn-outline-secondary btn-facebook btn-sm me-2">
                    <i class="bx bxl-facebook"></i>
                  </a>
                <% end_if %>
                <% if SMLTwitter %>
                  <a href="{$SMLTwitter}" class="btn btn-icon btn-outline-secondary btn-twitter btn-sm me-2">
                    <i class="bx bxl-twitter"></i>
                  </a>
                <% end_if %>
                <% if SMLInstagram %>
                  <a href="{$SMLInstagram}" class="btn btn-icon btn-outline-secondary btn-instagram btn-sm me-2">
                    <i class="bx bxl-instagram"></i>
                  </a>
                <% end_if %>
              </div>
            <% end_if %>
          </div>
        </div>
      <% end_loop %>
    </div>

    <!-- Pagination (bullets) -->
    <div class="swiper-pagination position-relative pt-3 mt-3"></div>
  </div>
</div>
