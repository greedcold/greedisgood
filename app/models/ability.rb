class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, :all if user.role == "admin"
    can :destroy if user.role == "admin"
  else
    can :manage, Listing, user_id: user.id
  end
end
