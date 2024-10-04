# frozen_string_literal: true

module ApplicationHelper
  def main_nav_items
    [
      { nav_link: "/", nav_text: "Home" },
      { nav_link: "/solve", nav_text: "Solve", sub_nav: {
        style: "mega_columns",
        subtitle: "We help you solve your biggest challenges.",
        sub_description: "Our network of experts can help you with a wide range of problems. We have experience in a variety of industries and can provide solutions for your business.",
        items: [
          { group_name: "Industries", items: [
            { nav_link: "/solve/healthcare", nav_text: "Healthcare" },
            { nav_link: "/solve/ed-tech", nav_text: "Ed Tech" },
            { nav_link: "/solve/nonprofits", nav_text: "Non-profits" },
            { nav_link: "/solve/e-commerce", nav_text: "Ecommerce" },
          ] },
          { group_name: "Solutions", items: [
            { nav_link: "/solve/marketing", nav_text: "Marketing" },
            { nav_link: "/solve/operations", nav_text: "Operations" },
            { nav_link: "/solve/design", nav_text: "Web Design & UX" },
            { nav_link: "/solve/cyber-security", nav_text: "Cyber Security" },
            { nav_link: "/solve/accessibility", nav_text: "Digital Accessibility" },
            { nav_link: "/solve/ai", nav_text: "AI & Emerging Tech" },
          ] },
        ],
      } },
      { nav_link: "/learn", nav_text: "Learn", sub_nav: {
        style: "tile_row", items: [
          { nav_link: "/learn/user-groups", nav_text: "Meetups", image: "subnav_tile_meetups.jpg",
            sub_description: "Find local coworking groups or user groups" },
          { nav_link: "/learn/resources", nav_text: "Resource Library", image: "subnav_tile_resources.jpg",
            sub_description: "Browse our library of articles and other learning materials" },
          { nav_link: "/learn/events", nav_text: "Events", image: "subnav_tile_workshops.jpg",
            sub_description: "Attend one our upcoming workshops or conferences" },
          { nav_link: "/learn/case-studies", nav_text: "Case Studies", image: "subnav_tile_case_studies.jpg",
            sub_description: "Read about the impact we've had for others like you" },
        ]
      } },
      { nav_link: "/join", nav_text: "Join", sub_nav: {
        style: "icon_grid", items: [
          {
            nav_link: "/join/individuals",
            nav_text: "Individual Contributors & Contractors",
            nav_details: "Whether you freelance or work for another company, you can still find community with us.",
            icon: "fa-users-viewfinder",
          },
          {
            nav_link: "/join/small-businesses",
            nav_text: "Small Businesses",
            nav_details: "We help you grow your business sustainably and provide the backup you need.",
            icon: "fa-briefcase",
          },
          {
            nav_link: "/join/entrepreneurs",
            nav_text: "Startups & Entrepreneurs",
            nav_details: "Connect with other founders and get the resources you need to succeed.",
            icon: "fa-forklift",
          },
          {
            nav_link: "/join/partnerships",
            nav_text: "Local Government & Organizations",
            nav_details: "Build a stronger workforce and community with our help.",
            icon: "fa-city",
          },
        ]
      } },
    ]
  end
end

