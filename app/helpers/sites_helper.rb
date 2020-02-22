module SitesHelper
  def is_active?(controller, action)
    if controller_name == controller && action_name == action
      'active'
    else
      'in-active'
    end
  end
end
