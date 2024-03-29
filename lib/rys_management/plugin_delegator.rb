module RysManagement
  class PluginDelegator < SimpleDelegator

    def name
      l("#{rys_id}.plugin_name")
    end

    def description
      l("#{rys_id}.plugin_description", default: '')
    end

    def feature_records
      RysFeatureRecord.registered_for(__getobj__)
    end

    def feature_records_count
      feature_records.count
    end

    def edit_partial_path
      "rys_management/plugins/#{rys_id}"
    end

    def prerelease?
      feature_module_parent = module_parent
      if feature_module_parent.const_defined?(:VERSION)
        Gem::Version.new(feature_module_parent.const_get(:VERSION)).prerelease?
      else
        false
      end
    rescue
      false
    end

    private

    def l(key, **args)
      I18n.translate(key, **args)
    end

  end
end
