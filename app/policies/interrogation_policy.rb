class InterrogationPolicy < ApplicationPolicy
  attr_reader :user, :interrogation

  class Scope < Scope
    def resolve
      if @user && @user.professeur? then
        scope.all
      else
        if @user && @user.etudiant? then
          scope.select do |i|
            i.user == @user
          end
        else
          []
        end
      end
    end
  end


  def initialize(user, interrogation)
    @user = user
    @interrogation = interrogation
  end

  def update?
    @user && @user.professeur?
  end

  def index?
    @user && @user.professeur?
  end

  def show?
    @user && ( @user.professeur? || @user == @interrogation.user )
  end

  def create?
    @user && @user.professeur?
  end

  def new?
    # on n'a le droit de demander un formulaire de creation
    # que si on a le droit de creer
    true
  end

  def edit?
    # on n'a le droit de demander un formulaire d'edition
    # que si on a le droit de mettre a jour
    new?
  end

  def destroy?
    @user && @user.admin?
  end

end