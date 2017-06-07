module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = 'Floworx SysArch'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def active_action?(action_name, class_name = 'active')
    return unless params[:action] == action_name
    class_name.nil? ? 'active' : class_name
  end
end
