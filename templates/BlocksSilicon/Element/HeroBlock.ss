<div class="position-relative overflow-hidden">
  <!-- Image -->
  <div class="container-fluid position-relative position-lg-absolute top-0 start-0 h-100">
    <div class="row h-100 me-n4 me-n2">
      <div class="col-lg-7 position-relative">
        <div class="d-none d-sm-block d-lg-none" style="height: 400px;"></div>
        <div class="d-sm-none" style="height: 300px;"></div>
        <div class="jarallax position-absolute top-0 start-0 w-100 h-100 rounded-3 rounded-start-0 overflow-hidden" data-jarallax="true" data-speed="0.5">
        <div class="jarallax-img" style="background-image: url({$Image.ScaleMaxWidth(1800).URL});"></div>
        </div>
      </div>
    </div>
  </div>

  <div class="container position-relative zindex-5 pt-lg-5 px-0 px-lg-3">
    <div class="row pt-lg-5 mx-n4 mx-lg-n3">
      <div class="col-xl-6 col-lg-7 offset-lg-5 offset-xl-6 pb-5">

        <!-- Card -->
        <div class="card bg-dark border-light overflow-hidden py-4 px-2 p-sm-4">
          <span class="position-absolute top-0 start-0 w-100 h-100" style="background-color: rgba(255,255,255,.05);"></span>
          <div class="card-body position-relative zindex-5">
            <p class="fs-xl fw-bold text-primary text-uppercase mb-3">$Subtitle</p>
            <h1 class="display-5 text-light pb-3 mb-3">$Title</h1>
            <div class="fs-lg text-light opacity-70 <%-- mb-5 --%>">
              $HTML
            </div>
            <%-- <div class="d-flex flex-column flex-sm-row">
              <a href="#" class="btn btn-primary shadow-primary btn-lg mb-3 mb-sm-0 me-sm-4">Get started</a>
              <a href="#" class="btn btn-outline-light btn-lg">
                Who we are
                <i class="bx bx-right-arrow-alt fs-4 lh-1 ms-2 me-n1"></i>
              </a>
            </div> --%>
          </div>
        </div>
      </div>
      <div class="col-xxl-3 col-lg-4 offset-lg-8 offset-xxl-9 pt-lg-5 mt-xxl-5">

        <!-- Contacts (List) -->
        <%-- <ul class="list-unstyled mb-0 px-4 px-lg-0">
          <li class="d-flex align-items-center pb-1 mb-2">
            <i class="bx bx-map fs-xl text-primary me-2"></i>
            6391 Elgin St. Celina, Delaware 10299
          </li>
          <li class="d-flex align-items-center pb-1 mb-2">
            <i class="bx bx-envelope fs-xl text-primary me-2"></i>
            <a href="mailto:email@example.com" class="nav-link fw-normal p-0">email@example.com</a>
          </li>
          <li class="d-flex align-items-center pb-1 mb-2">
            <i class="bx bx-phone-call fs-xl text-primary me-2"></i>
            <a href="tel:4065550120" class="nav-link fw-normal p-0">(406) 555-0120</a>
          </li>
        </ul> --%>
      </div>
    </div>
  </div>
</div>