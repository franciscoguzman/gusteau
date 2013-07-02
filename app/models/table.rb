class Table < ActiveRecord::Base

  has_many :Accounts

  attr_accessible :name, :seats, :status

  def current_account
    Account.where(:table_id => id, :closed_at => nil).first
  end

end
