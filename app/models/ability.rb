class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.admin?
        can :manage, :all
    else
        can :manage, User, id: user.id
        can :read, Product
        can :manage, Order, user_id: user.id
        can [:create, :read], Comment
    end
  end
end
