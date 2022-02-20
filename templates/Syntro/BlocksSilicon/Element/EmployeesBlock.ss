<div class="container">
  <div class="row justify-content-center row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">
    <% loop Employees %>
      <!-- Item -->
          <div class="col">
            <div class="card card-hover border-0 bg-transparent">
              <div class="position-relative">
                <img src="$Portrait.Fill(612,640).URL" class="rounded-3" alt="$Title">
                <% if RenderSocialProfiles %>
                  <div class="card-img-overlay d-flex flex-column align-items-center justify-content-center rounded-3">
                    <span class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-25 rounded-3"></span>
                    <div class="position-relative d-flex zindex-2">
                      <% if SMLLinkedin %>
                        <a href="{$SMLLinkedin}" class="btn btn-icon btn-secondary btn-linkedin btn-sm bg-white me-2">
                          <i class="bx bxl-linkedin"></i>
                        </a>
                      <% end_if %>
                      <% if SMLFacebook %>
                        <a href="{$SMLFacebook}" class="btn btn-icon btn-secondary btn-facebook btn-sm bg-white me-2">
                          <i class="bx bxl-facebook"></i>
                        </a>
                      <% end_if %>
                      <% if SMLTwitter %>
                        <a href="{$SMLTwitter}" class="btn btn-icon btn-secondary btn-twitter btn-sm bg-white me-2">
                          <i class="bx bxl-twitter"></i>
                        </a>
                      <% end_if %>
                      <% if SMLInstagram %>
                        <a href="{$SMLInstagram}" class="btn btn-icon btn-secondary btn-instagram btn-sm bg-white me-2">
                          <i class="bx bxl-instagram"></i>
                        </a>
                      <% end_if %>
                    </div>
                  </div>
                <% end_if %>
              </div>
              <div class="card-body text-center p-3">
                <h3 class="fs-lg fw-semibold pt-1 mb-2">$Title</h3>
              <p class="fs-sm mb-0">$Position</p>
              </div>
            </div>
          </div>
    <% end_loop %>
  </div>
</div>
