class FeedbacksController < ApplicationController
  def new
  end

  def create
    feedback = Feedback.new(feedback_attributes)

    if feedback.save
      flash[:success] = "Got it! Thanks for your input!"
      redirect_to contact_us_path
    else
      flash[:error] = "Something didn't work there"
      redirect_to contact_us_path
    end
  end

  private

  def feedback_attributes
    params.require(:feedback).permit(
      :name,
      :body,
      :telegram_username
    )
  end
end
