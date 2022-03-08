<div class="container">
  <div class="steps steps-sm">
    <% loop Steps %>
      <div class="step">
        <div class="step-number">
        <div class="step-number-inner">$Pos</div>
        </div>
        <div class="step-body">
          <% if ShowTitle %>
            <h4 class="mb-2">$Title</h4>
          <% end_if %>
          <div class="mb-0">$Content</div>
        </div>
      </div>
    <% end_loop %>
  </div>
</div>
