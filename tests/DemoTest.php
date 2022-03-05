<?php
namespace Syntro\BlocksSilicon\Tests;

use SilverStripe\Dev\FunctionalTest;

/**
 * Test some demo
 * @author Matthias Leutenegger
 */
class DemoTest extends FunctionalTest
{
    /**
     * Test Footer on Homepage
     * @return void
     */
    public function testAddition()
    {
        $this->assertEquals(1+1, 2);
    }
}
