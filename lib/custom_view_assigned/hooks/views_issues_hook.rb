class ViewsIssueHook < Redmine::Hook::Listener
  def view_issues_form_details_bottom(context)
    users = RedmineCustomViewAssigned.filtering_users == 'true' ?
        helpers.assignable_users(context[:issue]) :
        context[:issue].assignable_users

    case RedmineCustomViewAssigned.grouping_mode
      when 'groups' then
        context[:controller].send(
            :render_to_string, {
                                 :partial => 'issues/assigned_grouping',
                                 :layout => false,
                                 :locals => {:groups => grouping_by_group(users)}
                             })
      when 'roles' then
        context[:controller].send(
            :render_to_string, {
                                 :partial => 'issues/assigned_grouping',
                                 :layout => false,
                                 :locals => {:groups => grouping_by_role(users)}
                             })
      else
        context[:controller].send(
            :render_to_string, {
                                 :partial => 'issues/assigned_not_grouping',
                                 :layout => false,
                                 :locals => {:users => users}
                             })
    end
  end

  private
  def add_entry_to_group(groups, group_name, entry_id, entry_name)
    unless groups.has_key? group_name
      groups[group_name] = []
    end

    groups[group_name] << {id: entry_id, name: entry_name}
  end

  def grouping_by_group(users)
    groups = {}

    add_entry_to_group(groups, l(:label_custom_view_assigned_current_user), User.current.id, "<< #{l(:label_me)} >>")

    users.each do |user|
      if user.instance_of? Group
        add_entry_to_group(groups, h(l(:label_group_plural)), user.id, user.name)
      else
        if user.groups.empty?
          add_entry_to_group(groups, l(:label_custom_view_assigned_no_group), user.id, user.name)
        end

        user.groups.each do |user_group|
          add_entry_to_group(groups, user_group.name, user.id, user.name)
        end
      end
    end

    groups
  end

  def grouping_by_role(users)
    groups = {}

    add_entry_to_group(groups, l(:label_custom_view_assigned_current_user), User.current.id, "<< #{l(:label_me)} >>")

    users.each do |user|
      user.projects_by_role.each do |role, _|
        add_entry_to_group(groups, role, user.id, user.name)
      end
    end

    groups
  end
end

class InitHelpers
  include Singleton
  include CustomViewAssignedHelper
end

def helpers
  InitHelpers.instance
end
