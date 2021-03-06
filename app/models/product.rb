# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  image       :text
#  price       :text
#  available   :boolean          default(TRUE)
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

class Product < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tag_list
  belongs_to :user
  has_many :purchases

  def owner?(user)
    user.id == self.user_id unless user.nil?
  end
end
