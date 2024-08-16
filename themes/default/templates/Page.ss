<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    $MetaTags(false)

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- CSS Stylesheets -->
    <link rel="stylesheet" href="_resources/themes/default/css/twentytwenty/twentytwenty.css">
    <link rel="stylesheet" href="_resources/themes/default/css/tempusdominus/css/tempusdominus-bootstrap-4.min.css">
    <link rel="stylesheet" href="_resources/themes/default/css/animate/animate.min.css">
    <link rel="stylesheet" href="_resources/themes/default/css/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="_resources/themes/default/css/style.css">
    <link rel="stylesheet" href="_resources/themes/default/css/bootstrap.min.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="_resources/themes/default/images/favicon.ico" />
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
    <% include Header %>
    
    <div class="header-height"></div>
    $Layout

    <% include Newsletter %>
    <% include Footer %>
    <% include BackToTop %>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>  <!-- Load jQuery first -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Plugins that depend on jQuery -->
    <script src="_resources/themes/default/javascript/twentytwenty/jquery.twentytwenty.js"></script>
    <script src="_resources/themes/default/javascript/easing/easing.min.js"></script>
    <script src="_resources/themes/default/javascript/wow/wow.min.js"></script>
    <script src="_resources/themes/default/javascript/waypoints/waypoints.min.js"></script>
    <script src="_resources/themes/default/javascript/owlcarousel/owl.carousel.min.js"></script>
    <script src="_resources/themes/default/javascript/tempusdominus/js/moment.min.js"></script>
    <script src="_resources/themes/default/javascript/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="_resources/themes/default/javascript/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script src="_resources/themes/default/javascript/twentytwenty/jquery.event.move.js"></script>
    
    <!-- Custom JS -->
    <script src="_resources/themes/default/javascript/main.js"></script>
</body>
</html>
