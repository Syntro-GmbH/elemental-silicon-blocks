<% if UseCarousel %>
  <div class="container">
    <div class="swiper" data-swiper-options='{
      "slidesPerView": 1,
      "spaceBetween": 24,
      "centerInsufficientSlides": true,
      "autoHeight": true,
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
                <img src="$Image.Fill(800,440).URL" class="rounded-3" alt="$Title">
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
              <img src="$Image.Fill(800,440).URL" class="rounded-3" alt="$Title">
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
<% end_if %>