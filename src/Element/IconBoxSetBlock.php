<?php
namespace Syntro\BlocksSilicon\Element;

use SilverStripe\Forms\CheckboxField;
use SilverStripe\Assets\Image;
use DNADesign\Elemental\Models\BaseElement;
use Syntro\SilverStripeElementalBaseitem\Forms\GridFieldConfig_ElementalChildren;
use Syntro\BlocksSilicon\Model\IconBox;
use Syntro\BlocksSilicon\Extension\MultiHolderExtension;

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
        MultiHolderExtension::class,
    ];

    /**
     * available holder styles
     * @var array
     */
    private static $holder_styles = [
        'colored' => 'Slight color'
    ];

    /**
     * available styles
     * @var array
     */
    private static $styles = [];

    /**
     * Database fields
     * @var array
     */
    private static $db = [
        'UseCarousel' => 'Boolean'
    ];

    /**
     * Add default values to database
     *  @var array
     */
    private static $defaults = [
        'ExtraClass' => 'py-5 my-2 my-md-4 my-lg-5'
    ];

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
        $fields->addFieldToTab(
            'Root.Main',
            $carouselField = CheckboxField::create(
                'UseCarousel',
                _t(__CLASS__ . '.USECAROUSEL', 'Display as Carousel')
            ),
            'insertBefore'
        );
        $carouselField->setDescription(
            _t(__CLASS__ . '.USECAROUSELDESC', 'If enabled, cards that would be displayed in a new row are displayed in a carousel.')
        );
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
