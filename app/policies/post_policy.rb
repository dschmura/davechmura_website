class PostPolicy < ApplicationPolicy
  attr_reader :user, :post

  def initialize(user, post)
     @user = user
     @post = post
   end

class Scope < Scope
  def resolve
    scope.where(status: :published).or(scope.where(user_id: @user.try(:id)))
  end
end

  def new?
    user_is_owner_of_record?
  end

  def create?
    user_is_owner_of_record?
  end

  def update?
    user_is_owner_of_record?
  end

  def show?
    user_is_owner_of_record? || @post.published?
  end

  def destroy?
    user_is_owner_of_record?
  end

    private
    def user_is_owner_of_record?
      @user == @post.user
    end
  end
