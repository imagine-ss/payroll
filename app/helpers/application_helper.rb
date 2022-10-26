module ApplicationHelper
  def is_profile_complete?
    current_user.is_profile_complete ? true : false
  end
end
