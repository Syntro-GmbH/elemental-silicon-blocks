<?php

namespace Syntro\BlocksSilicon\Extension;

use SilverStripe\Core\Extension;
use SilverStripe\Forms\FieldList;
use Syntro\SilverstripeBootstrapForms\Forms\PhoneField;

/**
 * updates the phone field
 * @author Matthias Leutenegger
 */
class ContactFormExtension extends Extension
{

    /**
     * updateDefaultFormFields - adds some sugar for the frontend phone formatter
     *
     * @param  FieldList $fields the original fields
     * @return void
     */
    public function updateDefaultFormFields($fields)
    {
        /** @var PhoneField|null */
        $phoneField = $fields->dataFieldByName('phone');
        $phoneField->getName();
        if ($phoneField) {
            $phoneField
                ->setAttribute('data-phone-format', 'phone')
                ->setAttribute('data-phone-region-code', 'ch')
                ->setAttribute('placeholder', '+41 00 000 00 00');
        }
    }
}
