<?php

namespace Syntro\BlocksSilicon\Extension;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\FieldList;


/**
 * Extends an element with the option to manually switch its holder template,
 * allowing for diffrent background styles without polluting the styles list.
 *
 * set the '$holder_styles' array on a class or via yaml config:
 * holder_styles:
 *   default: 'Default white background'
 *   dark: 'Dark background'
 *   shape: 'A shape in the background'
 *
 * Setting this to non-empty array will display a select field in the 'settings'
 * tab.
 *
 * During templating, the element will look for the holder template:
 * 'DNADesign/Elemental/Layout/<$controller_template>_<$holder_style>
 * and ultimatively fall back to the regular template.
 *
 * @author Matthias Leutenegger <hello@syntro.ch>
 */
class MultiHolderExtension extends DataExtension
{
    /**
     * Database fields
     * @var array
     */
    private static $db = [
        'HolderStyle' => 'Varchar(255)',
    ];

    /**
     * CMS Fields
     * @return FieldList
     */
    public function updateCMSFields($fields)
    {
        $holder_styles = $this->getOwner()->config()->get('holder_styles');
        if ($holder_styles && count($holder_styles) > 0) {
            $styleDropdown = DropdownField::create('HolderStyle', _t(__CLASS__.'.HOLDERSTYLE', 'Holder Style variation'), $holder_styles);

            $fields->insertBefore($styleDropdown, 'ExtraClass');

            $styleDropdown->setEmptyString(_t(__CLASS__.'.DEFAULT', 'Default'));
        } else {
            $fields->removeByName('HolderStyle');
        }
        return $fields;
    }
}
