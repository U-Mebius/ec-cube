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

if (!class_exists(Authority::class, false)) {
/**
 * Authority
 *
 * @ORM\Table(name="mtb_authority", options={"comment" : "権限"})
 * @ORM\InheritanceType("SINGLE_TABLE")
 * @ORM\DiscriminatorColumn(name="discriminator_type", type="string", length=255)
 * @ORM\HasLifecycleCallbacks()
 * @ORM\Entity(repositoryClass="Eccube\Repository\Master\AuthorityRepository")
 * @ORM\Cache(usage="NONSTRICT_READ_WRITE")
 */
class Authority extends \Eccube\Entity\Master\AbstractMasterEntity
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="smallint", options={"unsigned":true, "comment":"権限ID"})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    protected $id;

    /**
     * システム管理者
     */
    const ADMIN = 0;

        /**
         * 店舗オーナー
         */
        const OWNER = 1;
    }
}
