class BillsController < ApplicationController
  before_action :authenticate_user!
  def index
    @bills=Bill.all
  end
  def new
    @bill=Bill.new
  end
  def create
    @bill = Bill.new(bill_params)

    if @bill.save
      redirect_to @bill
    else 
      render 'new'
    end 
  end
  def show
    @bill= Bill.find(params[:id])
  end
  def update
    @bill = Bill.find(params[:id])

    if @bill.update(bill_params)
      redirect_to @bill
    else 
      render 'edit'
    end
    
  end
  def destroy
    @bill=Bill.find(params[:id])
    @bill.destroy
    redirect_to bills_path

  end
  def edit
    @bill= Bill.find(params[:id])
  end
  def updateBillStatus
    @bill=Bill.find(params[:id])
    @bill.update_attribute(:status,1)
    @bill.save
    redirect_to bills_path
  end
  def sendBillEmail
    @bill=Bill.find(params[:id])
    UserMailer.sendBillEmail(@bill).deliver
 
    redirect_to bills_path
  end
  private
  def bill_params
    params.require(:bill).permit(:firstname, :lastname, :telephone, :email, :carmodel, :carnumber, :indate, :outdate, :operation1,
      :operation_1_amount, :operation2, :operation_2_amount, :operation3, :operation_3_amount, :operation4, :operation_4_amount, 
      :operation5,:operation_5_amount, :total)
  end
end
