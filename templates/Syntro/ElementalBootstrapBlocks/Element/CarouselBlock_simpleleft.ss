<div class="container">
  <div class="row">


    <div class="col-lg-7 pt-lg-3 mb-4 mb-lg-0">
      <!-- Swiper tabs  -->
        <div class="swiper-tabs">
          <% loop Slides %>
            <!-- Item -->
            <div id="Carousel-e{$Up.ID}-{$ID}" class="swiper-tab<% if First %> active<% end_if %>">
              <img src="$Image.ScaleWidth(1600).URL" class="rounded-3" alt="$Image.Title">
            </div>
          <% end_loop %>
        </div>
    </div>
    <div class="col-xl-4 col-lg-5 offset-xl-1 d-flex flex-column">
      <!-- Swiper slider -->
      <div class="swiper mx-0 mb-md-n2 mb-xxl-n3" data-swiper-options='{
        "spaceBetween": 30,
        "loop": true,
        "tabs": true,
        "autoHeight": true,
        "navigation": {
          "prevEl": "#prev-industry",
          "nextEl": "#next-industry"
        }
      }'>
        <div class="swiper-wrapper text-center text-lg-start">
          <% loop Slides %>
            <!-- Item -->
            <div class="swiper-slide" data-swiper-tab="#Carousel-e{$Up.ID}-{$ID}">
              <h3 class="h4 mb-4">
                <% if ShowTitle %>
                  <% if Link %>
                    <% with Link %>
                      <a {$IDAttr} href="{$LinkURL}" class="nav-link justify-content-center justify-content-lg-start fw-bold p-0" {$TargetAttr}>
                        {$Up.Title}
                        <i class="bx bx-right-arrow-alt text-primary fs-3 fw-normal ms-2 mt-1"></i>
                      </a>
                    <% end_with %>
                  <% else %>
                    $Title
                  <% end_if %>
                <% end_if %>
              </h3>
              $Content
              <% if not ShowTitle && $Link %>
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
      </div>
      <!-- Slider controls (Prev / next buttons) -->
      <div class="d-flex justify-content-center justify-content-lg-start mt-2 mt-lg-auto">
        <button type="button" id="prev-industry" class="btn btn-prev btn-icon btn-sm me-2">
          <i class="bx bx-chevron-left"></i>
        </button>
        <button type="button" id="next-industry" class="btn btn-next btn-icon btn-sm ms-2">
          <i class="bx bx-chevron-right"></i>
        </button>
      </div>


    </div>
  </div>
</div>
