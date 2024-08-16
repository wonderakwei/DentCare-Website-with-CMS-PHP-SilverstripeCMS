<?php

namespace {

    use SilverStripe\Blog\Model\BlogPost;
    use SilverStripe\View\Requirements;

    class HomePageController extends PageController
    {

        public function init()
        {
        parent::init();

        }
        
        public function aboutPage(){
            $page =  AboutPage::get()->first();
            return $page;
        }

        public function BlogPosts()
        {
            return BlogPost::get();
        }
    }
}
