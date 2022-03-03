<div class="position-relative">
  <!-- Swiper tabs -->
  <div class="swiper-tabs position-md-absolute top-0 end-0 w-md-50 h-100">
    <% loop Slides %>
      <div id="Carousel-e{$Up.ID}-{$ID}" class="swiper-tab position-md-absolute w-100 h-100 bg-position-center bg-repeat-0 bg-size-cover<% if First %> active<% end_if %>" style="background-image: url($Image.ScaleWidth(1000).URL);">
        <div class="ratio ratio-1x1"></div>
      </div>
    <% end_loop %>
  </div>

  <div class="container pt-1 pt-lg-2">
    <div class="row">
      <div class="col-lg-5 col-md-6">

        <!-- Project description (Slider) -->
        <div class="d-none d-lg-block" style="height: 160px;"></div>
        <div class="d-none d-md-block d-lg-none" style="height: 80px;"></div>
        <div class="swiper pt-4 pt-md-0" data-swiper-options='{
          "spaceBetween": 30,
          "loop": true,
          "tabs": true,
          "pagination": {
            "el": ".swiper-pagination",
            "type": "fraction"
          },
          "navigation": {
            "prevEl": ".btn-prev",
            "nextEl": ".btn-next"
          }
        }'>
          <div class="swiper-wrapper">
            <% loop Slides %>
              <!-- Item -->
              <div class="swiper-slide" data-swiper-tab="#Carousel-e{$Up.ID}-{$ID}">
                <% if ShowTitle %>
                  <h3 class="h1 mb-4">$Title</h3>
                <% end_if %>
                $Content
                <% if $Link %>
                  <% with Link %>
                    <a {$IDAttr} href="{$LinkURL}" class="btn btn-primary" {$TargetAttr}>
                      {$Title}
                      <i class="bx bx-right-arrow-alt fs-xl ms-2"></i>
                    </a>
                  <% end_with %>
                <% end_if %>
              </div>
            <% end_loop %>
          </div>

          <div class="d-none d-lg-block" style="height: 160px;"></div>
          <div class="d-none d-md-block d-lg-none" style="height: 80px;"></div>
          <div class="d-md-none" style="height: 40px;"></div>

          <!-- Prev / Next buttons + Counter -->
          <div class="d-flex align-items-center ps-2 pb-5">
            <button type="button" class="btn btn-prev btn-icon btn-sm position-static">
              <i class="bx bx-chevron-left"></i>
            </button>
            <div class="swiper-pagination position-static w-auto mx-3" style="min-width: 30px;"></div>
            <button type="button" class="btn btn-next btn-icon btn-sm position-static">
              <i class="bx bx-chevron-right"></i>
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
