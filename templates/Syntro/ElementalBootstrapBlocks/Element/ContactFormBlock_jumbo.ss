<div class="container">
  <div class="bg-secondary rounded-3 py-5 px-3 px-sm-0">
    <div class="row justify-content-center py-lg-3 py-xl-4">
      <div class="col-xl-8 col-lg-9 col-md-10 col-sm-11">
        <% if ShowTitle || Content %>
          <div class="mb-4">
            <% if ShowTitle %>
              <h2 class="mb-4">$Title</h2>
            <% end_if %>
            $Content
          </div>
        <% end_if %>
        $Form
      </div>
    </div>
  </div>
</div>
