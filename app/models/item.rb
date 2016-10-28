class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true

  scope :size_x, -> (n) { where(:size => n) }
  scope :no_users, -> { where(:user_id => nil) }

end
