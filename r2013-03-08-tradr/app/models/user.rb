# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  balance         :decimal(, )
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :balance, :password, :password_confirmation
  has_many :stocks, :inverse_of => :user

  def initial_position
    self.stocks.map(&:initial_position).reduce(:+)
  end

 def current_position
    self.stocks.map(&:current_position).reduce(:+)
  end

  def current_total
    self.balance + self.current_position if self.current_position.present?
  end

end









