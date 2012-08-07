require 'redmine'
require_dependency 'help_link_change_menu_hook'

Redmine::Plugin.register :redmine_help_link do
  name 'Redmine Help Link plugin'
  author 'Paweł Jędrzejczyk'
  description 'Changing default help link url'
  version '0.0.1'
  url 'http://budikom.net'
  author_url 'http://budikom.net'
  
  settings :default => { :help_link_url => "http://www.redmine.org/guide/" }, :partial => 'settings/help_link_url'
end
