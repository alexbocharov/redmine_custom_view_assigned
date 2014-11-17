module RedmineCustomViewAssigned
  class << self
    def filtering_users
      Setting.plugin_redmine_custom_view_assigned['filtering_users']
    end

    def grouping_mode
      Setting.plugin_redmine_custom_view_assigned['grouping_mode']
    end
  end
end