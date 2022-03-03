<div class="container">
  <div class="accordion" id="accordion-{$ID}">

    <!-- Item -->
    <% loop AccordionItems %>
      <div class="accordion-item border-0 rounded-3 shadow-sm mb-3">
        <h3 class="accordion-header" id="accordion-{$Up.ID}-heading-{$ID}">
        <button class="accordion-button<% if First && Up.StartExpanded %><% else %> collapsed<% end_if %> shadow-none rounded-3" type="button" data-bs-toggle="collapse" data-bs-target="#accordion-{$Up.ID}-collapse-{$ID}" aria-expanded="false" aria-controls="accordion-{$Up.ID}-collapse-{$ID}">$Title</button>
        </h3>
      <div class="accordion-collapse collapse<% if First && Up.StartExpanded %> show<% end_if %>" id="accordion-{$Up.ID}-collapse-{$ID}" aria-labelledby="accordion-{$Up.ID}-heading-{$ID}" data-bs-parent="#accordion-{$Up.ID}">
          <div class="accordion-body pt-0">
            $Content
          </div>
        </div>
      </div>
    <% end_loop %>

  </div>
</div>
