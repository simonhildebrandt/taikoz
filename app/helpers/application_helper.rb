module ApplicationHelper
  def home_controller?
    controller_name == 'home'
  end
end
