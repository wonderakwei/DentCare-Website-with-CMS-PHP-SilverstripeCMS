<ul id="mainmenu" class="navbar-nav ms-auto py-0">
    <% loop $Menu(1) %>
        <% if $Children %>
        <li class="nav-item dropdown $LinkingMode">
            <a href="$Link" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">$MenuTitle.XML</a>
            <ul class="dropdown-menu m-0">
                <% loop $Children %>
                <li><a href="$Link" class="dropdown-item">$MenuTitle.XML</a></li>
                <% end_loop %>
            </ul>
        </li>
        <% else %>
        <li class="nav-item $LinkingMode"><a href="$Link" class="nav-link">$MenuTitle.XML</a></li>
        <% end_if %>
    <% end_loop %>
</ul>
