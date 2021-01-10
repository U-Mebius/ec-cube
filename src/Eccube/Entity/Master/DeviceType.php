<?php

/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 *
 * http://www.ec-cube.co.jp/
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Eccube\Entity\Master;

use Doctrine\ORM\Mapping as ORM;

if (!class_exists(DeviceType::class, false)) {
    /**
     * DeviceType
     *
     * @ORM\Table(name="mtb_device_type", options={"comment" : "デバイス種別"})
     * @ORM\InheritanceType("SINGLE_TABLE")
     * @ORM\DiscriminatorColumn(name="discriminator_type", type="string", length=255)
     * @ORM\HasLifecycleCallbacks()
     * @ORM\Entity(repositoryClass="Eccube\Repository\Master\DeviceTypeRepository")
     * @ORM\Cache(usage="NONSTRICT_READ_WRITE")
     */
    class DeviceType extends \Eccube\Entity\Master\AbstractMasterEntity
    {
        /**
         * @var int
         *
         * @ORM\Column(name="id", type="smallint", options={"unsigned":true, "comment":"デバイス種別ID"})
         * @ORM\Id
         * @ORM\GeneratedValue(strategy="NONE")
         */
        protected $id;

        const DEVICE_TYPE_MB = 2;
        // const DEVICE_TYPE_TABLET = 3;
        const DEVICE_TYPE_PC = 10;
    }
}
