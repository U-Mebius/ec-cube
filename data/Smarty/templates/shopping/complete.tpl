<!--{*
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *}-->
<!--¢§CONTENTS-->
<table width="760" border="0" cellspacing="0" cellpadding="0" summary=" ">
	<tr>
		<td align="center" bgcolor="#ffffff">
		<!--¢§MAIN ONTENTS-->
		<!--¹ØÆ?¼?³¤­¤ÎÎ®¤?->
		<table width="700" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<tr>
				<td><img src="<!--{$smarty.const.URL_DIR}-->img/shopping/flow04.gif" width="700" height="36" alt="¹ØÆ?¼?³¤­¤ÎÎ®¤?></td>
			</tr>
			<tr><td height="15"></td></tr>
		</table>
		<!--¹ØÆ?¼?³¤­¤ÎÎ®¤?->
			
		<table width="700" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<tr>
				<td><img src="<!--{$smarty.const.URL_DIR}-->img/shopping/complete_title.jpg" width="700" height="40" alt="¤´ÃÃØ¸´°Î»"></td>
			</tr>
			<tr><td height="15"></td></tr>
		</table>
		
		<table width="640" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<tr>
				<td align="center" bgcolor="#cccccc">
				<table width="630" border="0" cellspacing="0" cellpadding="0" summary=" ">
					<tr><td height="5"></td></tr>
					<tr>
						<td align="center" bgcolor="#ffffff">
							<!-- ¢§¤½¤ÎÂ¾·ð¼Ñ¾öÌü¦úË½¼¨¤¹¤??î¦ÏÉ½¼¨ -->
							<!--{if $arrOther.title.value }-->
							<table  width="590" cellspacing="0" cellpadding="0" summary=" ">
								<tr>
									<td>
									<table cellspacing="0" cellpadding="0" summary=" " id="comp">
										<tr><td height="20"></td></tr>
										<tr>
											<td class="fs12">¢£<!--{$arrOther.title.name}-->¾öÌ?br />
											<!--{foreach key=key item=item from=$arrOther}-->
											<!--{if $key != "title"}--><!--{if $item.name != ""}--><!--{$item.name}-->¡§<!--{/if}--><!--{$item.value|nl2br}--><br/><!--{/if}-->
											<!--{/foreach}-->
										</tr>
									</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr><td height="5"></td></tr>
					<tr>
						<td align="center" bgcolor="#ffffff">
							<!--{/if}-->						
							<!-- ¢¥¥³¥ü§Ó¤Ë·ð¼Ñ¤Î¾?î¦Ë¤ÏÉ½¼¨ -->
						
							<!--¤´ÃÃØ¸´°Î»¤ÎÊ¸¾Ï¤³¤³¤«¤?->
							<table width="590" border="0" cellspacing="0" cellpadding="0" summary=" ">
								<tr><td height="25"></td></tr>
								<tr>
									<td class="fs12"><span class="redst"><!--{$arrInfo.shop_name|escape}-->¤Î¾¦ÉÊ¤ú¦´¹ØÆ?¤¤¤¿¤À¤­¡¢¤¢¤ô¦¬¤È¤¦¤´¤¶¤¤¤Þ¤·¤¿¡£</span></td>
								</tr>
								<tr><td height="20"></td></tr>
								<tr>
									<td class="fs12">¤¿¤À¤¤¤Þ¡¢¤´ÃÃØ¸¤Î³ÎÇ§¥â£¼¥?ú¦ªÁú¦ô¦µ¤»¤Æ¤¤¤¿¤À¤­¤Þ¤·¤¿¡£ <br>
									Ë??¢¤´³ÎÇ§¥â£¼¥?¬ÆÏ¤«¤Ê¤¤¾?î¦Ï¡¢¥È¥ò§Ö¥?Î²ÄÇ½À­¤ä¦¢¤ô¦Þ¤¹¤Î¤ÇÂîÌÑ¤ª¼?þ¦Ç¤Ï¤´¤¶¤¤¤Þ¤¹¤¬¤ä¦¦°?Ù¤ªÌè¦¤¹î¦?»¤¤¤¿¤À¤¯¤«¡¢¤ªÅÅÏÃ¤Ë¤Æ¤ªÌè¦¤¹î¦?»¤¯¤À¤µ¤¤¤Þ¤»¡£ </td>
								</tr>
								<tr><td height="15"></td></tr>
								<tr>
									<td class="fs12">º£¸ê¦È¤ä¦´°¦¸Ü»ú¦ô¦Þ¤¹¤ð¦¦¤ð¦¾¬·¤¯¤ª´ô¦¤¿½¤·¾ê¦²¤Þ¤¹¡£</td>
								</tr>
								<tr><td height="20"></td></tr>
								<tr>
									<td class="fs12"><!--{$arrInfo.shop_name|escape}--><br>
									TEL¡§<!--{$arrInfo.tel01}-->-<!--{$arrInfo.tel02}-->-<!--{$arrInfo.tel03}--> <!--{if $arrInfo.business_hour != ""}-->¡Ê¼öËÕ»?´Ö/<!--{$arrInfo.business_hour}-->¡Ë<!--{/if}--><br>
									E-mail¡§<a href="mailto:<!--{$arrInfo.email02|escape}-->"><!--{$arrInfo.email02|escape}--></a></td>
								</tr>
								<tr><td height="25"></td></tr>
							</table>
							<!--¤´ÃÃØ¸´°Î»¤ÎÊ¸¾Ï¤³¤³¤Þ¤Ç-->
						</td>
					</tr>
					<tr><td height="5"></td></tr>
				</table>
				</td>
			</tr>
			<tr><td height="20"></td></tr>
			<tr align="center">
				<td>
					<!--{if $is_campaign}-->
					<a href="<!--{$smarty.const.CAMPAIGN_URL}--><!--{$campaign_dir}-->/index.php" onmouseover="chgImg('<!--{$smarty.const.URL_DIR}-->img/common/b_toppage_on.gif','b_toppage');" onmouseout="chgImg('<!--{$smarty.const.URL_DIR}-->img/common/b_toppage.gif','b_toppage');"><img src="<!--{$smarty.const.URL_DIR}-->img/common/b_toppage.gif" width="150" height="30" alt="¥È¥Ã¥×¥Ú¡¼¥¸¤Ø" border="0" name="b_toppage"></a>
					<!--{else}-->
					<a href="<!--{$smarty.const.URL_DIR}-->index.php" onmouseover="chgImg('<!--{$smarty.const.URL_DIR}-->img/common/b_toppage_on.gif','b_toppage');" onmouseout="chgImg('<!--{$smarty.const.URL_DIR}-->img/common/b_toppage.gif','b_toppage');"><img src="<!--{$smarty.const.URL_DIR}-->img/common/b_toppage.gif" width="150" height="30" alt="¥È¥Ã¥×¥Ú¡¼¥¸¤Ø" border="0" name="b_toppage"></a>
					<!--{/if}-->
				</td>
			</tr>
		</table>
		<!--¢¥MAIN ONTENTS-->
		</td>
	</tr>
</table>
<!--¢¥CONTENTS-->
