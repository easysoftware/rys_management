require 'rys'

module RysManagement
  class Engine < ::Rails::Engine
    include Rys::EngineExtensions

    initializer 'rys_management.setup' do
      # Custom initializer
    end

  end
end
