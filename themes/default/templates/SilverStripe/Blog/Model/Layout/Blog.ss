<div class="pager-header" style="background-image:url($CoverImage.getAbsoluteURL)">
	<div class="container">
		<div class="page-content">
			<h2>$Title</h2>
			<p>$Summary</p>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="$BaseHref">Home</a></li>
				<li class="breadcrumb-item active">$Title</li>
			</ol>
		</div>
	</div>
</div>
<main class="container">
    <br>
    <div class="row ">
        <div class="col-md-8">
            <% if $PaginatedList %>
                <% loop $PaginatedList %>
                <article class="blog-post">
                    <div class="card mb-3">
                        <img src="$FeaturedImage.Fill(600,250).URL" class="card-img-top" alt="blog-image">
                        <div class="card-body">
                            <h5 class="card-title">$Title</h5>
                            <p class="card-text">$Summary</p>
                            <p class="card-text"><a href="$Link" class="text-success">Read more</a></p>
                            <p class="card-text"><small class="text-muted">Last updated $PublishDate.Date</small></p>
                        </div>
                    </div> 
                </article> 
                <% end_loop %> 
            <% else %> 
                <div class="alert alert-success" role="alert">
                    Sorry, there is no any news available at the moment!
                </div>
            <% end_if %>
            <!-- pagination -->
            <% with $PaginatedList %>
                <% include Pagination %>
            <% end_with %>
            <br>
        </div>
        <div class="col-md-4  ">
            <% if $Categories %>
            <div class="p-4 shadow">
                <h4 class=" Text-dark">Categories</h4>
                <ul class="list-group list-group-flush">
                    <% loop $Categories %>
                    <li class="list-group-item"><a href="$Link" class="text-success">$Title ($BlogPosts.count)</a></li>
                    <% end_loop %>
                </ul>
            </div>
            <% end_if %>
            <br>
            <div class="p-4 shadow">
                <h4 class=" Text-dark">Related Posts</h4>
                <% if $PaginatedList %>
                    <% loop $PaginatedList.Sort("RAND()").Limit(5) %>
                        <a href="$Link">
                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row g-0">
                                <div class="col-md-4">
                                    <img src="$FeaturedImage.Fill(300,350).URL" class="img-fluid rounded-start" alt="blog-post">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                    <h5 class="card-title text-success">$Title.LimitWordCount(3)</h5>
                                    <p class="card-text"><small class="text-muted">Last updated $PublishDate.Date</small></p>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </a>
                    <% end_loop %>
                <% end_if %>
            </div>
        </div>
    </div>
</main>
