class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)
    if user.admin?
        can :manage, :all
        can :access, :rails_admin # this line
        can :dashboard, :all # and this one
    else
        can :read, Article, active: true
        can :read, Workshop, active: true
        can :read, Lecture, active: true
    end
  end
end
