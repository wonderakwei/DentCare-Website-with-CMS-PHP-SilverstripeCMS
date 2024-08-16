<% if $MoreThanOnePage %>
    <nav aria-label="Page navigation example" style="margin-top: 10px;">
        <ul class="pagination justify-content-center">
            <% if $NotFirstPage %>
                <li class="page-item">
                    <a class="page-link text-success" href="$PrevLink" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            <% end_if %>
            <% loop $PaginationSummary %>
                <% if $Link %>
                    <li class="page-item" <% if $CurrentBool %>class="active"<% end_if %> ><a class="page-link text-success" href="$Link">$PageNum</a></li>
                <% else %>
                    <li class="page-item"><a class="page-link text-success" href="#">...</a></li>
                <% end_if %>
            <% end_loop %>
            <% if $NotLastPage %>
                <li class="page-item">
                    <a class="page-link text-success" href="$NextLink" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            <% end_if %>
        </ul>
    </nav>
<% end_if %>