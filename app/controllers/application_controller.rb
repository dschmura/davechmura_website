class ApplicationController < ActionController::Base
  before_action :create_feedback
  include Pundit
  protect_from_forgery

  private
  def create_feedback
    @feedback = Feedback.new
  end
end
