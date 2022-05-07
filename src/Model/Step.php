<?php

namespace Syntro\BlocksSilicon\Model;

use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Syntro\SilverStripeElementalBaseitem\Model\BaseItem;
use gorriecoe\Link\Models\Link;
use gorriecoe\LinkField\LinkField;
use Syntro\BlocksSilicon\Element\MultiStepBlock;

/**
 * A step with a Number
 * @author Matthias Leutenegger <hello@syntro.ch>
 */
class Step extends BaseItem
{
    /**
     * Defines the database table name
     * @config
     *  @var string
     */
    private static $table_name = 'BlockMultiStep_Step';

    /**
     * @config
     * @var bool
     */
    private static $displays_title_in_template = true;

    /**
     * @config
     * @var array
     */
    private static $db = [
        'Content' => 'HTMLText',
    ];

    /**
     * Add default values to database
     * @config
     *  @var array
     */
    private static $defaults = [];

    /**
     * @config
     * @var array
     */
    private static $has_one = [
        'Section' => MultiStepBlock::class,
        // 'Link' => Link::class
    ];

    /**
     * duplicate relations
     * @config
     *  @var array
     */
    private static $cascade_duplicates = [
        // 'Link'
    ];


    /**
     * Defines summary fields commonly used in table columns
     * as a quick overview of the data for this dataobject
     * @config
     * @var array
     */
    private static $summary_fields = [
        'Title' => 'Title'
    ];

    /**
     * Relationship version ownership
     * @config
     * @var array
     */
    private static $owns = [
        // 'Link'
    ];

    /**
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $contentField = $fields->fieldByName('Root.Main.Content');
        $contentField->setTitle(_t(__CLASS__ . '.CONTENTTITLE', 'Content'));

        $fields->removeByName([
            'SectionID',
            'LinkID'
        ]);


        // $fields->addFieldToTab(
        //     'Root.Main',
        //     LinkField::create(
        //         'Link',
        //         _t(__CLASS__ . '.LINKTITLE', 'Link'),
        //         $this
        //     )
        // );


        return $fields;
    }
}
