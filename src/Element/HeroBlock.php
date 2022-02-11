<?php
namespace BlocksSilicon\Element;

use SilverStripe\Assets\Image;
use DNADesign\Elemental\Models\ElementContent;

/**
 * Description
 *
 * @author Matthias Leutenegger
 */
class HeroBlock extends ElementContent
{
    /**
     * Defines the database table name
     *  @var string
     */
    private static $table_name = 'BlockHero';

    /**
     * Singular name for CMS
     *  @var string
     */
    private static $singular_name = 'Hero';

    /**
     * Plural name for CMS
     *  @var string
     */
    private static $plural_name = 'Heroes';

    /**
     * @var bool
     */
    private static $inline_editable = true;

    /**
     * Display a show title button
     *
     * @config
     * @var boolean
     */
    private static $displays_title_in_template = false;

    /**
     * @var string
     */
    private static $icon = 'font-icon-block-promo-2';

    /**
     * Database fields
     * @var array
     */
    private static $db = [
        'Subtitle' => 'Varchar'
    ];

    /**
     * Add default values to database
     *  @var array
     */
    private static $defaults = [
        'ExraClass' => 'pt-lg-4 mt-lg-3'
    ];

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = [
        'Image' => Image::class,
    ];

    /**
     * Relationship version ownership
     * @var array
     */
    private static $owns = [
        'Image'
    ];

    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $imageField = $fields->fieldByName('Root.Main.Image');
        $imageField->setFolderName('Elements/Hero');
        return $fields;
    }

    /**
     * getType
     *
     * @return string
     */
    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Hero');
    }
}
