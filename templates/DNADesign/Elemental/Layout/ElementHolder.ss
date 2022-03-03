<div>
  <section class="<% if SpacingBefore == 'small' %>pt-3 pt-lg-4<% else_if SpacingBefore == 'large' %>pt-4 pt-lg-5 mt-4 mt-lg-5<% else_if SpacingBefore == 'none' %><% else %>pt-4 pt-lg-5<% end_if %> <% if SpacingAfter == 'small' %>pb-3 pb-lg-4<% else_if SpacingAfter == 'large' %>pb-4 pb-lg-5 mb-4 mb-lg-5<% else_if SpacingAfter == 'none' %><% else %>pb-4 pb-lg-5<% end_if %> element $SimpleClassName.LowerCase <% if $StyleVariant %> $SimpleClassName.LowerCase--$StyleVariant $StyleVariant<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %>" id="$Anchor">
    $Element
  </section>
</div>
