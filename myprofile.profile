<?php
/**
 * @file
 * Enables modules and site configuration for a myprofile site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function myprofile_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  $form['site_information']['site_mail']['#default_value'] = 'admin@example.com';

  // configure default admin account
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['admin_account']['account']['mail']['#default_value'] = 'admin@example.com';

  $form['update_notifications']['update_status_module']['#default_value'] = array(1 => TRUE, 2=>FALSE);

  // configure default country and time zone
  $form['server_settings']['site_default_country']['#default_value'] = 'HK';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Asia/Hong_Kong';
}
