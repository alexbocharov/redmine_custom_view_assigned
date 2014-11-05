require File.join(File.dirname(__FILE__), 'app/helpers/custom_view_assigned_helper.rb')

Redmine::Plugin.register :redmine_custom_view_assigned do
  name        'Redmine Custom View Assigned plugin'
  author      'Alexander Bocharov'
  description 'This plugin for Redmine adds a custom view of the field assigned'
  version     '0.0.3'
  url         'https://github.com/alexbocharov/redmine_custom_view_assigned'

  requires_redmine :version_or_higher => '2.0.0'
end

require 'redmine'
require 'custom_view_assigned_listener'