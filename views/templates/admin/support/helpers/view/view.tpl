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

	<div class="col-xs-12 col-sm-6 col-lg-8">
		<div class="panel">

			<h3><i class="icon-life-bouy"></i> {l s='PrestaShop Support'}</h3>

			<h2>{l s='Get help with PrestaShop'}</h2>
			<br/>	
			<p>{l s='Having trouble with your shop? Follow these steps to find your answer:'}</p>

			<ol>
			   <li>{l s='Read the Documentation'}</li>
			   <li>{l s='Search the Forum'}</li>
			   <li>{l s='or Open a Support ticket'}</li>
			</ol>
			<br/>
			<h4><i class="icon-arrow-right"></i> {l s='Have you checked the Documentation?' mod='pssupport'}</h4>
			<p>{l s='The User Guide is here to help you get familiar with PrestaShop and how to manage your shop. 
			Whenever you have a question about a specific feature, you can click on the “Help” icon at the top-right corner of the page. It will open the relevant User Guide’s page: the answer might be there.'}
			<br/>{l s='You can also browse our User FAQ.'}</p>
			<button type="button" class="btn btn-default" href="http://doc.prestashop.com/display/PS16/User+Guide">Read the User Guide</button><button type="button" class="btn btn-default" href="http://doc.prestashop.com/display/PS16/FAQ">Go to the User FAQ</button>
			<br/>
			<br/>
			<br/>
			
			<h4><i class="icon-arrow-right"></i> {l s='...searched the Forum?'}</h4>
			<p>{l s='Our Forum is the meeting point of PrestaShop community. Newcomers and expert users exchange tips and help in 15+ languages. If you have a problem, maybe you are not the first one to have dealt with it and you will find the answer on the forum.'} 
			<br/>{l s='Don’t hesitate to register (by providing a username) and use the search bar to see what others have to say about your problem. If nobody asked the question before, you can create a new conversation.'}</p>
			<button type="button" class="btn btn-default" href="http://www.prestashop.com/forums/">Search the Forum</button>
			<br/>
			<br/>
			<br/>
			
			<h4><i class="icon-arrow-right"></i> {l s='Still at loss with a major issue?'}</h4>
			<p>{l s='Sign up for a professional support plan. Our PrestaShop experts will provide customized advice and technical assistance.'} 
			<br/>{l s='To get you started we give you 10 support tickets for free!'} 
			<br/>{l s='Open a ticket to ask a question, and our team will get back to you. Remember, it is a question per ticket.'}</p>
			<button type="button" class="btn btn-default" href="http://addons.prestashop.com/en/388-support">Open a support ticket</button>

		</div>
	</div>

	<div class="col-xs-12 col-sm-6 col-lg-4">
		<div class="panel">

			<h3><i class="icon-home"></i> {l s='Useful links'}</h3>

			<div class="list-group">
				<a href="http://doc.prestashop.com/display/PS16/PrestaShop+1.6+documentation" class="list-group-item">
					<h4 class="list-group-item-heading">Documentation</h4>
					<p class="list-group-item-text">Get familiar with PrestaShop thanks to the User Guide, written by our team.</p>
				</a>
				<a href="http://www.prestashop.com/forums/" class="list-group-item">
					<h4 class="list-group-item-heading">Forum</h4>
					<p class="list-group-item-text">Our forum is the place to meet the PrestaShop Community and its 700,000 members.</p>
				</a>
				<a href="TODO" class="list-group-item">
					<h4 class="list-group-item-heading">Support</h4>
					<p class="list-group-item-text">Sign up for a support plan to get professional help from our team.</p>
				</a>
			</div>

		</div>
	</div>

</div>


{/block}
