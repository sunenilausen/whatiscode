class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)
    if user.admin?
        can :manage, :all
    else
        can :read, Article, active: true
        can :read, Workshop, active: true
        can :read, Lecture, active: true
        can :read, Showcase, active: true
        can :read, Project, active: true
    end
  end
end
