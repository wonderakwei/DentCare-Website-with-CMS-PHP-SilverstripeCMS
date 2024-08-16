<?php


use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Control\Email\Email;

class ContactPageController extends PageController
{
    private static $allowed_actions = ['Form'];

    public function Form()
    {
        $fields = FieldList::create(
            TextField::create('Name')->setAttribute('placeholder', 'Your Name')->addExtraClass('form-control contact-input col-md-6 form-group'),
            EmailField::create('Email')->setAttribute('placeholder', 'Your Email')->addExtraClass('form-control contact-input col-md-6 form-group' ),
            TextareaField::create('Message')->setAttribute('placeholder', 'Your Message')->addExtraClass('form-control contact-input col-md-12 form-group')
        );
        
        $actions = FieldList::create(
            FormAction::create('submit', 'Submit')->addExtraClass('btn btn-primary col-md-12 form-group submitting')
        );
        

        $form = Form::create($this, 'Form', $fields, $actions);
        //$form->enableSpamProtection(); // Enable spam protection
        //$form->enableSecurityToken(); // Enable security token

        return $form;
    }

    public function submit($data, $form)
    {
        // Handle form submission logic here
        $email = Email::create();
        $email->setTo('your@email.com'); // Change to your email address
        $email->setFrom($data['Email']);
        $email->setSubject("Contact Message from {$data['Name']}");
        $email->setBody($data['Message']);
        $email->send();

        // You can also save form submission data to the database or perform other actions

        // Redirect back to the contact page with a success message
        return $this->redirectBack()->setStatusCode(201, 'Thank you for your message.');
    }
}
