# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  address         :text
#  latitude        :float
#  longitude       :float
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :text
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :products
  has_many :purchases
  validates :email, :presence => true, :uniqueness => true
  validates :email, :presence => true, :length => { :minimum => 2}

  geocoded_by :address
  after_validation :geocode

  def owner?(user)
    user.id == self.user_id unless user.nil?
  end
end
