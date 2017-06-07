module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = 'FloworxSA'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def active_action?(controller_name, action_name, class_name = 'active')
    return unless params[:controller] == controller_name && params[:action] == action_name
    class_name.nil? ? 'active' : class_name
  end
end
