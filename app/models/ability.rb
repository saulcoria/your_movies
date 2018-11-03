class Ability
  include CanCan::Ability

  def initialize(person)
    can :read, :all # permissions for every Person, even if not logged in    
    if person.present?  # additional permissions for logged in People (they can manage their posts)
      can :manage, Post, person_id: person.id 
      if person.admin?  # additional permissions for administrators
        can :manage, :all
      end
    end
  end
end
