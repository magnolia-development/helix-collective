# frozen_string_literal: true

module ApplicationHelper
  def main_nav_items
    [
      { nav_link: "/", nav_text: "Home" },
      { nav_link: "/events", nav_text: "Events" },
      { nav_link: "/vision", nav_text: "Vision" },
      { nav_link: "/resources", nav_text: "Resources" },
    ]
  end
end

