class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :registration_number, length: { is: 250 }
end
