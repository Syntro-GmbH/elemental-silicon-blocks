<div class="container">
  <div class="bg-light position-relative border rounded-3 shadow-sm py-5">
    <span class="position-absolute top-0 start-0 w-100 h-100 rounded-3 bg-faded-light"></span>
    <div class="row position-relative zindex-3 py-lg-4">
        <div class="col-12">
            <% if $ShowTitle %>
              <h2>$Title</h2>
            <% end_if %>
            <% if $HTML %>
                $HTML
            <% end_if %>
        </div>
    </div>
  </div>
</div>
