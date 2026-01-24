class OnboardingController < ApplicationController
  def step1
  end

  def save_step1
    session[:onboarding_interests] = params[:interests]
    redirect_to step2_onboarding_index_path
  end

  def step2
    @user = User.new
  end

  def save_step2
    @user = User.new(user_params)
    @user.interests = session[:onboarding_interests]

    if @user.save
      session[:user_id] = @user.id
      session.delete(:onboarding_interests) # Cleanup
      redirect_to step3_onboarding_index_path
    else
      render :step2, status: :unprocessable_entity
    end
  end

  def step3
    @user = current_user
  end

  def save_step3
    @user = current_user
    if @user.update(bio_params)
      redirect_to root_path, notice: "Welcome to AI Jam!"
    else
      render :step3, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def bio_params
    params.require(:user).permit(:bio)
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
