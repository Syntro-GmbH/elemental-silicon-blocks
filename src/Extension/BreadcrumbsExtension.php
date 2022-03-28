<?php

namespace Syntro\BlocksSilicon\Extension;

use SilverStripe\Forms\CheckboxField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;

/**
 * Adds an option to the page to display breadcrumbs
 *
 * @author Matthias Leutenegger <hello@syntro.ch>
 */
class BreadcrumbsExtension extends DataExtension
{
    /**
     * Database fields
     * @var array
     */
    private static $db = [
        'ShowBreadCrumbs' => 'Boolean',
    ];

    /**
     * Add default values to database
     *  @var array
     */
    private static $defaults = [
        'ShowBreadCrumbs' => true
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
            'ShowBreadCrumbs'
        ]);

        $fields->insertAfter(
            'MenuTitle',
            CheckboxField::create(
                'ShowBreadCrumbs',
                _t(__CLASS__ . '.SHOWBREADCRUMBSTITLE', 'Show Breadcrumb navigation')
            )
        );
    }
}
