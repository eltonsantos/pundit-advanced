class UserPolicy < ApplicationPolicy
  
  def destroy?
    
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
