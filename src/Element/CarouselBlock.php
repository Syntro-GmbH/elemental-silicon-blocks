<?php
namespace Syntro\BlocksSilicon\Element;

use SilverStripe\Forms\CheckboxField;
use SilverStripe\Assets\Image;
use DNADesign\Elemental\Models\BaseElement;
use Syntro\SilverStripeElementalBaseitem\Forms\GridFieldConfig_ElementalChildren;
use Syntro\BlocksSilicon\Model\CarouselSlide;
use Syntro\BlocksSilicon\Extension\MultiHolderExtension;

/**
 * An element which renders a carousel with slides
 *
 * @author Matthias Leutenegger
 */
class CarouselBlock extends BaseElement
{
    /**
     * Defines the database table name
     *  @var string
     */
    private static $table_name = 'BlockCarousel';

    /**
     * Singular name for CMS
     *  @var string
     */
    private static $singular_name = 'Carousel';

    /**
     * Plural name for CMS
     *  @var string
     */
    private static $plural_name = 'Carousel';

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
    private static $icon = 'font-icon-block-story-carousel';

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
        'Slides' => CarouselSlide::class,
    ];

    /**
     * Relationship version ownership
     * @var array
     */
    private static $owns = [
        'Slides'
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
            $griditems = $fields->fieldByName('Root.Slides.Slides');
            $griditems->setConfig(GridFieldConfig_ElementalChildren::create());
            $fields->removeByName([
                'Slides',
                'Root.Slides.Slides'
            ]);
            $fields->addFieldToTab(
                'Root.Main',
                $griditems
            );
        } else {
            $fields->removeByName([
                'Slides',
                'Root.Slides.Slides'
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
        return _t(__CLASS__ . '.BlockType', 'Carousel');
    }
}
