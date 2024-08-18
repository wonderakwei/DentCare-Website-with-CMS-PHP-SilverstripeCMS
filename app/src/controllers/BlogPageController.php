<?php

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\ORM\ArrayList;
use SilverStripe\View\ArrayData;
use SilverStripe\ORM\DataObject;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\ORM\SS_List;
use SilverStripe\Blog\Model\BlogPost;

class BlogPageController extends PageController
{
    private static $allowed_actions = [];

    /**
     * Fetch related blog posts, excluding the current one.
     * Shuffles the posts and returns a limited list.
     *
     * @return ArrayList
     */
    public function getRelatedPosts()
    {
        $posts = BlogPost::get()->filter([
            'ID:not' => $this->ID // Exclude the current post
        ]);
        
        // Convert the DataList to an array to shuffle
        $postsArray = $posts->toArray();
        shuffle($postsArray);

        // Convert back to DataList or ArrayList and limit to 5 posts
        return new ArrayList(array_slice($postsArray, 0, 5));
    }
}
