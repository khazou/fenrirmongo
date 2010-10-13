module ApplicationHelper

  
  def admin_link(text, path)
    if current_user and current_user.admin?
      link_to text, path
    end
  end
end
