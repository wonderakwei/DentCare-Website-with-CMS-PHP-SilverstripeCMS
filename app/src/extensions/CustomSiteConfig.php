<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\ORM\DataExtension;

class CustomSiteConfig extends DataExtension
{
    private static $db = [
        'Email' => 'Varchar(200)',
        'PhoneNumber' => 'Varchar(200)',
        'Address' => 'Varchar',
        'FooterDescription' => 'Text',
        'Facebook' => 'Varchar',
        'Twitter' => 'Varchar',
        'Instagram' => 'Varchar',
        'LinkedIn' => 'Varchar', // Added LinkedIn for completeness
        'OpeningHours' => 'Text'
    ];

    private static $has_one = [
        'Logo' => Image::class
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab('Root.Main', EmailField::create('Email', 'Site Email'));
        $fields->addFieldToTab('Root.Main', TextField::create('PhoneNumber', 'Site Phone Number'));
        $fields->addFieldToTab('Root.Main', TextField::create('Address', 'Site Address'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('FooterDescription', 'Footer Description'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('OpeningHours', 'Opening Hours'));

        $fields->addFieldsToTab('Root.Social', [
            TextField::create('Facebook', 'Facebook'),
            TextField::create('Twitter', 'Twitter'),
            TextField::create('Instagram', 'Instagram'),
            TextField::create('LinkedIn', 'LinkedIn'), 
        ]);

        $fields->addFieldToTab('Root.Main', UploadField::create('Logo', 'Site Logo'));
    }
}
