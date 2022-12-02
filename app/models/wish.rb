class Wish < ApplicationRecord
  belongs_to :wishlist
  has_and_belongs_to_many :grantors,
                          class_name: 'User',
                          join_table: 'wish_marks'
  def user
    wishlist.user
  end
end

