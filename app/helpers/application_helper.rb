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

  def date_formatter(d)
    d.strftime("%d/%m/%y")
  end

  def user_appraisals
    @appraisals = Appraisal.all
    @user_appraisal = [] 

    @appraisals.each do |a|
      if a.employee_email == current_user.email
        @user_appraisal.push(a)
      end
    end

    @user_appraisal
  end
end
