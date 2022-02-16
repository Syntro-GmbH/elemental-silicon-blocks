<?php

namespace Syntro\BlocksSilicon\Model;

use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Syntro\SilverStripeElementalBaseitem\Model\BaseItem;
use gorriecoe\Link\Models\Link;
use gorriecoe\LinkField\LinkField;
use Syntro\BlocksSilicon\Element\CardDeckBlock;

/**
 * A card with an Image and link
 * @author Matthias Leutenegger <hello@syntro.ch>
 */
class Card extends BaseItem
{
    /**
     * Defines the database table name
     *  @var string
     */
    private static $table_name = 'BlockCard_Card';

    private static $displays_title_in_template = true;

    private static $db = [
        'Content' => 'HTMLText',
    ];

    /**
     * Add default values to database
     *  @var array
     */
    private static $defaults = [];

    private static $has_one = [
        'Section' => CardDeckBlock::class,
        'Image' => Image::class,
        'Link' => Link::class
    ];

    /**
     * duplicate relations
     *  @var array
     */
    private static $cascade_duplicates = [
        'Link'
    ];


    /**
     * Defines summary fields commonly used in table columns
     * as a quick overview of the data for this dataobject
     * @var array
     */
    private static $summary_fields = [
        'Image.StripThumbnail' => 'Icon',
        'Title' => 'Title'
    ];

    /**
     * Relationship version ownership
     * @var array
     */
    private static $owns = [
        'Image',
        'Link'
    ];

    /**
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->removeByName([
            'SectionID',
            'LinkID'
        ]);

        $fields->addFieldToTab(
            'Root.Main',
            $imageField = UploadField::create(
                'Image',
                'Image'
            ),
            'Title'
        );
        $imageField->setFolderName('Elements/CardDeck');
        $imageField->setAllowedExtensions(['png','jpg','jpeg']);
        $imageField->setRightTitle('renders as 800px by 440px'); //TODO: translate

        $fields->addFieldToTab(
            'Root.Main',
            LinkField::create(
                'Link',
                $this->fieldLabel('Link'),
                $this
            )
        );

        $style = $this->Section->Style;
        switch ($style) {
            case 'reverse':
                $fields->addFieldToTab(
                    'Root.Main',
                    $imageField
                );
                break;
            case 'teaser':
                $fields->removeByName(['Content']);
                break;
            case 'horizontalright':
                $fields->addFieldToTab(
                    'Root.Main',
                    $imageField
                );
                $fields->removeByName(['Size']);
                break;
            case 'horizontalleft':
                $fields->removeByName(['Size']);
                break;
        }

        return $fields;
    }

    /**
     * getImageForTemplate - return an image with the correct aspect-ratio
     *
     * @return Image
     */
    public function getImageForTemplate()
    {
        list($width,$height) = $this->Section->getImageSize();
        return $this->Image->Fill($width, $height);
    }
}
