{*
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{extends file="helpers/view/view.tpl"}

{block name="override_tpl"}

<div class="row">

	<div class="col-xs-12 col-sm-6 col-lg-4">
		<div class="panel">

			<h3><i class="icon-home"></i> {l s='Useful links'}</h3>

			<div class="list-group">
				<a href="http://doc.prestashop.com/display/PS16/PrestaShop+1.6+documentation" class="list-group-item">
					<h4 class="list-group-item-heading">Documentation</h4>
					<p class="list-group-item-text">Our team keep the whole documentation up-to-date, to help sell with PrestaShop</p>
				</a>
				<a href="http://www.prestashop.com/forums/" class="list-group-item">
					<h4 class="list-group-item-heading">Forum</h4>
					<p class="list-group-item-text">With 700 000 registered members, our forum is the hub of the PrestaShop Comunity</p>
				</a>
				<a href="TODO" class="list-group-item">
					<h4 class="list-group-item-heading">Support</h4>
					<p class="list-group-item-text">If you can't find what you are looking for and you need help, you can contact our support team</p>
				</a>
			</div>

		</div>
	</div>

	<div class="col-xs-12 col-sm-6 col-lg-8">
		<div class="panel">

			<h3><i class="icon-book"></i> {l s='PrestaShop helps you'}</h3>

			<h2>TEXTE A DEFINIR</h2>

			<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>

			<ol>
			   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
			   <li>Aliquam tincidunt mauris eu risus.</li>
			</ol>

			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p>

		</div>
	</div>

</div>


{/block}
