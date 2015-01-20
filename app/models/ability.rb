class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

  can :manage, :all if user.is? :admin
  end
end
