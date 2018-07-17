# RysManagement

## Development

##### By path (default)

Into gem file

    gem 'rys_management', path: PLUGIN_PATH


##### By git

Into gem file

    gem 'rys_management', git: 'git@git.cz:plugins/rys_management.git'

Into shell

    bundle config local.rys_management PLUGIN_PATH


##### By redmine plugin

Ensure you have redmine plugin for rys plugins

    rails generate rys:redmine:plugin REDMINE_PLUGIN

Move plugin

    mv PLUGIN_PATH REDMINE_PLUGIN/local
