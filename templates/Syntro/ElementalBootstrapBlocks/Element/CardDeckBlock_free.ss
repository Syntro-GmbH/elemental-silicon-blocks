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
          <div class="swiper-slide">
            <% if Image %>
              <% if Link %>
                <% with Link %><a {$IDAttr} href="{$LinkURL}" {$TargetAttr}><% end_with %>
              <% end_if %>
              <% with $ImageWithRatio.ScaleWidth(800) %>
                <img src="$URL" width="{$Width}" height="{$height}" class="rounded-3" alt="$Up.Title">
              <% end_with %>
              <% if Link %>
                </a>
              <% end_if %>
            <% end_if %>
            <div class="pt-4">
              <% if $ShowTitle %>
                <h3 class="h4">$Title</h3>
              <% end_if %>
              $Content
            </div>
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
        <% end_loop %>
      </div>
      <!-- Pagination (bullets) -->
      <div class="swiper-pagination position-relative mt-5<% if Cards.count <= 3 %> d-lg-none<% end_if %>"></div>

    </div>
  </div>
<% else %>
  <div class="container">
    <div class="row justify-content-center my-n3">
      <% loop Cards %>
        <div class="col-12 col-md-6 col-lg-4 my-3">
          <% if Image %>
            <% if Link %>
              <% with Link %><a {$IDAttr} href="{$LinkURL}" {$TargetAttr}><% end_with %>
            <% end_if %>
            <% with $ImageWithRatio.ScaleWidth(800) %>
              <img src="$URL" width="{$Width}" height="{$height}" class="rounded-3" alt="$Up.Title">
            <% end_with %>
            <% if Link %>
              </a>
            <% end_if %>
          <% end_if %>
          <div class="pt-4">
            <% if $ShowTitle %>
              <h3 class="h4">$Title</h3>
            <% end_if %>
            $Content
          </div>
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
      <% end_loop %>
    </div>
  </div>
<% end_if %>
