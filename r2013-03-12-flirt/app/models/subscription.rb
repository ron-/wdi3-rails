# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  plan       :string(255)
#  duration   :integer
#  cost       :decimal(, )
#  num_photos :integer
#  num_email  :integer
#  num_text   :integer
#  is_alist   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :plan, :duration, :cost, :num_photos, :num_email, :num_text, :is_alist
  has_many :subscribers, :inverse_of => :subscription
end



