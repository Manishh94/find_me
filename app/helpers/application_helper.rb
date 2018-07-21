module ApplicationHelper
  def home_nav_content(key, value)
    content_tag(:li) do
      link_to(key.upcase, "##{value}")
    end
  end

  def home_nav(nav)
    a = ''
    nav.each do |key, value|
      a.concat home_nav_content(key, value)
    end
    a.html_safe
  end

  def create_navigation(option_key = false)
    nav =
      if option_key
        Constants.const_get("HOME_NAV_BAR_#{option_key.upcase}")
      else
        Constants::HOME_NAV_BAR
      end
    home_nav(nav)
  end
end
