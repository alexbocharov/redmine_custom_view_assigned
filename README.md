# Redmine Custom View Assigned plugin

This plugin for Redmine adds a custom view of the field assigned.

## Installation

To install the Redmine Custom View Assigned plugin, execute the following commands from the root of your redmine directory, assuming that your RAILS_ENV enviroment variable is set to "production":

    git clone git://github.com/alexbocharov/redmine_custom_view_assigned.git plugins/redmine_custom_view_assigned
    rake redmine:plugins:migrate NAME=redmine_custom_view_assigned

More information on installing Redmine plugins can be found here: [http://www.redmine.org/wiki/redmine/Plugins](http://www.redmine.org/wiki/redmine/Plugins "Redmine Plugins")

After the plugin is installed and the db migration completed, you will
need to restart Redmine for the plugin to be available.

## Uninstall

    rake redmine:plugins:migrate NAME=redmine_custom_view_assigned VERSION=0