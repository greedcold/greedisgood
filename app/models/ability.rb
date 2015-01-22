class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

   if user.has_role? :admin
     can :manage, :all, :update
   else
     can :read
   end

   if user.has_role? :author
     can :update
   end
  end
end
