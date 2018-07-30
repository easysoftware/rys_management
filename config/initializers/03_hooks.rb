module RysManagement
  class Hooks < ::Redmine::Hook::ViewListener
    render_on :view_admin_plugins_bottom, partial: 'admin/rys_management/view_admin_plugins_bottom'
  end
end
