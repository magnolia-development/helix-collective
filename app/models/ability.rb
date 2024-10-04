# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Maglev::Page, published: true

    return if user.blank?

    return unless user.admin?

    can :manage, Maglev::Site
  end
end

