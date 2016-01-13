<?php
/**
* 2007-2016 PrestaShop
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
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2016 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

if (!defined('_PS_VERSION_'))
	exit;

class Pssupport extends Module
{
	protected $config_form = false;

	public function __construct()
	{
		$this->name = 'pssupport';
		$this->tab = 'others';
		$this->version = '1.0.4';
		$this->author = 'PrestaShop';
		$this->need_instance = 0;
		$this->is_configurable = 0;
		$this->module_key = '1ccb40707dbedc3d2097fdff60662461';

		$this->bootstrap = true;

		parent::__construct();

		$this->displayName = $this->l('PrestaShop Support');
		$this->description = $this->l('Get help for your PrestaShop: support, forum, FAQ...');

		$this->confirmUninstall = $this->l('Are you sure you want to uninstall this module ?');

		$this->ps_versions_compliancy = array('min' => '1.6', 'max' => _PS_VERSION_);
	}

	public function install()
	{
		return parent::install()
			&& $this->installTab()
			&& $this->registerHook('displayBackOfficeHeader');
	}

	public function uninstall()
	{
		return parent::uninstall()
			&& $this->uninstallTab()
			&& $this->unregisterHook('displayBackOfficeHeader');
	}

	public function installTab()
	{
        $return = true;

		$sql = 'INSERT INTO `'._DB_PREFIX_.'tab`
                    (`id_parent`, `class_name`, `module`, `position`, `active`, `hide_host_mode`)
                    VALUES (0, \'AdminSupport\', \''.$this->name.'\', 99, 1, 0)';

        $return &= Db::getInstance()->execute($sql);
        if (!$return)
            return false;

        $id_tab = (int)Db::getInstance()->getValue('SELECT `id_tab` FROM `'._DB_PREFIX_.'tab` WHERE `class_name` = \'AdminSupport\'');
        if ($id_tab <= 0)
            return false;

        foreach (Language::getLanguages(true) as $lang)
        {
            $sql = 'INSERT INTO `'._DB_PREFIX_.'tab_lang` (`id_tab`, `id_lang`, `name`)
                    VALUES ('.$id_tab.', '.$lang['id_lang'].', \'Support\')';
            $return &= Db::getInstance()->execute($sql);
        }

        return $return;
	}

	public function uninstallTab()
	{
		$id_tab = (int)Tab::getIdFromClassName('AdminSupport');

		if ($id_tab)
		{
			$tab = new Tab($id_tab);
			return $tab->delete();
		}
		else
			return false;
	}

	public function hookDisplayBackOfficeHeader()
	{
		if (!$this->active)
			return;

		$this->context->controller->addCSS($this->_path.'css/pssupport.css');
	}
}
