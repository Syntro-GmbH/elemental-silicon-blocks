<?php

namespace Syntro\BlocksSilicon\Extension;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;

/**
 * Adds an icon field to the tab
 *
 * @author Matthias Leutenegger <hello@syntro.ch>
 */
class TabIconExtension extends DataExtension
{
    /**
     * Database fields
     * @var array
     */
    private static $db = [
        'Icon' => 'Varchar',
    ];


    /**
     * updateCMSFields - description
     *
     * @param  FieldList $fields the fields of the owner
     * @return FieldList
     */
    public function updateCMSFields($fields)
    {
        $fields->removeByName([
            'Icon'
        ]);

        $iconField = TextField::create(
            'Icon',
            _t(__CLASS__ . '.ICONTITLE', 'Icon')
        );
        $iconField->setDescription(_t(
            __CLASS__ . '.ICONDESC',
            <<<HTML
                You can find available icons on the <a href="https://boxicons.com/" target="_blank">boxicons page</a>.
                Just click on the Item you want, select the <code>Font</code> tab and copy the second
                argument in the class attribute (eg. <code>bxl-unity</code>).
            HTML
        ));

        $fields->addFieldToTab(
            'Root.Main',
            $iconField,
            'Content'
        );
    }
}
