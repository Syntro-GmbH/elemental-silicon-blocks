<div class="position-relative py-lg-4 py-xl-5">

  <!-- Swiper tabs -->
  <div class="swiper-tabs position-absolute top-0 start-0 w-100 h-100">
    <%-- Image --%>
    <% loop Slides %>
      <div id="Carousel-e{$Up.ID}-{$ID}" class="jarallax position-absolute top-0 start-0 w-100 h-100 swiper-tab<% if First %> active<% end_if %>" data-jarallax data-speed="0.4">
        <span class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-35"></span>
        <div class="jarallax-img" style="background-image: url($Image.ScaleWidth(1600).URL);"></div>
      </div>
    <% end_loop %>
  </div>

  <!-- Swiper slider -->
  <div class="container position-relative zindex-5 py-5">
    <div class="row py-2 py-md-3">
      <div class="col-xl-5 col-lg-7 col-md-9">

        <!-- Slider controls (Prev / next) -->
        <div class="d-flex justify-content-center justify-content-md-start pb-3 mb-3">
          <button type="button" id="case-study-prev" class="btn btn-prev btn-icon btn-sm bg-white me-2">
            <i class="bx bx-chevron-left"></i>
          </button>
          <button type="button" id="case-study-next" class="btn btn-next btn-icon btn-sm bg-white ms-2">
            <i class="bx bx-chevron-right"></i>
          </button>
        </div>

        <!-- Card -->
        <div class="card bg-white shadow-sm p-3">
          <div class="card-body">
            <div class="swiper" data-swiper-options='{
              "spaceBetween": 30,
              "loop": true,
              "tabs": true,
              "autoplay": <% if Autoplay %>true<% else %>false<% end_if %>,
              "pagination": {
                "el": "#case-study-pagination",
                "clickable": true
              },
              "navigation": {
                "prevEl": "#case-study-prev",
                "nextEl": "#case-study-next"
              }
            }'>
              <div class="swiper-wrapper">

                <!-- Item -->
                <% loop Slides %>
                  <div class="swiper-slide" data-swiper-tab="#Carousel-e{$Up.ID}-{$ID}">
                    <% if ShowTitle %>
                      <h3 class="mb-2">$Title</h3>
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
            </div>
          </div>
        </div>

        <!-- Pagination (bullets) -->
        <div class="dark-mode pt-4 mt-3">
          <div id="case-study-pagination" class="swiper-pagination position-relative bottom-0"></div>
        </div>
      </div>
    </div>
  </div>
</div>
