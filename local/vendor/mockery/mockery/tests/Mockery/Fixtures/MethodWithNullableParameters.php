<?php
/**
 * Mockery
 *
 * LICENSE
 *
 * This source file is subject to the new BSD license that is bundled
 * with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://github.com/padraic/mockery/master/LICENSE
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to padraic@php.net so we can send you a copy immediately.
 *
 * @category   Mockery
 * @package    Mockery
 * @subpackage UnitTests
 * @copyright  Copyright (c) 2010 Pádraic Brady (http://blog.astrumfutura.com)
 * @license    http://github.com/padraic/mockery/blob/master/LICENSE New BSD License
 */

namespace test\Mockery\Fixtures;

class MethodWithNullableParameters
{
    public function nonNullablePrimitive(string $a)
    {
    }

    public function nullablePrimitive(?string $a)
    {
    }

    public function nonNullableSelf(self $a)
    {
    }

    public function nullableSelf(?self $a)
    {
    }

    public function nonNullableClass(MethodWithNullableParameters $a)
    {
    }

    public function nullableClass(?MethodWithNullableParameters $a)
    {
    }
}
