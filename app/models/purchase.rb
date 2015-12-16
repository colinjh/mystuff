# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  product_id :integer
#  price      :text
#

class Purchase < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
end
