<% if UseCarousel %>
  <div class="container">
    <div class="swiper" data-swiper-options='{
      "slidesPerView": 1,
      "spaceBetween": 24,
      "centerInsufficientSlides": true,
      "autoHeight": true,
      "autoplay": <% if UseCarouselAutoplay %>true<% else %>false<% end_if %>,
      "pagination": {
        "el": ".swiper-pagination",
        "clickable": true
      },
      "breakpoints": {
        "500": {
          "slidesPerView": 2
        },
        "991": {
          "slidesPerView": 3
        }
      }
    }'>
      <div class="swiper-wrapper">
        <% loop Cards %>
          <div class="swiper-slide card h-100">
            <% if Image %>
              <% if Link %>
                <% with Link %><a {$IDAttr} href="{$LinkURL}" {$TargetAttr}><% end_with %>
              <% end_if %>
              <% with $ImageWithRatio.ScaleWidth(800) %>
                <img src="$URL" width="{$Width}" height="{$height}" class="card-img-top" alt="$Up.Title">
              <% end_with %>
              <% if Link %>
                </a>
              <% end_if %>
            <% end_if %>
            <div class="card-body">
              <% if $ShowTitle %>
                <h3 class="h4 card-title">$Title</h3>
              <% end_if %>
              <div class="card-text fs-sm">
                $Content
                <% if Link %>
                  <% with Link %>
                    <% if Up.Up.LinkStyle == 'btn-primary' %>
                      <% include Syntro/BlocksSilicon/Includes/CardLinks/primary %>
                    <% else %>
                      <% include Syntro/BlocksSilicon/Includes/CardLinks/link %>
                    <% end_if %>
                  <% end_with %>
                <% end_if %>
              </div>
            </div>
          </div>
        <% end_loop %>
      </div>
      <!-- Pagination (bullets) -->
      <div class="swiper-pagination position-relative mt-5<% if Cards.count <= 3 %> d-lg-none<% end_if %>"></div>

    </div>
  </div>
<% else %>
  <div class="container">
    <div class="row justify-content-center align-items-stretch my-n3">
      <% loop Cards %>
        <div class="col-12 col-md-6 col-lg-4 my-3">
          <div class="card h-100">
            <% if Image %>
              <% if Link %>
                <% with Link %><a {$IDAttr} href="{$LinkURL}" {$TargetAttr}><% end_with %>
              <% end_if %>
              <% with $ImageWithRatio.ScaleWidth(800) %>
                <img src="$URL" width="{$Width}" height="{$height}" class="card-img-top" alt="$Up.Title">
              <% end_with %>
              <% if Link %>
                </a>
              <% end_if %>
            <% end_if %>
            <div class="card-body">
              <% if $ShowTitle %>
                <h3 class="h4 card-title">$Title</h3>
              <% end_if %>
              <div class="card-text fs-sm">
                $Content
                <% if Link %>
                  <% with Link %>
                    <% if Up.Up.LinkStyle == 'btn-primary' %>
                      <% include Syntro/BlocksSilicon/Includes/CardLinks/primary %>
                    <% else %>
                      <% include Syntro/BlocksSilicon/Includes/CardLinks/link %>
                    <% end_if %>
                  <% end_with %>
                <% end_if %>
              </div>
            </div>
          </div>
        </div>
      <% end_loop %>
    </div>
  </div>
<% end_if %>
