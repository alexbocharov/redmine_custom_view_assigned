Redmine::Plugin.register :redmine_custom_view_assigned do
  name 'Redmine Custom View Assigned plugin'
  author 'Alexander Bocharov'
  description 'This plugin for Redmine adds a custom view of the field assigned'
  version '0.0.1'
end

require 'redmine'
require 'custom_view_assigned_listener'