class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to controller:'bills', action: 'index'
    end
  end
  def create
  end
  def update
  end
  def destroy
  end
  def edit
  end
end
