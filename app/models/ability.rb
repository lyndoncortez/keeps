# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.present?
      can :manage, Category, user_id: user.id
    else
      can :read, :all
    end
  end
end
