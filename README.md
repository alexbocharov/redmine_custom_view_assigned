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

## Screenshots

Users list:

<img src="/assets/images/screenshots/users.png" alt="Users" />

Groups:

<img src="/assets/images/screenshots/groups.png" alt="Groups" />

The group **Developer**:

<img src="/assets/images/screenshots/developer.png" alt="Developer" />

The group **Reporterv:

<img src="/assets/images/screenshots/reporter.png" alt="Reporter" />

The status transitions for **Manager**:

<img src="/assets/images/screenshots/manager_workflow.png.png" alt="Manager Workflow" />

The status transitions for **Developer**:

<img src="/assets/images/screenshots/developer_workflow.png" alt="Developer Workflow" />

The status transitions for **Reporter**:

<img src="/assets/images/screenshots/reporter_workflow.png" alt="Reporter Workflow" />

View assignee on a **New** status:

<img src="/assets/images/screenshots/assignee_status_new.png" alt="Assignee status New" />

View assignee on a **In Progress** status:

<img src="/assets/images/screenshots/assignee_status_in_progress.png" alt="Assignee status In Progress" />

View assignee on a **Feedback** status:

<img src="/assets/images/screenshots/assignee_status_feedback.png" alt="Assignee status Feedback" />