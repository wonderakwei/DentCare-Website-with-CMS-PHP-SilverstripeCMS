<?php

namespace App\Controllers;

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\CMS\Model\SiteTree;

class MyPageController extends ContentController
{
    private static $allowed_actions = [];

    protected function init()
    {
        parent::init();

        // Get pages from the CMS
        $homePage = SiteTree::get()->filter('URLSegment', 'home')->first();
        $aboutUsPage = SiteTree::get()->filter('URLSegment', 'about-us')->first();
        $servicePage = SiteTree::get()->filter('URLSegment', 'services')->first();
        $blogPage = SiteTree::get()->filter('URLSegment', 'blog')->first();
        $contactUsPage = SiteTree::get()->filter('URLSegment', 'contact-us')->first();

        // Set variables for use in templates
        $this->getResponse()->addHeader('Content-Type', 'text/html; charset=UTF-8');
        $this->customise([
            'HomePage' => $homePage,
            'AboutUsPage' => $aboutUsPage,
            'ServicePage' => $servicePage,
            'BlogPage' => $blogPage,
            'ContactUsPage' => $contactUsPage
        ]);
    }
}
