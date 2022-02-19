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
use Syntro\BlocksSilicon\Element\TabSetBlock;

/**
 * A card with an icon
 * @author Matthias Leutenegger <hello@syntro.ch>
 */
class Tab extends BaseItem
{
    /**
     * Defines the database table name
     *  @var string
     */
    private static $table_name = 'BlockTabSet_Tab';

    private static $displays_title_in_template = false;

    private static $db = [
        'Icon' => 'Varchar',
        'Content' => 'HTMLText',
    ];

    /**
     * Add default values to database
     *  @var array
     */
    private static $defaults = [];

    private static $has_one = [
        'Section' => TabSetBlock::class,
        'Image' => Image::class
    ];

    /**
     * duplicate relations
     *  @var array
     */
    private static $cascade_duplicates = [
    ];


    /**
     * Defines summary fields commonly used in table columns
     * as a quick overview of the data for this dataobject
     * @var array
     */
    private static $summary_fields = [
        'Title' => 'Title'
    ];

    /**
     * Relationship version ownership
     * @var array
     */
    private static $owns = [
        'Image'
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

        $fields->addFieldToTab(
            'Root.Main',
            $imageField = UploadField::create(
                'Image',
                _t(__CLASS__ . '.IMAGETITLE', 'Image')
            )
        );
        $imageField->setFolderName('Elements/Tabset');
        $imageField->setAllowedExtensions(['png','jpg','jpeg']);
        $imageField->setDescription(_t(__CLASS__ . '.IMAGEDESCRIPTION', 'Uploading an image will display two 1:1 columns with the Image in the right one.'));

        $fields->removeByName([
            'SectionID',
        ]);

        $fields->addFieldToTab(
            'Root.Main',
            $iconField,
            'Content'
        );


        return $fields;
    }

}
