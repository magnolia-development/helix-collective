# frozen_string_literal: true

def initialize_admin!
  admin = User.find_by(email: ENV.fetch("HELIX_COLLECTIVE_ADMIN_EMAIL", nil))

  return if admin.present?

  User.create!(
    email: ENV.fetch("HELIX_COLLECTIVE_ADMIN_EMAIL"),
    password: ENV.fetch("HELIX_COLLECTIVE_ADMIN_PASSWORD"),
    password_confirmation: ENV.fetch("HELIX_COLLECTIVE_ADMIN_PASSWORD"),
    is_admin: true
  )
end

