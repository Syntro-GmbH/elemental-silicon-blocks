<section class="container mt-4 pt-lg-2">
  <!-- Page title + Layout switcher -->
  <div class="d-flex align-items-center justify-content-between mb-4 pb-1 pb-md-3">
    <h1 class="mb-0">$Title</h1>
    <%-- <div class="d-flex align-items-center ms-sm-4 ms-3">
      <a href="blog-list-with-sidebar.html" class="nav-link me-2 p-0">
        <i class="bx bx-list-ul fs-4"></i>
      </a>
      <a href="blog-grid-with-sidebar.html" class="nav-link p-0 active">
        <i class="bx bx-grid-alt fs-4"></i>
      </a>
    </div> --%>
  </div>
</section>
$ElementalArea
<section class="container mb-lg-5 pb-5">
  <div class="row">
    <div class="col-xl-9 col-lg-8">
      <div class="pe-xl-5">
        <% if $PaginatedList.Exists %>
          <div class="masonry-grid row row-cols-sm-2 row-cols-1 g-4">
            <% loop $PaginatedList %>
              <% include SilverStripe\\Blog\\PostSummary %>
            <% end_loop %>
          </div>
        <% else %>
          <p class="p-5 text-muted text-center"><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %>...</p>
        <% end_if %>
        <% with $PaginatedList %>
          <% include SilverStripe\\Blog\\Pagination %>
        <% end_with %>
      </div>
    </div>

    <!-- Sidebar (Offcanvas below lg breakpoint) -->
    <aside class="col-xl-3 col-lg-4">
      <div class="offcanvas offcanvas-end offcanvas-expand-lg" id="blog-sidebar" tabindex="-1">

        <!-- Header -->
        <div class="offcanvas-header border-bottom">
          <h3 class="offcanvas-title fs-lg">Sidebar</h3>
          <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
        </div>

        <!-- Body -->
        <div class="offcanvas-body">

          <!-- Search form -->
          <%-- <form class="input-group mb-4">
            <input type="text" placeholder="Search the blog..." class="form-control rounded pe-5">
            <i class='bx bx-search position-absolute top-50 end-0 translate-middle-y me-3 fs-lg zindex-5'></i>
          </form> --%>

          <!-- Categories -->
          <div class="card card-body mb-4">
            <h3 class="h5"><%t SilverStripe\\Blog\\Model\\Blog.Categories 'Categories' %></h3>
            <ul class="nav flex-column fs-sm">
              <li class="nav-item mb-1">
              <a href="$Link" class="nav-link py-1 px-0<% if not CurrentCategory %> active<% end_if %>"><%t SilverStripe\\Blog\\Model\\Blog.All 'All' %> <span class="fw-normal opacity-60 ms-1">($BlogPosts.count)</span></a>
              </li>

              <% loop Categories %>
                <li class="nav-item mb-1">
                  <a href="$Link" class="nav-link py-1 px-0<% if $Up.CurrentCategory.ID == $ID %> active<% end_if %>">$Title <span class="fw-normal opacity-60 ms-1">($BlogPosts.count)</span></a>
                </li>
              <% end_loop %>
            </ul>
          </div>

          <!-- Popular posts -->
          <%-- <div class="card card-body border-0 position-relative mb-4">
            <span class="position-absolute top-0 start-0 w-100 h-100 bg-gradient-primary opacity-10 rounded-3"></span>
            <div class="position-relative zindex-2">
              <h3 class="h5">Popular posts</h3>
              <ul class="list-unstyled mb-0">
                <li class="border-bottom pb-3 mb-3">
                  <h4 class="h6 mb-2">
                    <a href="#">5 Bad Landing Page Examples &amp; How We Would Fix Them</a>
                  </h4>
                  <div class="d-flex align-items-center text-muted pt-1">
                    <div class="fs-xs border-end pe-3 me-3">12 hours ago</div>
                    <div class="d-flex align-items-center me-3">
                      <i class="bx bx-like fs-base me-1"></i>
                      <span class="fs-xs">8</span>
                    </div>
                    <div class="d-flex align-items-center me-3">
                      <i class="bx bx-comment fs-base me-1"></i>
                      <span class="fs-xs">4</span>
                    </div>
                    <div class="d-flex align-items-center">
                      <i class="bx bx-share-alt fs-base me-1"></i>
                      <span class="fs-xs">2</span>
                    </div>
                  </div>
                </li>
                <li class="border-bottom pb-3 mb-3">
                  <h4 class="h6 mb-2">
                    <a href="#">How Agile is Your Forecasting Process?</a>
                  </h4>
                  <div class="d-flex align-items-center text-muted pt-1">
                    <div class="fs-xs border-end pe-3 me-3">Oct 9, 2021</div>
                    <div class="d-flex align-items-center me-3">
                      <i class="bx bx-like fs-base me-1"></i>
                      <span class="fs-xs">4</span>
                    </div>
                    <div class="d-flex align-items-center me-3">
                      <i class="bx bx-comment fs-base me-1"></i>
                      <span class="fs-xs">1</span>
                    </div>
                    <div class="d-flex align-items-center">
                      <i class="bx bx-share-alt fs-base me-1"></i>
                      <span class="fs-xs">0</span>
                    </div>
                  </div>
                </li>
                <li>
                  <h4 class="h6 mb-2">
                    <a href="#">Inclusive Marketing: Why and How Does it Work?</a>
                  </h4>
                  <div class="d-flex align-items-center text-muted pt-1">
                    <div class="fs-xs border-end pe-3 me-3">Sep 13, 2021</div>
                    <div class="d-flex align-items-center me-3">
                      <i class="bx bx-like fs-base me-1"></i>
                      <span class="fs-xs">5</span>
                    </div>
                    <div class="d-flex align-items-center me-3">
                      <i class="bx bx-comment fs-base me-1"></i>
                      <span class="fs-xs">2</span>
                    </div>
                    <div class="d-flex align-items-center">
                      <i class="bx bx-share-alt fs-base me-1"></i>
                      <span class="fs-xs">4</span>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div> --%>

          <!-- Tags -->
          <div class="card card-body mb-4">
            <h3 class="h5"><%t SilverStripe\\Blog\\Model\\Blog.Tags 'Tags' %></h3>
            <div class="d-flex flex-wrap">
              <% loop Tags %>
              <a href="$Link" class="btn btn-outline-secondary btn-sm px-3 my-1 me-2<% if $Up.CurrentTag.ID == $ID %> active<% end_if %>">#$Title</a>
              <% end_loop %>
            </div>
          </div>

          <!-- Follow Us -->
          <%-- <div class="card mb-4">
            <div class="card-body">
              <h5 class="mb-4">Follow Us</h5>
              <a href="#" class="btn btn-icon btn-sm btn-secondary btn-linkedin me-2 mb-2">
                <i class="bx bxl-linkedin"></i>
              </a>
              <a href="#" class="btn btn-icon btn-sm btn-secondary btn-facebook me-2 mb-2">
                <i class="bx bxl-facebook"></i>
              </a>
              <a href="#" class="btn btn-icon btn-sm btn-secondary btn-twitter me-2 mb-2">
                <i class="bx bxl-twitter"></i>
              </a>
              <a href="#" class="btn btn-icon btn-sm btn-secondary btn-instagram me-2 mb-2">
                <i class="bx bxl-instagram"></i>
              </a>
            </div>
          </div> --%>
        </div>
      </div>

    </aside>
  </div>
</section>
