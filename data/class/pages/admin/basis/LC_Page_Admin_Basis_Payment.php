<?php
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2010 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */

// {{{ requires
require_once(CLASS_REALDIR . "pages/admin/LC_Page_Admin.php");

/**
 * 支払方法設定 のページクラス.
 *
 * @package Page
 * @author LOCKON CO.,LTD.
 * @version $Id$
 */
class LC_Page_Admin_Basis_Payment extends LC_Page_Admin {

    // }}}
    // {{{ functions

    /**
     * Page を初期化する.
     *
     * @return void
     */
    function init() {
        parent::init();
        $this->tpl_mainpage = 'basis/payment.tpl';
        $this->tpl_subnavi = 'basis/subnavi.tpl';
        $this->tpl_mainno = 'basis';
        $this->tpl_subno = 'payment';
        $this->tpl_subtitle = '支払方法設定';
    }

    /**
     * Page のプロセス.
     *
     * @return void
     */
    function process() {
        $this->action();
        $this->sendResponse();
    }

    /**
     * Page のアクション.
     *
     * @return void
     */
    function action() {
        $objSess = new SC_Session();
        $objDb = new SC_Helper_DB_Ex();

        // 認証可否の判定
        SC_Utils_Ex::sfIsSuccess($objSess);

        switch($this->getMode()) {
            case 'delete':
                // ランク付きレコードの削除
                $objDb->sfDeleteRankRecord("dtb_payment", "payment_id", $_POST['payment_id']);
                // 再表示
                $this->objDisplay->reload();
                break;
            case 'up':
                $objDb->sfRankUp("dtb_payment", "payment_id", $_POST['payment_id']);
                // 再表示
                $this->objDisplay->reload();
                break;
            case 'down':
                $objDb->sfRankDown("dtb_payment", "payment_id", $_POST['payment_id']);
                // 再表示
                $this->objDisplay->reload();
                break;
        }

        $this->arrDelivList = $objDb->sfGetIDValueList("dtb_deliv", "deliv_id", "service_name");
        $this->arrPaymentListFree = $this->lfGetPaymentList();
    }

    /**
     * デストラクタ.
     *
     * @return void
     */
    function destroy() {
        parent::destroy();
    }

    /**
     * 支払方法一覧の取得.
     */
    function lfGetPaymentList() {
        $objQuery = new SC_Query();
        $col = "payment_id, payment_method, charge, rule, upper_rule, note, fix, charge_flg";
        $where = "del_flg = 0";
        $table = "dtb_payment";
        $objQuery->setOrder("rank DESC");
        $arrRet = $objQuery->select($col, $table, $where);
        return $arrRet;
    }
}
?>
