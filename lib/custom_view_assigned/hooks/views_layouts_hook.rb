module CustomViewAssigned
  module Hooks
    class ViewsLayoutsHook < Redmine::Hook::ViewListener
      def view_layouts_base_html_head(context={})
        return stylesheet_link_tag('redmine_custom_view_assigned.css', :plugin => 'redmine_custom_view_assigned')
      end
    end
  end
end