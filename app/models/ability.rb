class Ability
  include CanCan::Ability

  def initialize user
    can :manage, :all
    if user.nil?
      cannot :manage, Post
      can :read, Post
    end
  end
    
end
