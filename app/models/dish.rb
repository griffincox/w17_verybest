class Dish < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :favorites,
             :source => :venue

  # Validations

end
