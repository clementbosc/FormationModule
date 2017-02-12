class NoteDevoirPolicy < ApplicationPolicy
  attr_reader :user, :note_devoir

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


  def initialize(user, note_devoir)
    @user = user
    @note_devoir = note_devoir
  end

  def update?
    @user && @user.professeur?
  end

  def index?
    @user && @user.professeur?
  end

  def show?
    @user && ( @user.professeur? || @user == @note_devoir.user )
  end

  def create?
    @user && @user.professeur?
  end

  def new?
    # on n'a le droit de demander un formulaire de creation
    # que si on a le droit de creer
    create?
  end

  def edit?
    # on n'a le droit de demander un formulaire d'edition
    # que si on a le droit de mettre a jour
    update?
  end

  def destroy?
    @user && @user.admin?
  end

end