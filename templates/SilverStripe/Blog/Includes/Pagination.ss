<%-- NOTE: Before including this, you will need to wrap the include in a with block  --%>

<% if $MoreThanOnePage %>
  <div class="d-flex justify-content-center">
    <nav aria-label="Page navigation">
      <ul class="pagination pt-4 pt-lg-5">
        <% if $NotFirstPage %>
          <li class="page-item">
            <a href="{$PrevLink}" class="page-link">
              <i class="bx bx-chevron-left mx-n1"></i>
            </a>
          </li>
        <% end_if %>
        <li class="page-item disabled d-sm-none">
          <span class="page-link text-body">$CurrentPage / $TotalPages</span>
        </li>
        <% loop $PaginationSummary(4) %>
          <% if $CurrentBool %>
            <li class="page-item active d-none d-sm-block" aria-current="page">
              <span class="page-link">
                $PageNum
                <span class="visually-hidden">(current)</span>
              </span>
            </li>
          <% else %>
            <% if $Link %>
              <li class="page-item d-none d-sm-block">
              <a href="$Link" class="page-link">$PageNum</a>
              </li>
            <% else %>
              <span>...</span>
            <% end_if %>
          <% end_if %>
        <% end_loop %>
        <% if $NotLastPage %>
          <li class="page-item">
            <a href="$NextLink" class="page-link">
              <i class="bx bx-chevron-right mx-n1"></i>
            </a>
          </li>
        <% end_if %>
      </ul>
    </nav>
  </div>
<% end_if %>
