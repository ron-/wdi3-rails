module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to(@auth.username, '/login', :remote => true, :method => :delete)}</li>"
    end
  end
end
