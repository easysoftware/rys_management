class RysManagementController < ApplicationController

  before_action :require_admin
  before_action :find_plugin, only: [:edit, :update]
  before_action :find_feature_record, only: [:toggle_feature]

  def edit
    @easy_settings = EasySettings::FormModel.new(prefix: @rys_plugin.rys_id)
  end

  def update
    if params[:easy_setting]
      @easy_settings = EasySettings::ParamsWrapper.from_params(params[:easy_setting].permit!, prefix: @rys_plugin.rys_id)

      if @easy_settings.save
        # All good
      else
        render :edit
        return
      end
    end

    flash[:notice] = l(:notice_successful_update)
    redirect_back_or_default rys_management_edit_path(@rys_plugin.rys_id)
  end

  def toggle_feature
    @feature_record.active = params[:active]
    @feature_record.save

    redirect_back_or_default admin_plugins_path
  end

  private

    def find_plugin
      @rys_plugin = RysManagement.find(params[:rys_id])
      render_404 if @rys_plugin.nil?
    end

    def find_feature_record
      @feature_record = RysFeatureRecord.find_by(id: params[:id])
      render_404 if @feature_record.nil?
    end

end
