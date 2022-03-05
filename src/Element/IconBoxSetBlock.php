<?php
namespace Syntro\BlocksSilicon\Element;

use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Assets\Image;
use DNADesign\Elemental\Models\BaseElement;
use Syntro\SilverStripeElementalBaseitem\Forms\GridFieldConfig_ElementalChildren;
use Syntro\BlocksSilicon\Model\IconBox;
use Syntro\ElementalBootstrapBlocks\Extension\UseCarouselExtension;

/**
 * An element which renders cards with icons
 *
 * @author Matthias Leutenegger
 */
class IconBoxSetBlock extends BaseElement
{
    /**
     * Defines the database table name
     *  @var string
     */
    private static $table_name = 'BlockIconBoxSet';

    /**
     * Singular name for CMS
     *  @var string
     */
    private static $singular_name = 'Icon box block';

    /**
     * Plural name for CMS
     *  @var string
     */
    private static $plural_name = 'Icon box blocks';

    /**
     * @var bool
     */
    private static $inline_editable = false;

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
    private static $icon = 'font-icon-block-layout-2';

    /**
     * Defines extension names and parameters to be applied
     *  to this object upon construction.
     *  @var array
     */
    private static $extensions = [
        UseCarouselExtension::class
    ];

    /**
     * available holder styles
     * @var array
     */
    private static $holder_styles = [];

    /**
     * available styles
     * @var array
     */
    private static $styles = [];

    /**
     * Database fields
     * @var array
     */
    private static $db = [];

    /**
     * Add default values to database
     *  @var array
     */
    private static $defaults = [];

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = [];

    /**
     * Has_many relationship
     * @var array
     */
    private static $has_many = [
        'IconBoxes' => IconBox::class,
    ];

    /**
     * Relationship version ownership
     * @var array
     */
    private static $owns = [
        'IconBoxes'
    ];

    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        if ($this->ID) {
            /** @var GridField $griditems */
            $griditems = $fields->fieldByName('Root.IconBoxes.IconBoxes');
            $griditems->setConfig(GridFieldConfig_ElementalChildren::create());
            $fields->removeByName([
                'IconBoxes',
                'Root.IconBoxes.IconBoxes'
            ]);
            $fields->addFieldToTab(
                'Root.Main',
                $griditems
            );
        } else {
            $fields->removeByName([
                'IconBoxes',
                'Root.IconBoxes.IconBoxes'
            ]);
        }
        return $fields;
    }

    /**
     * getType
     *
     * @return string
     */
    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Icon Boxes');
    }
}
