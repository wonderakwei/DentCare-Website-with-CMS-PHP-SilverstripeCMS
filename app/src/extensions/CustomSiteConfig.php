<?php

use SilverStripe\Assets\File;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\EmailField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Assets\Image;

class CustomSiteConfig extends DataExtension
{
    private static $db = array(
        "Email" => 'Varchar(200)',
        "PhoneNumber" => "Varchar(200)",
        "Address" => "Varchar",
        "FooterDescription" => "Varchar",
        "Facebook" => "Varchar",
        "Twitter" => "Varchar",
        "Instagram" => "Varchar",
    );

    private static $has_one = [
        "Logo" => Image::class
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab('Root.Main', EmailField::create('Email', 'Site Email'));
        $fields->addFieldToTab('Root.Main', TextField::create('PhoneNumber', 'Site Phone Numbers'));
        $fields->addFieldToTab('Root.Main', TextField::create('Address', 'Site Address'));
        $fields->addFieldToTab('Root.Main', TextField::create('FooterDescription', 'Site Description'));

        $fields->addFieldsToTab('Root.Social', array(
            TextField::create('Facebook', 'Facebook'),
            TextField::create('Twitter', 'Twitter'),
            TextField::create('Instagram', 'Instagram'),

        ));

        $fields->addFieldToTab('Root.Main', UploadField::create('Logo'));
        
    }
}
