require 'rys'

require 'rys_management/engine'

module RysManagement
  autoload :PluginDelegator, 'rys_management/plugin_delegator'
  autoload :PluginConfig,    'rys_management/plugin_config'

  def self.all(**options, &block)
    Rys::PluginsManagement.all(delegate_with: PluginDelegator, **options, &block)
  end

  def self.find(plugin)
    rys_plugin = Rys::PluginsManagement.find(plugin)

    if rys_plugin
      PluginDelegator.new(rys_plugin)
    end
  end

end
