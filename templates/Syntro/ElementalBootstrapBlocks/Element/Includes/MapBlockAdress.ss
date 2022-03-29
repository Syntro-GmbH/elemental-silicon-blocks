<% if AddAddress || AddEmail || AddPhone %>
  <ul class="list-unstyled pb-3 mb-0 mb-lg-3">
    <% if AddAddress %>
      <li class="d-flex mb-3">
        <i class="bx bx-map text-muted fs-xl mt-1 me-2"></i>
      $AddAddress (<a href="https://www.google.com/maps/dir/?api=1&destination=$AddAddress.URLATT" target="_blank" class=""><%t Syntro\ElementalBootstrapBlocks\Element\MapBlock.GetDirections 'Get Directions' %></a>)
      </li>
    <% end_if %>
    <% if AddPhone %>
      <li class="d-flex mb-3">
        <i class="bx bx-phone-call text-muted fs-xl mt-1 me-2"></i>
        $AddPhone
      </li>
    <% end_if %>
    <% if AddEmail %>
      <li class="d-flex mb-3">
        <i class="bx bx-envelope text-muted fs-xl mt-1 me-2"></i>
        $AddEmail
      </li>
    <% end_if %>
  </ul>
<% end_if %>
