module ApplicationHelper
  def current_user_balance
    @transactions = current_user.transactions

    @balance = 0.0
    
    @transactions.each do |t|
      @balance += t.amount
    end

    @balance
  end

  def is_user_admin?
    current_user.role_id == 2 ? true : false
  end
end
