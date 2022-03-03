<div class="container">
  <div class="row">
    <!-- Nav tabs -->
    <div class="col-12 col-md-4 col-lg-3">
      <ul class="nav nav-tabs flex-column" role="tablist">
        <% loop Tabs %>
          <li class="nav-item" role="presentation">
          <button class="nav-link w-100<% if First %> active<% end_if %>" id="Tabset-{$Up.ID}-{$ID}-tab" data-bs-toggle="tab" data-bs-target="#Tabset-{$Up.ID}-{$ID}" type="button" role="tab" aria-controls="Tabset-{$Up.ID}-{$ID}" aria-selected="true">
              <% if Icon %>
              <i class="bx $Icon fs-lg opacity-60 me-2"></i>
              <% end_if %>
              $Title
            </button>
          </li>
        <% end_loop %>
      </ul>
    </div>
    <!-- Tab panes -->
    <div class="col-12 col-md-8 col-lg-9">
      <div class="tab-content bg-secondary rounded-3 py-4">
        <% loop Tabs %>
        <div class="tab-pane fade<% if First %> show active<% end_if %>" id="Tabset-{$Up.ID}-{$ID}" role="tabpanel" aria-labelledby="Tabset-{$Up.ID}-{$ID}-tab">
            <div class="row align-items-center pb-3 pb-sm-4 pb-md-0 pt-3 pt-sm-4 pt-md-0 px-3 px-sm-4 px-lg-0">
              <% if Image %>
                <div class="col-lg-4 col-md-5 offset-lg-1 text-center text-md-start">
                  $Content
                </div>
                <div class="col-lg-6 col-md-7 mt-md-0 mt-3">
                  <img src="$Image.ScaleWidth(800).URL" class="d-block my-lg-3 mx-auto me-md-0 rounded-3" width="595" alt="$Image.Title">
                </div>
              <% else %>
                <div class="col-lg-10 offset-lg-1 text-center text-md-start">
                  $Content
                </div>
              <% end_if %>
            </div>
          </div>
        <% end_loop %>
      </div>
    </div>
  </div>
</div>
