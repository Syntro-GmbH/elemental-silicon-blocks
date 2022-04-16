<div class="container">
  <div class="row">
    <%-- Content Block --%>
    <div class="col-lg-4 text-center text-lg-start pb-3 pb-lg-0 mb-4 mb-lg-0">
      $OptionalContent
    </div>
    <div class="col-xl-7 col-lg-8 offset-xl-1">
      <div class="row row-cols-1 row-cols-md-2">
        <div class="col">
          <% loop Cards %>
            <div class="card card-hover bg-secondary border-0 mb-4">
              <div class="card-body d-flex align-items-start">
                <% if Image %>
                  <div class="flex-shrink-0 bg-light rounded-3 p-3">
                    <img src="$Image.Fill(30,30).URL" width="28" alt="$Title">
                  </div>
                <% end_if %>
                <div class="ps-4">
                  <% if ShowTitle %>
                    <h3 class="h5 pb-2 mb-1">$Title</h3>
                  <% end_if %>
                  $Content
                  <% if Link %>
                    <% with Link %>
                      <% if Up.Up.LinkStyle == 'btn-primary' %>
                        <% include Syntro/BlocksSilicon/Includes/CardLinks/stretchedPrimary %>
                      <% else %>
                        <% include Syntro/BlocksSilicon/Includes/CardLinks/stretchedLink %>
                      <% end_if %>
                    <% end_with %>
                  <% end_if %>
                </div>
              </div>
            </div>

            <% if $Middle %>
              </div>
              <div class="col">
            <% end_if %>
          <% end_loop %>
        </div>
      </div>
    </div>
  </div>
</div>
