class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show]

  def index
    @transactions = current_user.transactions.order(created_at: :desc)
  end

  def new
    @transaction = Transaction.new
  end

  def show
  end

  def create
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
      format.html { redirect_to user_url(@transaction), notice: "transaction was successfully created." }
      format.json { render :show, status: :created, location: @transaction }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @transaction.errors, status: :unprocessable_entity }
    end
  end

  private
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def transaction_params
      params.require(:transaction).permit(:amount,:description,:user_id).merge(payed_by: current_user.id)
    end
end
