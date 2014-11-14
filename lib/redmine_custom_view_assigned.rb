module RedmineCustomViewAssigned
  class << self
    def filtering_users
      Setting.plugin_redmine_custom_view_assigned['filtering_users']
    end
  end
end