<?php
namespace Syntro\BlocksSilicon\Element;

use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Assets\Image;
use DNADesign\Elemental\Models\BaseElement;
use Syntro\SilverStripeElementalBaseitem\Forms\GridFieldConfig_ElementalChildren;
use Syntro\BlocksSilicon\Model\Step;
// use Syntro\ElementalBootstrapBlocks\Extension\UseCarouselExtension;

/**
 * An element which renders a step by step list
 *
 * @author Matthias Leutenegger
 */
class MultiStepBlock extends BaseElement
{
    /**
     * Defines the database table name
     *  @var string
     */
    private static $table_name = 'BlockMultiStep';

    /**
     * Singular name for CMS
     *  @var string
     */
    private static $singular_name = 'Step by step block';

    /**
     * Plural name for CMS
     *  @var string
     */
    private static $plural_name = 'Step by Step blocks';

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
    private static $icon = 'font-icon-block-numbers';

    /**
     * Defines extension names and parameters to be applied
     *  to this object upon construction.
     *  @var array
     */
    private static $extensions = [
        // UseCarouselExtension::class
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
        'Steps' => Step::class,
    ];

    /**
     * Relationship version ownership
     * @var array
     */
    private static $owns = [
        'Steps'
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
            $griditems = $fields->fieldByName('Root.Steps.Steps');
            $griditems->setConfig(GridFieldConfig_ElementalChildren::create());
            $fields->removeByName([
                'Steps',
                'Root.Steps.Steps'
            ]);
            $fields->addFieldToTab(
                'Root.Main',
                $griditems
            );
        } else {
            $fields->removeByName([
                'Steps',
                'Root.Steps.Steps'
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
        return _t(__CLASS__ . '.BlockType', 'Steps');
    }
}
