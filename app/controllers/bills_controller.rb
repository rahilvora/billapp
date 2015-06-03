class BillsController < ApplicationController
  def index
  end
  def create
  	render plain: params[:bill].inspect
  end
  def update
  end
  def destroy
  end
  def edit
  end
end
