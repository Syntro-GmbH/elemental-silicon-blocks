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
use Syntro\BlocksSilicon\Element\IconBoxSetBlock;

/**
 * A card with an icon
 * @author Matthias Leutenegger <hello@syntro.ch>
 */
class IconBox extends BaseItem
{
    /**
     * Defines the database table name
     * @config
     *  @var string
     */
    private static $table_name = 'BlockIconBoxSet_IconBox';

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
        'Icon' => 'Varchar',
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
        'Section' => IconBoxSetBlock::class,
        'Link' => Link::class
    ];

    /**
     * duplicate relations
     * @config
     *  @var array
     */
    private static $cascade_duplicates = [
        'Link'
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
        'Link'
    ];

    /**
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $contentField = $fields->fieldByName('Root.Main.Content');
        $contentField->setTitle(_t(__CLASS__ . '.CONTENTTITLE', 'Content'));

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

        $fields->removeByName([
            'SectionID',
            'LinkID'
        ]);

        $fields->addFieldToTab(
            'Root.Main',
            $iconField,
            'Content'
        );


        $fields->addFieldToTab(
            'Root.Main',
            LinkField::create(
                'Link',
                _t(__CLASS__ . '.LINKTITLE', 'Link'),
                $this
            )
        );


        return $fields;
    }
}
