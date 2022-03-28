<div class="container">




      <% if PostsInReel.count %>
        <!-- Blog posts slider -->
        <div class="swiper swiper-nav-onhover mx-n2" data-swiper-options='{
          "slidesPerView": 1,
          "spaceBetween": 8,
          "centerInsufficientSlides": true,
          "pagination": {
            "el": ".swiper-pagination",
            "clickable": true
          },
          "breakpoints": {
            "0": {
              "slidesPerView": 1
            },
            "560": {
              "slidesPerView": 2
            },
            "992": {
              "slidesPerView": 3
            }
          }
        }'>
          <div class="swiper-wrapper">
            <% loop PostsInReel %>
              <!-- Item -->
              <div class="swiper-slide h-auto py-3">
                <article class="card p-md-3 p-2 border-0 shadow-sm card-hover-primary h-100 mx-2">
                  <div class="card-body pb-0">
                    <div class="d-flex align-items-center justify-content-between mb-3">
                      <span><% include SilverStripe\\Blog\\PostTags %></span>
                      <span class="fs-sm text-muted">$PublishDate.Format(d. MMM YYYY )</span>
                    </div>
                    <h3 class="h4">
                    <a href="$Link" class="stretched-link">$Title</a>
                    </h3>
                    <% if $Summary %>
                      $Summary
                    <% else %>
                    <p class="mb-0">$ElementalArea.forTemplate.LimitSentences(2)</p>
                    <% end_if %>
                  </div>
                  <div class="card-footer d-flex align-items-center py-4 text-muted border-top-0">
                    <%-- <div class="d-flex align-items-center me-3">
                      <i class="bx bx-like fs-lg me-1"></i>
                      <span class="fs-sm">2</span>
                    </div>
                    <div class="d-flex align-items-center me-3">
                      <i class="bx bx-comment fs-lg me-1"></i>
                      <span class="fs-sm">0</span>
                    </div>
                    <div class="d-flex align-items-center">
                      <i class="bx bx-share-alt fs-lg me-1"></i>
                      <span class="fs-sm">3</span>
                    </div> --%>
                  </div>
                </article>
              </div>
            <% end_loop %>
          </div>
          <!-- Pagination (bullets) -->
          <div class="swiper-pagination position-relative pt-2 pt-sm-3 mt-4"></div>
        </div>
      <% else %>
        <p class="p-5 text-muted text-center opacity-70"><i class='bx bx-sad'></i> <%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %>...</p>
      <% end_if %>

</div>
