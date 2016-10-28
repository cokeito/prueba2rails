class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true

  scope :size_x, -> (n) { where(:size => n) }
  scope :no_users, -> { where(:user_id => nil) }


  after_destroy :remove_category_if_empty

  def remove_category_if_empty
  	if self.category.items.count.zero?
  		self.category.destroy
  	end
  end

end
